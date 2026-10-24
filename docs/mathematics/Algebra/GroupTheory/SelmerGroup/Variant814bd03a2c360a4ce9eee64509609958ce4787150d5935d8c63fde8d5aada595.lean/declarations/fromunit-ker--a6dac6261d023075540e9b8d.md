# fromUnit_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27ac06be850384a397a483d581bf0163a7668bde",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae548ffa-dfae-db25-f996-b2aaf91e3171",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33213a63-69a4-84c5-e359-651c266f744f",
  "kind": "theorem",
  "lexical_name": "fromUnit_ker",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "fromunit-ker--a6dac6261d023075540e9b8d",
  "source": {
    "blob": "27ac06be850384a397a483d581bf0163a7668bde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 200,
    "path": "GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6dac6261d023075540e9b8dc1d5297acdebbd9504c661effc219867f2d28976",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33213a63-69a4-84c5-e359-651c266f744f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fromUnit_ker [hn : Fact <| 0 < n] :
    (@fromUnit R _ _ K _ _ _ n).ker = (powMonoidHom n : Rˣ →* Rˣ).range := by
  ext ⟨_, _, _, _⟩
  constructor
  · intro hx
    rcases (QuotientGroup.eq_one_iff _).mp (Subtype.mk.inj hx) with ⟨⟨v, i, vi, iv⟩, hx⟩
    have hv : ↑(_ ^ n : Kˣ) = algebraMap R K _ := congr_arg Units.val hx
    have hi : ↑(_ ^ n : Kˣ)⁻¹ = algebraMap R K _ := congr_arg Units.inv hx
    rw [Units.val_pow_eq_pow_val] at hv
    rw [← inv_pow, Units.inv_mk, Units.val_pow_eq_pow_val] at hi
    rcases IsIntegrallyClosed.exists_algebraMap_eq_of_isIntegral_pow (R := R) (x := v) hn.out
        (hv.symm ▸ isIntegral_algebraMap) with
      ⟨v', rfl⟩
    rcases IsIntegrallyClosed.exists_algebraMap_eq_of_isIntegral_pow (R := R) (x := i) hn.out
        (hi.symm ▸ isIntegral_algebraMap) with
      ⟨i', rfl⟩
    rw [← map_mul, map_eq_one_iff _ <| FaithfulSMul.algebraMap_injective R K] at vi
    rw [← map_mul, map_eq_one_iff _ <| FaithfulSMul.algebraMap_injective R K] at iv
    rw [Units.val_mk, ← map_pow] at hv
    exact ⟨⟨v', i', vi, iv⟩, by
      simpa only [Units.ext_iff, powMonoidHom_apply, Units.val_pow_eq_pow_val] using
         FaithfulSMul.algebraMap_injective R K hv⟩
  · rintro ⟨x, hx⟩
    rw [← hx]
    exact Subtype.mk_eq_mk.mpr <| (QuotientGroup.eq_one_iff _).mpr ⟨Units.map (algebraMap R K) x,
      by simp only [powMonoidHom_apply, RingHom.toMonoidHom_eq_coe, map_pow]⟩

/-- The injection induced by the natural homomorphism from `Rˣ` to `K⟮∅, n⟯`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27ac06be850384a397a483d581bf0163a7668bde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
