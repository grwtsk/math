# finite_quadrature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88bc693be20a0b66805a18d190af9f2fc9e6e41f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0e01f53-93f8-510f-8d77-59e9b18a2325",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9807fbb-1cdc-f5ee-d7db-fbbd215fa9f0",
  "kind": "theorem",
  "lexical_name": "finite_quadrature",
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
  "slug": "finite-quadrature--1638128faa6213ab5ad78981",
  "source": {
    "blob": "88bc693be20a0b66805a18d190af9f2fc9e6e41f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1638128faa6213ab5ad789812c1c044f6495b5a2894782c5e7cb0a3c90940a43",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9807fbb-1cdc-f5ee-d7db-fbbd215fa9f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_quadrature (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, f n) + f (N + 1 : ℝ) -
      (∫ u in 0..(N + 1 : ℝ), f u) =
        ∫ u in 0..(N + 1 : ℝ), Int.fract u * deriv f u := by
  induction N with
  | zero => simpa using unit_right_sampling_identity f hf 0
  | succ N ih =>
    have hfadd := intervalIntegral.integral_add_adjacent_intervals
      (hf.continuous.intervalIntegrable (μ := volume) 0 (N + 1 : ℝ))
      (hf.continuous.intervalIntegrable (μ := volume) (N + 1 : ℝ) (N + 2 : ℝ))
    have hdadd := intervalIntegral.integral_add_adjacent_intervals
      (fract_deriv_intervalIntegrable f hf 0 (N + 1 : ℝ))
      (fract_deriv_intervalIntegrable f hf (N + 1 : ℝ) (N + 2 : ℝ))
    have hu := unit_right_sampling_identity f hf (N + 1)
    simp only [Nat.cast_add, Nat.cast_one] at hu ⊢
    rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
    have hcast : (N : ℝ) + 1 + 1 = N + 2 := by ring
    rw [hcast] at hu ⊢
    simp only [Nat.cast_add, Nat.cast_one]
    rw [← hfadd, ← hdadd]
    linarith

/-- Endpoint vanishing is the checked condition that removes the last sample. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88bc693be20a0b66805a18d190af9f2fc9e6e41f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
