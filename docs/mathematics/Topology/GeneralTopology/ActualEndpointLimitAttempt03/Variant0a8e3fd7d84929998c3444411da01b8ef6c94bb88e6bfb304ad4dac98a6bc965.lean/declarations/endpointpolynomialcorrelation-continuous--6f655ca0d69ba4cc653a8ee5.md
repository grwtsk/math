# endpointPolynomialCorrelation_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b30298ee-7c6b-00c9-1229-275421ecd1fc",
  "kind": "theorem",
  "lexical_name": "endpointPolynomialCorrelation_continuous",
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
  "slug": "endpointpolynomialcorrelation-continuous--6f655ca0d69ba4cc653a8ee5",
  "source": {
    "blob": "9e5dcf6022cb4cb8663d6c38c7ab52292c278f02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant0a8e3fd7d84929998c3444411da01b8ef6c94bb88e6bfb304ad4dac98a6bc965.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f655ca0d69ba4cc653a8ee5db3e980e43ec05dd0e55e1790dbdd20f76ef8a0f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant0a8e3fd7d84929998c3444411da01b8ef6c94bb88e6bfb304ad4dac98a6bc965.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b30298ee-7c6b-00c9-1229-275421ecd1fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointPolynomialCorrelation_continuous (y : ℝ) :
    Continuous (fun a => endpointPolynomialCorrelation a y) := by
  apply intervalIntegral.continuous_parametric_intervalIntegral_of_continuous'
  unfold Function.uncurry endpointInteriorPolynomial
  fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant0a8e3fd7d84929998c3444411da01b8ef6c94bb88e6bfb304ad4dac98a6bc965.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant0a8e3fd7d84929998c3444411da01b8ef6c94bb88e6bfb304ad4dac98a6bc965.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e5dcf6022cb4cb8663d6c38c7ab52292c278f02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
