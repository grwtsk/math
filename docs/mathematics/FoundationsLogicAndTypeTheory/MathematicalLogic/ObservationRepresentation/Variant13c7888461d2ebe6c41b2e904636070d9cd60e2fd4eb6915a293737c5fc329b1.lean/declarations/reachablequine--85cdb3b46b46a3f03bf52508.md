# reachableQuine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ffe044e530410b46f3843b0bfba940a51b1b103a545b8ca86a3d008c7edee2c",
  "kind": "def",
  "lexical_name": "reachableQuine",
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
  "slug": "reachablequine--85cdb3b46b46a3f03bf52508",
  "source": {
    "blob": "955b35864c5651957aee02eca29f7a807544545c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ObservationRepresentation/Variant13c7888461d2ebe6c41b2e904636070d9cd60e2fd4eb6915a293737c5fc329b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85cdb3b46b46a3f03bf52508b3df7788a4f91ca33a0669302bb0cac19375daa5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ObservationRepresentation/Variant13c7888461d2ebe6c41b2e904636070d9cd60e2fd4eb6915a293737c5fc329b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ffe044e530410b46f3843b0bfba940a51b1b103a545b8ca86a3d008c7edee2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def reachableQuine (inhabited : Nonempty State) :
    StructuralQuine.{u, v, w, max v w, b} C where
  quotient := C.reachableRepresentation
  reconstruct := C.reachableRepresentative
  «section» := C.reachableRepresentative_section
  reconstruct_equivalent := by
    intro s i
    exact congrFun (Classical.choose_spec
      (C.reachableRepresentation.compress s).2) i
  minimal := C.reachableRepresentation_minimal inhabited

/-- A reachable representative is unique precisely up to the admitted observations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ObservationRepresentation/Variant13c7888461d2ebe6c41b2e904636070d9cd60e2fd4eb6915a293737c5fc329b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ObservationRepresentation/Variant13c7888461d2ebe6c41b2e904636070d9cd60e2fd4eb6915a293737c5fc329b1.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `955b35864c5651957aee02eca29f7a807544545c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
