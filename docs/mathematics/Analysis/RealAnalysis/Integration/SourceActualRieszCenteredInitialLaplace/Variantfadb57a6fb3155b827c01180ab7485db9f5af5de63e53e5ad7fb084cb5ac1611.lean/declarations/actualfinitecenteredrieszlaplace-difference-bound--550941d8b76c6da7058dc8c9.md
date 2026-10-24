# actualFiniteCenteredRieszLaplace_difference_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bde8a531-4551-095a-f9c3-0ab9ce60e01b",
  "kind": "theorem",
  "lexical_name": "actualFiniteCenteredRieszLaplace_difference_bound",
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
  "slug": "actualfinitecenteredrieszlaplace-difference-bound--550941d8b76c6da7058dc8c9",
  "source": {
    "blob": "cfa9d5f5434efc632fae5d5a5636c36163b9012e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 137,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:550941d8b76c6da7058dc8c91b95c2d6e9b82652c2583afb36654ae8b9529414",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bde8a531-4551-095a-f9c3-0ab9ce60e01b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFiniteCenteredRieszLaplace_difference_bound {A : ℝ} (hA : 0 < A)
    {z : ℂ} (hz : 1 / 2 < z.re) :
    ‖actualFiniteCenteredRieszLaplace A z - actualFixedCenteredRieszLaplace z‖ ≤
      56 / (A^2 * ‖z‖^2) := by
  have hp := actualRiesz_finite_center_payment_bound hA
  rw [actualFiniteCenteredRieszLaplace_eq_fixed_add_payment A hz, add_sub_cancel_left,
    norm_div, norm_pow, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hp.1]
  calc
    _ ≤ (56 / A^2) / ‖z‖^2 := div_le_div_of_nonneg_right hp.2 (sq_nonneg _)
    _ = _ := div_div _ _ _

end FormalResearch.RiemannHypothesis.SourceActualRieszCenteredInitialLaplace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfa9d5f5434efc632fae5d5a5636c36163b9012e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
