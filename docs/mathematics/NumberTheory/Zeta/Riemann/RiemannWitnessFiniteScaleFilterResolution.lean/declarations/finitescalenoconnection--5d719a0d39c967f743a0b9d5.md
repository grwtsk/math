# finiteScaleNoConnection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:203d404d1739fd56ee2d491e6cb09f6925a28e86e004b1421e93391e31b56e50",
  "kind": "def",
  "lexical_name": "finiteScaleNoConnection",
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
  "slug": "finitescalenoconnection--5d719a0d39c967f743a0b9d5",
  "source": {
    "blob": "550c2996050a172e536def77c9281c0ec5a0c964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 217,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessFiniteScaleFilterResolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d719a0d39c967f743a0b9d5f132b574c76abac1e3e01ae011010f74e72b6359",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RiemannWitnessFiniteScaleFilterResolution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:203d404d1739fd56ee2d491e6cb09f6925a28e86e004b1421e93391e31b56e50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def finiteScaleNoConnection
    (target : WitnessId) (scopeNote : String) : WitnessEdge where
  from := .finiteScaleFilterWitnessLabel
  to := target
  kind := .noProvedConnection
  authority := .externalSourceBound
  source := some finiteScaleFilteredTailSource.toSourceRef
  scopeNote := scopeNote

/-- The accepted filtered tail does not construct the rectangle count witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RiemannWitnessFiniteScaleFilterResolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessFiniteScaleFilterResolution.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `550c2996050a172e536def77c9281c0ec5a0c964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
