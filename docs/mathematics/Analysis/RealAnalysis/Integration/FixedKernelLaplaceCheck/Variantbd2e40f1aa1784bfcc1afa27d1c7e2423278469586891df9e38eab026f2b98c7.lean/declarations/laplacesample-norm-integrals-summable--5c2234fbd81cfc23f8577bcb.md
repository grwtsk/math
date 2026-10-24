# laplaceSample_norm_integrals_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d39ff82b0aa4e2fcdc83fd5a342080834025baf6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 882,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4973f7b7-cb49-c5e0-38f5-a6c501142539",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18480b42-2e8a-48af-3552-690d34a6297f",
  "kind": "theorem",
  "lexical_name": "laplaceSample_norm_integrals_summable",
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
  "slug": "laplacesample-norm-integrals-summable--5c2234fbd81cfc23f8577bcb",
  "source": {
    "blob": "d39ff82b0aa4e2fcdc83fd5a342080834025baf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 892,
    "line": 882,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c2234fbd81cfc23f8577bcb6e8798670aa34a21a583fcc163242e2e15cb4a54",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18480b42-2e8a-48af-3552-690d34a6297f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 882–892.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laplaceSample_norm_integrals_summable (z : ℂ) (hz : 1 / 2 < z.re) :
    Summable (fun n : ℕ ↦ ∫ t : ℝ in Ioi 0, ‖laplaceSample z n t‖) := by
  have hs := (Real.summable_one_div_nat_add_rpow 1 (z.re + 1 / 2)).mpr (by linarith)
  have hn : Summable (fun n : ℕ ↦ 1 / (n + 1 : ℝ) ^ (z.re + 1 / 2)) := by
    convert hs using 1
    funext n
    rw [abs_of_nonneg (by positivity : (0 : ℝ) ≤ (n : ℝ) + 1)]
  simp_rw [laplaceSample_norm_integral_Ioi, sampleCoefficient_norm]
  exact (hn.mul_left (Real.exp (-z.re))).mul_right (sourceNormIntegral z)

/-- The separated coefficient is exactly the original complex Dirichlet-series weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean#L882).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d39ff82b0aa4e2fcdc83fd5a342080834025baf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
