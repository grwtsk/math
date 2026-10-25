# GoalRef.checkAndMarkUnprovable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8c1c1160a4d183d7b5ecd770a0549287dcf9b4c7eda2e05edf8b7cc08d6499c",
  "kind": "def",
  "lexical_name": "GoalRef.checkAndMarkUnprovable",
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
  "slug": "goalref-checkandmarkunprovable--1a9b03227155ca234028de72",
  "source": {
    "blob": "9c4474064bd00dd3fb4edc45a05d96faa73d4436",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant4306bdabd6512e343c659fb15d86d399d1dc85a8afe5bab8a417fc3a906aa501.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a9b03227155ca234028de72a4b780e54a7a1964c56f1e71dc1c78736913c087",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant4306bdabd6512e343c659fb15d86d399d1dc85a8afe5bab8a417fc3a906aa501.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8c1c1160a4d183d7b5ecd770a0549287dcf9b4c7eda2e05edf8b7cc08d6499c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GoalRef.checkAndMarkUnprovable (gref : GoalRef) : BaseIO Unit :=
  markUnprovableCore (TreeRef.goal gref)


/-! ### Uncached Node States -/

/-
The following functions determine the state of a node (goal/rapp/mvar cluster),
assuming only that the state of the node's children is correct. So they can be
used to verify a tree 'bottom-up'.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant4306bdabd6512e343c659fb15d86d399d1dc85a8afe5bab8a417fc3a906aa501.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant4306bdabd6512e343c659fb15d86d399d1dc85a8afe5bab8a417fc3a906aa501.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c4474064bd00dd3fb4edc45a05d96faa73d4436` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
