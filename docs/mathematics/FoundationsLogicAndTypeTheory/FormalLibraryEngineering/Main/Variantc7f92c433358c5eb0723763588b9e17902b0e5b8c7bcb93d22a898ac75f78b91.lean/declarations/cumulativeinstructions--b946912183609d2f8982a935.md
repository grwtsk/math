# cumulativeInstructions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e4a6d7f2c310952b5a687caedf3e37e6b585cb0fa73adedbb90c207fe03949f",
  "kind": "def",
  "lexical_name": "cumulativeInstructions",
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
  "slug": "cumulativeinstructions--b946912183609d2f8982a935",
  "source": {
    "blob": "f0f43f4900384e8726fdbd00717ccfe9e9ef347f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantc7f92c433358c5eb0723763588b9e17902b0e5b8c7bcb93d22a898ac75f78b91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b946912183609d2f8982a9358e1ceb6ccbcd4c1d29a629cce7cacb9f511a3ef0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantc7f92c433358c5eb0723763588b9e17902b0e5b8c7bcb93d22a898ac75f78b91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e4a6d7f2c310952b5a687caedf3e37e6b585cb0fa73adedbb90c207fe03949f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def cumulativeInstructions (instructions : NameMap Float) (graph : NameMap (Array Name)) :
    NameMap Float :=
  graph.fold (init := ∅) fun m n _ => go n m
where
  -- Helper which adds the entry for `n` to `m` if it's not already there.
  go (n : Name) (m : NameMap Float) : NameMap Float :=
    if m.contains n then
      m
    else
      let parents := graph.find! n
      -- Add all parents to the map first
      let m := parents.foldr (init := m) fun parent m => go parent m
      -- Determine the maximum cumulative instruction count among the parents
      let t := (parents.map fun parent => (m.find! parent)).foldr max 0
      m.insert n (instructions.findD n 0 + t)

/-- Given `NameMap`s indicating how many instructions are in each file and which files are imported
by which others, returns a new `NameMap` indicating the last of the parents of each file that would
be built in a totally parallel setting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantc7f92c433358c5eb0723763588b9e17902b0e5b8c7bcb93d22a898ac75f78b91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantc7f92c433358c5eb0723763588b9e17902b0e5b8c7bcb93d22a898ac75f78b91.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0f43f4900384e8726fdbd00717ccfe9e9ef347f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
