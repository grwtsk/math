# Config

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a6dea341764dc1c6a68b9e8ddf344b78d301cecbb19b4a3a9c133fd680b664d",
  "kind": "structure",
  "lexical_name": "Config",
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
  "slug": "config--109fb0961eaed974ab87aa2b",
  "source": {
    "blob": "1a4bda205f253419b9281a36f55769c71ce800a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 10,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant8be9a2d7979c2888e5ff625a580abb053d42a041d2d5a25ddf9cb6dd36a8850f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:109fb0961eaed974ab87aa2b518c001084556a5191cbf7b181b7c8d7acac917c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant8be9a2d7979c2888e5ff625a580abb053d42a041d2d5a25ddf9cb6dd36a8850f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a6dea341764dc1c6a68b9e8ddf344b78d301cecbb19b4a3a9c133fd680b664d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Config where
  /-- The statement of the node in text. -/
  statement : Option String := none
  /-- By default, only theorems have separate proof parts. This option overrides this behavior. -/
  hasProof : Option Bool := none
  /-- The proof of the node in text. Uses proof docstrings if not present. -/
  proof : Option String := none
  /-- The set of nodes that this node depends on. Infers from the constant if not present. -/
  uses : Array Name := #[]
  /-- The set of nodes to exclude from `uses`. -/
  excludes : Array Name := #[]
  /-- Additional LaTeX labels of nodes that this node depends on. -/
  usesLabels : Array String := #[]
  /-- The set of labels to exclude from `usesLabels`. -/
  excludesLabels : Array String := #[]
  /-- The set of nodes that the proof of this node depends on. Infers from the constant's value if not present. -/
  proofUses : Array Name := #[]
  /-- The set of nodes to exclude from `proofUses`. -/
  proofExcludes : Array Name := #[]
  /-- Additional LaTeX labels of nodes that the proof of this node depends on. -/
  proofUsesLabels : Array String := #[]
  /-- The set of labels to exclude from `proofUsesLabels`. -/
  proofExcludesLabels : Array String := #[]
  /-- The surrounding environment is not ready to be formalized, typically because it requires more blueprint work. -/
  notReady : Bool := false
  /-- A GitHub issue number where the surrounding definition or statement is discussed. -/
  discussion : Option Nat := none
  /-- The short title of the node in LaTeX. -/
  title : Option String := none
  /-- The LaTeX environment to use for the node. -/
  latexEnv : Option String := none
  /-- The LaTeX label to use for the node. -/
  latexLabel : Option String := none
  /-- Enable debugging. -/
  trace : Bool := false
deriving Repr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant8be9a2d7979c2888e5ff625a580abb053d42a041d2d5a25ddf9cb6dd36a8850f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant8be9a2d7979c2888e5ff625a580abb053d42a041d2d5a25ddf9cb6dd36a8850f.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a4bda205f253419b9281a36f55769c71ce800a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
