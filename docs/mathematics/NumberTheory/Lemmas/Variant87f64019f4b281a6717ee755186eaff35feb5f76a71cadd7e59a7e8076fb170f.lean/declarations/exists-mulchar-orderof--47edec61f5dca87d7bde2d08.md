# exists_mulChar_orderOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:683cf4fb-5ef7-ea81-975f-fbf61658378d",
  "kind": "lemma",
  "lexical_name": "exists_mulChar_orderOf",
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
  "slug": "exists-mulchar-orderof--47edec61f5dca87d7bde2d08",
  "source": {
    "blob": "ef5cace8de3dafea543d9085523c19a05c4b70e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 134,
    "path": "GRWTSK/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47edec61f5dca87d7bde2d0825b9827fc957265f741102265120278d00b6d5e7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:683cf4fb-5ef7-ea81-975f-fbf61658378d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mulChar_orderOf {n : ℕ} (h : n ∣ Fintype.card F - 1) {ζ : R}
    (hζ : IsPrimitiveRoot ζ n) :
    ∃ χ : MulChar F R, orderOf χ = n := by
  classical
  have hn₀ : 0 < n := by
    refine Nat.pos_of_ne_zero fun hn ↦ ?_
    simp only [hn, zero_dvd_iff, Nat.sub_eq_zero_iff_le] at h
    exact (Fintype.one_lt_card.trans_le h).false
  let e := MulChar.equiv_rootsOfUnity F R
  let ζ' : Rˣ := (hζ.isUnit hn₀).unit
  have h' : ζ' ^ (Fintype.card Fˣ : ℕ) = 1 :=
    Units.ext_iff.mpr <| (hζ.pow_eq_one_iff_dvd _).mpr <| Fintype.card_units (α := F) ▸ h
  use e.symm ⟨ζ', (mem_rootsOfUnity (Fintype.card Fˣ) ζ').mpr h'⟩
  rw [e.symm.orderOf_eq, orderOf_eq_iff hn₀]
  refine ⟨?_, fun m hm hm₀ h ↦ ?_⟩
  · ext
    push_cast
    exact hζ.pow_eq_one
  · rw [Subtype.ext_iff, Units.ext_iff] at h
    push_cast at h
    exact ((Nat.le_of_dvd hm₀ <| hζ.dvd_of_pow_eq_one _ h).trans_lt hm).false

/-- If there is a multiplicative character of order `n` on `F`, then `#F ≡ 1 mod n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef5cace8de3dafea543d9085523c19a05c4b70e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
