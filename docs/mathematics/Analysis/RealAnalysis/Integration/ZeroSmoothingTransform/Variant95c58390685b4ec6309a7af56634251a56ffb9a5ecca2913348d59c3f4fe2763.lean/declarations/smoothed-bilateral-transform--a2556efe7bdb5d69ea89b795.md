# smoothed_bilateral_transform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3346cedd88bef959e33ca76056ae6de05aa25410",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:511e790a-5088-127c-628f-39ae134d2742",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0279f371-a5c6-6737-9232-2ae46e298284",
  "kind": "theorem",
  "lexical_name": "smoothed_bilateral_transform",
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
  "slug": "smoothed-bilateral-transform--a2556efe7bdb5d69ea89b795",
  "source": {
    "blob": "3346cedd88bef959e33ca76056ae6de05aa25410",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2556efe7bdb5d69ea89b795524676749983aea9925f4cd39edccdb3672bc017",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0279f371-a5c6-6737-9232-2ae46e298284`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothed_bilateral_transform (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (z : ℂ) :
    smoothedBilateralTransform A ε hε z = bilateralTransform A z * multiplier ε hε z := by
  unfold smoothedBilateralTransform
  simp_rw [smoothed_weighted_eq_convolution]
  rw [integral_convolution (ContinuousLinearMap.mul ℂ ℂ)
    (multiplier_integrand_integrable ε hε z) (ZeroTransform.actual_integrable A (by linarith) z)]
  change multiplier ε hε z * bilateralTransform A z = bilateralTransform A z * multiplier ε hε z
  exact mul_comm _ _

/-- Every original zero occurrence retains its multiplicity slot and the same transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3346cedd88bef959e33ca76056ae6de05aa25410` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
