# _root_.ContinuousLinearMap.normDet_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d36eca716e7bc840f48ca04b30c9a3461d3c0b96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4293a519-ae68-561f-740e-7bbca31a753b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7710d464-436e-b2ca-f08a-29b9c298ec2e",
  "kind": "theorem",
  "lexical_name": "_root_.ContinuousLinearMap.normDet_sq",
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
  "slug": "root-continuouslinearmap-normdet-sq--d47b0359a44dca27584b9859",
  "source": {
    "blob": "d36eca716e7bc840f48ca04b30c9a3461d3c0b96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 268,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d47b0359a44dca27584b9859d6140ac60e4173a8cb04f86310300514c097f6d4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7710d464-436e-b2ca-f08a-29b9c298ec2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.ContinuousLinearMap.normDet_sq [CompleteSpace V] (f : U →L[𝕜] V) :
    haveI : CompleteSpace U := FiniteDimensional.complete 𝕜 U
    ↑(f.normDet ^ 2) = (f.adjoint ∘L f).det := by
  have : CompleteSpace U := FiniteDimensional.complete 𝕜 U
  have : CompleteSpace f.range := FiniteDimensional.complete 𝕜 f.range
  let bu := stdOrthonormalBasis 𝕜 U
  by_cases h : f.ker = ⊥
  · obtain ⟨b⟩ := (f.normDet_ne_zero_tfae.out 2 4).mp h
    have hf : f = f.range.subtypeₗᵢ.toContinuousLinearMap ∘L f.rangeRestrict := rfl
    conv_rhs => rw [hf]
    rw [ContinuousLinearMap.adjoint_comp, ← ContinuousLinearMap.comp_assoc,
      ContinuousLinearMap.comp_assoc (ContinuousLinearMap.adjoint _),
      f.range.subtypeₗᵢ.adjoint_comp_self, ContinuousLinearMap.one_def, ContinuousLinearMap.comp_id,
      ContinuousLinearMap.det, ContinuousLinearMap.toLinearMap_comp, ← det_toMatrix bu.toBasis,
      toMatrix_comp bu.toBasis b.toBasis bu.toBasis, ← ContinuousLinearMap.adjoint_toLinearMap,
      toMatrix_adjoint, f.toLinearMap.normDet_eq_norm_det_toMatrix_rangeRestrict bu b]
    simp [RCLike.conj_mul]
  · trans 0
    · simp [show f.normDet = 0 from (f.normDet_eq_zero_tfae.out 2 1).mp h]
    symm
    rw [det_eq_zero_iff_ker_ne_bot, ContinuousLinearMap.ker_adjoint_comp_self]
    exact h

/--
The square of `f.normDet` equals the determinant of `f.adjoint ∘ₗ f` when the codomain is finite
dimensional.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d36eca716e7bc840f48ca04b30c9a3461d3c0b96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
