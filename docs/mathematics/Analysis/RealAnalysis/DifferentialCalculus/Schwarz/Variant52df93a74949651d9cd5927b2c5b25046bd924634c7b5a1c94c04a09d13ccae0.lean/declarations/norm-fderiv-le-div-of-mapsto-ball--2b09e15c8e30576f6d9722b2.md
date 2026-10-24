# norm_fderiv_le_div_of_mapsTo_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c355db3d-2c0d-8bed-5623-936a8cf57f8a",
  "kind": "theorem",
  "lexical_name": "norm_fderiv_le_div_of_mapsTo_ball",
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
  "slug": "norm-fderiv-le-div-of-mapsto-ball--2b09e15c8e30576f6d9722b2",
  "source": {
    "blob": "d360aba92b87571369086ec38c2d46f7f35b7bb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 210,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant52df93a74949651d9cd5927b2c5b25046bd924634c7b5a1c94c04a09d13ccae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b09e15c8e30576f6d9722b25b257202602f08bea4aa28ec4ff4fce78136fe25",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant52df93a74949651d9cd5927b2c5b25046bd924634c7b5a1c94c04a09d13ccae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c355db3d-2c0d-8bed-5623-936a8cf57f8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_fderiv_le_div_of_mapsTo_ball (hd : DifferentiableOn ℂ f (ball c R₁))
    (h_maps : MapsTo f (ball c R₁) (closedBall (f c) R₂)) (h₀ : 0 < R₁) :
    ‖fderiv ℂ f c‖ ≤ R₂ / R₁ := by
  have : 0 ≤ R₂ := nonempty_closedBall.mp <| h_maps.nonempty <| nonempty_ball.mpr h₀
  refine norm_fderiv_le_of_lip' _ (by positivity) ?_
  filter_upwards [ball_mem_nhds _ h₀] with z hz
  simpa [dist_eq_norm_sub] using dist_le_div_mul_dist_of_mapsTo_ball hd h_maps hz

/-- The **Schwarz Lemma**. Let `f : E → F` be a complex analytic function
on an open ball with center `c`.
If `f` sends this ball to a closed ball with center `f c` and the same radius,
then for any `z` in the former ball we have `dist (f z) (f c) ≤ dist z c`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant52df93a74949651d9cd5927b2c5b25046bd924634c7b5a1c94c04a09d13ccae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant52df93a74949651d9cd5927b2c5b25046bd924634c7b5a1c94c04a09d13ccae0.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d360aba92b87571369086ec38c2d46f7f35b7bb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
