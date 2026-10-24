# quotient_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05e7bb15-38a2-0ae6-7122-ffd7d01a4aa6",
  "kind": "theorem",
  "lexical_name": "quotient_norm_le",
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
  "slug": "quotient-norm-le--c44c6b4cc81abfaf1b90aa9a",
  "source": {
    "blob": "4c219746d834b4bd7630380a4a1a8161185c91b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 52,
    "path": "GRWTSK/Analysis/Complex/BlaschkeQuotientLogarithm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c44c6b4cc81abfaf1b90aa9ac31807931420a6cd85c8c2909b3664253d2c7ab9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BlaschkeQuotientLogarithm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05e7bb15-38a2-0ae6-7122-ffd7d01a4aa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotient_norm_le {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (f g : ℂ → ℂ) (M : ℝ) (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4)
    (hg : DiffContOnCl ℂ g (ball 0 (3 : ℝ)))
    (hfactor : ∀ z ∈ closedBall 0 (3 : ℝ),
      f z = g z * ∏ i ∈ S, (factor 3 (a i) z) ^ m i)
    (hbound : ∀ z ∈ sphere 0 (3 : ℝ), ‖f z‖ ≤ M)
    (z : ℂ) (hz : z ∈ closedBall 0 (3 : ℝ)) : ‖g z‖ ≤ M := by
  have hboundary : ∀ w ∈ sphere 0 (3 : ℝ), ‖g w‖ ≤ M := by
    intro w hw
    have he := congrArg norm (hfactor w (sphere_subset_closedBall hw))
    rw [norm_mul, norm_product_on_boundary S a m ha w
      (by simpa [Metric.mem_sphere, dist_zero_right] using hw), mul_one] at he
    rw [← he]
    exact hbound w hw
  apply Complex.norm_le_of_forall_mem_frontier_norm_le isBounded_ball hg
    (fun w hw => hboundary w (frontier_ball_subset_sphere hw))
  simpa only [closure_ball (0 : ℂ) (by norm_num : (3 : ℝ) ≠ 0)] using hz

/-- Removing normalized interior factors cannot decrease the anchor modulus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/BlaschkeQuotientLogarithm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/BlaschkeQuotientLogarithm.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c219746d834b4bd7630380a4a1a8161185c91b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
