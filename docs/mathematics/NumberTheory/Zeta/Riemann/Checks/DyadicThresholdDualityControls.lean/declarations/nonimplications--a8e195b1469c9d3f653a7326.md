# nonimplications

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bd72a937091417c876a8a652e2115188cb3791e6213292ad725ed84d0a8597a",
  "kind": "def",
  "lexical_name": "nonimplications",
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
  "slug": "nonimplications--a8e195b1469c9d3f653a7326",
  "source": {
    "blob": "5f6e80b451e62b1668a73d0f0cfe9e460e4c63f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicThresholdDualityControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8e195b1469c9d3f653a7326167bbd3e66a9852e6d29edf92b655f9fc1d1b824",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/DyadicThresholdDualityControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bd72a937091417c876a8a652e2115188cb3791e6213292ad725ed84d0a8597a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nonimplications : List String :=
  ["MAX-3SAT approximation hardness does not imply zeta nonvanishing",
   "the common values 1/2, 3/4, 7/8 do not identify proof mechanisms",
   "dyadic threshold algebra does not instantiate QuadraticThetaDescentAt",
   "dyadic threshold algebra does not construct SevenEighthsZeroFreeToTheta",
   "the historical 3/4 general MAX-SAT guarantee is not an optimality theorem",
   "no Riemann Hypothesis conclusion is added by this control module"]

end GRWTSK.RiemannHypothesis.Checks.DyadicThresholdDualityControls
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/DyadicThresholdDualityControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicThresholdDualityControls.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f6e80b451e62b1668a73d0f0cfe9e460e4c63f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
