# homogeneous_branch_green_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c80b5813-f9a1-eb61-4c72-5b2e64fdf88d",
  "kind": "theorem",
  "lexical_name": "homogeneous_branch_green_identity",
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
  "slug": "homogeneous-branch-green-identity--13e6590df21d51582ed3c192",
  "source": {
    "blob": "8df11993623d61d84400371425eb4501fd8ee032",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13e6590df21d51582ed3c192f271c0ef6691410902418bc0c80a4a4c5979f9cb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c80b5813-f9a1-eb61-4c72-5b2e64fdf88d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homogeneous_branch_green_identity (g f : ℝ → ℝ)
    (hg : ContDiff ℝ 4 g) (hf : ContDiff ℝ 4 f)
    (hzero : ∀ t, poleSquaredDifferentialOperator g t = 0) (a b : ℝ) :
    (∫ t in a..b, g t * poleSquaredDifferentialOperator f t) =
      boundaryFluxFunction g f b - boundaryFluxFunction g f a := by
  have hi : IntervalIntegrable (fun t ↦ g t * poleSquaredDifferentialOperator f t)
      volume a b :=
    (hg.continuous.mul (pole_squared_operator_continuous f hf)).intervalIntegrable a b
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ ↦ ?_) hi
  simpa only [hzero, zero_mul, sub_zero] using boundary_flux_has_deriv_at g f hg hf t

/-- Vanishing endpoint jets remove all Lagrange flux terms there. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df11993623d61d84400371425eb4501fd8ee032` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
