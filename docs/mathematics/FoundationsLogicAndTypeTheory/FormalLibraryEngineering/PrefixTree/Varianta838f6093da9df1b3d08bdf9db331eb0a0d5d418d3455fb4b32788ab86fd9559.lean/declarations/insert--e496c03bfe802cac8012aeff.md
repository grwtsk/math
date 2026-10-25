# insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15b832aee1530780dccc5660e830dc7371b6cf1d2338655c352a6c8a340f7b6a",
  "kind": "def",
  "lexical_name": "insert",
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
  "slug": "insert--e496c03bfe802cac8012aeff",
  "source": {
    "blob": "6c9deec1088c2f08a0e456c471d6e289e1a65b28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e496c03bfe802cac8012aeff60dc2cc1a3908f845c4bbdcec180022a83ba42a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15b832aee1530780dccc5660e830dc7371b6cf1d2338655c352a6c8a340f7b6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def insert (cmp : α → α → Ordering) (t : PrefixTreeNode α β cmp) (k : List α) (val : β) : PrefixTreeNode α β cmp :=
  let rec @[specialize] insertEmpty (k : List α) : PrefixTreeNode α β cmp :=
    match k with
    | [] => PrefixTreeNode.Node (some val) ∅
    | k :: ks =>
      let t := insertEmpty ks
      PrefixTreeNode.Node none {(k, t)}
  let rec @[specialize] loop
    | PrefixTreeNode.Node _ m, [] =>
      PrefixTreeNode.Node (some val) m -- overrides old value
    | PrefixTreeNode.Node v m, k :: ks =>
      let t := match m.get? k with
        | none   => insertEmpty ks
        | some t => loop t ks
      PrefixTreeNode.Node v (m.insert k t)
  loop t k

@[specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c9deec1088c2f08a0e456c471d6e289e1a65b28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
