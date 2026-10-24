# integral_abs_le_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a5272eb-385d-ab5b-3c68-fceafa54a954",
  "kind": "theorem",
  "lexical_name": "integral_abs_le_sqrt",
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
  "slug": "integral-abs-le-sqrt--01fd51f75caf991917f39400",
  "source": {
    "blob": "28d132dbb8f8368d2ef9382d5c89e407e72a016b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01fd51f75caf991917f39400ece089518a70bec84e6e29b5ce7e4ca5aa363f5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a5272eb-385d-ab5b-3c68-fceafa54a954`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_le_sqrt (v : ℝ≥0) :
    (∫ x : ℝ, |x| ∂gaussianReal 0 v) ≤ Real.sqrt (v : ℝ) := by
  have habs : MemLp (fun x : ℝ => |x|) 2 (gaussianReal 0 v) := by
    exact (memLp_id_gaussianReal' (μ := 0) (v := v) 2 (by norm_num)).abs.ae_eq
      (ae_of_all _ (fun x => by simp only [Pi.abs_apply, id_eq]))
  have hnonneg := variance_nonneg (fun x : ℝ => |x|) (gaussianReal 0 v)
  rw [variance_eq_sub habs] at hnonneg
  simp only [Pi.pow_apply, sq_abs] at hnonneg
  rw [integral_square v] at hnonneg
  exact Real.le_sqrt_of_sq_le (by linarith)


end GaussianCenteredMoments
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28d132dbb8f8368d2ef9382d5c89e407e72a016b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
