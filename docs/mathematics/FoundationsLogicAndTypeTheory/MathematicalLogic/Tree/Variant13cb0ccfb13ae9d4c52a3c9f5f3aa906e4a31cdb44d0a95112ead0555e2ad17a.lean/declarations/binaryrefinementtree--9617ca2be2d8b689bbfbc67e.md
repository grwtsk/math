# BinaryRefinementTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d0a1c6169bcd9b04284210abd526808146711ed34b131fefa1fac510ca93f5a",
  "kind": "structure",
  "lexical_name": "BinaryRefinementTree",
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
  "slug": "binaryrefinementtree--9617ca2be2d8b689bbfbc67e",
  "source": {
    "blob": "fd52de76bb3ca507b8890263a70501a42bd29edf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9617ca2be2d8b689bbfbc67e77682d574ac4a16374bd38a6a50061cbd2675c1d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d0a1c6169bcd9b04284210abd526808146711ed34b131fefa1fac510ca93f5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BinaryRefinementTree
    (Node : Type uNode)
    [Fintype Node]
    [DecidableEq Node]
    (width : Nat) where
  root : Node
  parent : Node → Option Node
  state : Node → PartialBitfield width
  root_parent :
    parent root = none
  nonroot_parent :
    ∀ node,
      node ≠ root →
      ∃ parentNode,
        parent node = some parentNode
  parent_refines :
    ∀ {parentNode childNode},
      parent childNode = some parentNode →
      OneCoordinateResolution
        (state parentNode)
        (state childNode)
  acyclic :
    ∀ node,
      ¬Relation.TransGen
        (fun child ancestor =>
          parent child = some ancestor)
        node node

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd52de76bb3ca507b8890263a70501a42bd29edf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
