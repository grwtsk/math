# source_cellInner_intervalIntegrable_u

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de5fb3c61aedab231900d83ab2f2ad2fa2022f64",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd42380391c8cbe645bee7160c7119c641abbb77cf5ca19f0f57140a8cb7c09c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ca2a3fc-59a7-eca5-a8e9-5166d15b5243",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29e64619-5344-c481-0941-d0f98071a1d4",
  "kind": "theorem",
  "lexical_name": "source_cellInner_intervalIntegrable_u",
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
  "slug": "source-cellinner-intervalintegrable-u--57ce05ffbef0d9486bd534f3",
  "source": {
    "blob": "de5fb3c61aedab231900d83ab2f2ad2fa2022f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 384,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantbd42380391c8cbe645bee7160c7119c641abbb77cf5ca19f0f57140a8cb7c09c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57ce05ffbef0d9486bd534f348a6d14ebba81ad9a11038c82cfaf2dcc7d5dfef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantbd42380391c8cbe645bee7160c7119c641abbb77cf5ca19f0f57140a8cb7c09c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29e64619-5344-c481-0941-d0f98071a1d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem source_cellInner_intervalIntegrable_u
    {A k : ℝ} (hA : 0 < A) (hk : 0 < k) (t : ℝ) :
    IntervalIntegrable (cellInner (normalizedTest explicitSecondDerivative A) t)
      volume k (k + 1) := by
  have hc : ContinuousOn (cellInner (normalizedTest explicitSecondDerivative A) t)
      (Icc k (k + 1)) := by
    intro u hu
    have hu0 := hk.trans_le hu.1
    have he : cellInner (normalizedTest explicitSecondDerivative A) t = fun u =>
        errorExp t / (u * Real.sqrt u) *
          sourceCorrelation explicitSecondDerivative A (t + Real.log u) := by
      funext w
      rw [cellInner_eq_scalar_products, source_products_eq_correlation]
    rw [he]
    have hden : ContinuousAt (fun x : ℝ => x * Real.sqrt x) u :=
      continuousAt_id.mul continuousAt_id.sqrt
    have hne := mul_ne_zero hu0.ne' (Real.sqrt_ne_zero'.mpr hu0)
    exact ((continuousAt_const.div hden hne).mul
      ((sourceCorrelation_contDiff A hA).continuous.continuousAt.comp
        ((Real.continuousAt_log hu0.ne').const_add t))).continuousWithinAt
  exact hc.intervalIntegrable_of_Icc (le_add_of_nonneg_right (by norm_num))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantbd42380391c8cbe645bee7160c7119c641abbb77cf5ca19f0f57140a8cb7c09c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantbd42380391c8cbe645bee7160c7119c641abbb77cf5ca19f0f57140a8cb7c09c.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de5fb3c61aedab231900d83ab2f2ad2fa2022f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
