# valueGroup₀_equiv_withZeroMulInt_restrict_apply_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93d3fd3d-f0b5-b880-88c6-2e65041a982b",
  "kind": "lemma",
  "lexical_name": "valueGroup₀_equiv_withZeroMulInt_restrict_apply_of_surjective",
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
  "slug": "valuegroup-equiv-withzeromulint-restrict-apply-of-surjective--bd79088f5ae139e5b6a30608",
  "source": {
    "blob": "042124f35d3465e95890c6e641d11fc1ac8f9876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RankOne/Variant4843075f18a3064381bad8dfe2aa45d8376f046aa3d8c0b298dbf1ff5273e5f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd79088f5ae139e5b6a30608278f0377f6b11bdb63839d595d7e01861fa3537f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RankOne/Variant4843075f18a3064381bad8dfe2aa45d8376f046aa3d8c0b298dbf1ff5273e5f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93d3fd3d-f0b5-b880-88c6-2e65041a982b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma valueGroup₀_equiv_withZeroMulInt_restrict_apply_of_surjective (hsurj : Function.Surjective v)
    (x : R) : (valueGroup₀_equiv_withZeroMulInt v) (v.restrict x) = v x := by
  simp only [Valuation.restrict_def, ValueGroup₀.restrict₀_apply,
    valueGroup₀_equiv_withZeroMulInt_apply]
  split_ifs with h0 <;>
  simp only [MonoidWithZeroHom.coe_ofClass] at h0
  · simp [h0]
  · rw [WithZero.map'_coe, ← coe_unzero h0, WithZero.coe_inj,
    ← (MulEquiv.injective (intEquivOfZPowersEqTop _
    (Subgroup.zpowers_inv (g := hv.generator') ▸ hv.generator'_zpowers_eq_top))).eq_iff]
    ext
    simp [generator', generator_eq_exp_neg_one_of_surjective hsurj, toAdd_unzero_eq_log h0,
      exp_log h0]

end WithZeroMulInt

end Ring

end Valuation.IsRankOneDiscrete
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RankOne/Variant4843075f18a3064381bad8dfe2aa45d8376f046aa3d8c0b298dbf1ff5273e5f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RankOne/Variant4843075f18a3064381bad8dfe2aa45d8376f046aa3d8c0b298dbf1ff5273e5f9.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `042124f35d3465e95890c6e641d11fc1ac8f9876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
