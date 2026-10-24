# spatialDerivativeL2_coe_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b95e39ad-a622-2921-da2f-d6700e8931bf",
  "kind": "theorem",
  "lexical_name": "spatialDerivativeL2_coe_ae",
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
  "slug": "spatialderivativel2-coe-ae--dd7c7a496b6ad77ca6513424",
  "source": {
    "blob": "40bc0ef3c17ffe8b9aea47375d79770ee5434ae3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/MixedSourceV1Prebytes/Variant1233811ae2369906cd75b91d248a066e71d86fed7136195000faf3c7f5883470.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd7c7a496b6ad77ca651342440ff304ed096d8382ea717377e1d1c366817acb4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MixedSourceV1Prebytes/Variant1233811ae2369906cd75b91d248a066e71d86fed7136195000faf3c7f5883470.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b95e39ad-a622-2921-da2f-d6700e8931bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spatialDerivativeL2_coe_ae (A : ℝ) (hA : 0 < A) :
    spatialDerivativeL2 A hA =ᵐ[volume] fun x => (spatialDerivative A x : ℂ) := by
  filter_upwards [Complex.ofRealCLM.coeFn_compLp
      ((spatialDerivative_memLp hA).toLp (spatialDerivative A)),
    (spatialDerivative_memLp hA).coeFn_toLp] with x hc hp
  change spatialDerivativeL2 A hA x =
    (((spatialDerivative_memLp hA).toLp (spatialDerivative A)) x : ℂ) at hc
  rw [hc, hp]

/-- Total extension is zero outside positive scales; regularity is asserted only where A>0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MixedSourceV1Prebytes/Variant1233811ae2369906cd75b91d248a066e71d86fed7136195000faf3c7f5883470.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MixedSourceV1Prebytes/Variant1233811ae2369906cd75b91d248a066e71d86fed7136195000faf3c7f5883470.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40bc0ef3c17ffe8b9aea47375d79770ee5434ae3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
