# actualFixedCenteredRieszLaplace_eq_regularization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b6f1a58-49b6-1766-2002-3322bb7dc653",
  "kind": "theorem",
  "lexical_name": "actualFixedCenteredRieszLaplace_eq_regularization",
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
  "slug": "actualfixedcenteredrieszlaplace-eq-regularization--bbcd5a61a4f730a649d8abe9",
  "source": {
    "blob": "b3fcfdefad44f5a7fbb4868e9bb2125b0a894bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantca5da545bf1d92a18930e94dbd74cd150c40b376d0e2450c2df7c9eff423d1bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbcd5a61a4f730a649d8abe949dea3a6fdce9b6c19a035249622fb7abea301b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantca5da545bf1d92a18930e94dbd74cd150c40b376d0e2450c2df7c9eff423d1bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b6f1a58-49b6-1766-2002-3322bb7dc653`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFixedCenteredRieszLaplace_eq_regularization {z : ℂ} (hz : 1 / 2 < z.re) :
    actualFixedCenteredRieszLaplace z = actualRieszCriticalRegularization z := by
  have hzn : z ≠ 0 := by intro h; norm_num [h] at hz
  unfold actualFixedCenteredRieszLaplace
  rw [centered_weight_integral hz, numerator_initial hz,
    actualRieszCriticalRegularization_eq_real_centers hzn]
  exact centered_scalar_identity hzn _ _ _

/-- Every actual finite-source center has genuine initial L1, without an input field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantca5da545bf1d92a18930e94dbd74cd150c40b376d0e2450c2df7c9eff423d1bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantca5da545bf1d92a18930e94dbd74cd150c40b376d0e2450c2df7c9eff423d1bb.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3fcfdefad44f5a7fbb4868e9bb2125b0a894bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
