# orthonormal_mFourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71f112d259cba086b7f9d4c66b23e6cce2f91dce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf3a40ad221f0b11ceda2ba91b1d6be21cdddcaa9380b550548272e7bfcc7f56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f3d349f-e456-841a-49fb-e3b52d11e2a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa008114-b231-aec0-9424-19d40b97ce16",
  "kind": "theorem",
  "lexical_name": "orthonormal_mFourier",
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
  "slug": "orthonormal-mfourier--8ecfe5d3e7d2c9a946971c5f",
  "source": {
    "blob": "71f112d259cba086b7f9d4c66b23e6cce2f91dce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 226,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AddCircleMulti/Variantbf3a40ad221f0b11ceda2ba91b1d6be21cdddcaa9380b550548272e7bfcc7f56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ecfe5d3e7d2c9a946971c5f5d0a6aff38ec16c7393465e7449596c5e0b8158a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AddCircleMulti/Variantbf3a40ad221f0b11ceda2ba91b1d6be21cdddcaa9380b550548272e7bfcc7f56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa008114-b231-aec0-9424-19d40b97ce16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthonormal_mFourier : Orthonormal ℂ (mFourierLp (d := d) 2) := by
  rw [orthonormal_iff_ite]
  intro m n
  simp only [ContinuousMap.inner_toLp, ← mFourier_neg, ← mFourier_add]
  split_ifs with h
  · simpa only [h, add_neg_cancel, mFourier_zero, probReal_univ, one_smul] using!
      integral_const (α := UnitAddTorus d) (μ := volume) (1 : ℂ)
  rw [mFourier, ContinuousMap.coe_mk, MeasureTheory.integral_fintype_prod_volume_eq_prod]
  obtain ⟨i, hi⟩ := Function.ne_iff.mp h
  apply Finset.prod_eq_zero (Finset.mem_univ i)
  simpa only [eq_false_intro hi, ite_false, ContinuousMap.inner_toLp, ← fourier_neg,
    ← fourier_add] using! (orthonormal_iff_ite.mp <| orthonormal_fourier) (m i) (n i)

end Lp

section fourierCoeff

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]

/-- The `n`-th Fourier coefficient of a function `UnitAddTorus d → E`, for `E` a complete normed
`ℂ`-vector space, defined as the integral over `UnitAddTorus d` of `mFourier (-n) t • f t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AddCircleMulti/Variantbf3a40ad221f0b11ceda2ba91b1d6be21cdddcaa9380b550548272e7bfcc7f56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AddCircleMulti/Variantbf3a40ad221f0b11ceda2ba91b1d6be21cdddcaa9380b550548272e7bfcc7f56.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71f112d259cba086b7f9d4c66b23e6cce2f91dce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
