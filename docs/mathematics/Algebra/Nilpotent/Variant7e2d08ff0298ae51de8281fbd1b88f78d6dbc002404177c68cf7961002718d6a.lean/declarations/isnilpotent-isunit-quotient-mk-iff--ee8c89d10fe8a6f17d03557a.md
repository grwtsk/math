# IsNilpotent.isUnit_quotient_mk_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88aaf1eabf4893ac2bed3173596618fe9f5e5984",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bd9a28d-f659-d7ff-d0d4-f1f49657c2ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:104fc2e4-4b18-cf93-181e-e8d1740878bd",
  "kind": "theorem",
  "lexical_name": "IsNilpotent.isUnit_quotient_mk_iff",
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
  "slug": "isnilpotent-isunit-quotient-mk-iff--ee8c89d10fe8a6f17d03557a",
  "source": {
    "blob": "88aaf1eabf4893ac2bed3173596618fe9f5e5984",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 49,
    "path": "GRWTSK/Algebra/Nilpotent/Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee8c89d10fe8a6f17d03557a15344e1bc147f0c192e632921a6aa92cdf726351",
  "verification": {
    "reference": "docs/verification/Algebra/Nilpotent/Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:104fc2e4-4b18-cf93-181e-e8d1740878bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsNilpotent.isUnit_quotient_mk_iff {R : Type*} [CommRing R] {I : Ideal R}
    (hI : IsNilpotent I) {x : R} : IsUnit (Ideal.Quotient.mk I x) ↔ IsUnit x := by
  refine ⟨?_, fun h => h.map <| Ideal.Quotient.mk I⟩
  revert x
  apply Ideal.IsNilpotent.induction_on (S := R) I hI <;> clear hI I
  swap
  · introv e h₁ h₂ h₃
    apply h₁
    apply h₂
    exact
      h₃.map
        ((DoubleQuot.quotQuotEquivQuotSup I J).trans
              (Ideal.quotEquivOfEq (sup_eq_right.mpr e))).symm.toRingHom
  · introv e H
    obtain ⟨y, hy⟩ := Ideal.Quotient.mk_surjective (↑H.unit⁻¹ : S ⧸ I)
    have : Ideal.Quotient.mk I (x * y) = Ideal.Quotient.mk I 1 := by
      rw [map_one, map_mul, hy, IsUnit.mul_val_inv]
    rw [Ideal.Quotient.eq] at this
    have : (x * y - 1) ^ 2 = 0 := by
      rw [← Ideal.mem_bot, ← e]
      exact Ideal.pow_mem_pow this _
    have : x * (y * (2 - x * y)) = 1 := by
      rw [eq_comm, ← sub_eq_zero, ← this]
      ring
    exact isUnit_of_mul_eq_one _ _ this
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88aaf1eabf4893ac2bed3173596618fe9f5e5984` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
