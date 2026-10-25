# observe_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4937033d-50eb-5acb-1f39-c8e10e716fea",
  "kind": "theorem",
  "lexical_name": "observe_natural",
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
  "slug": "observe-natural--2c3cc7dff5ff69d6bdc6fd6c",
  "source": {
    "blob": "2c4bf023c359d03b40d18ac68ca27021bb54ebe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 356,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c3cc7dff5ff69d6bdc6fd6cc8d30a139de489dc69e197a44a5ea9c97fc74f5d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4937033d-50eb-5acb-1f39-c8e10e716fea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem observe_natural
    {A B : SystemExport.{uI, uX, uR, uO}}
    (U : SystemUpgrade A B)
    (resolution : B.system.Resolution)
    (state : A.system.State) :
    U.hom.mapObservation resolution
        (A.system.observe (U.hom.pullResolution resolution) state) =
      B.system.observe resolution (U.hom.mapState state) :=
  U.hom.observe_natural resolution state

end SystemUpgrade

/-- A certified observer-local factor of a global system. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c4bf023c359d03b40d18ac68ca27021bb54ebe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
