# onHighestNode?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3ec9d94213ab9c9d2fb11508303f00578df63fa00d0e7fce9de8f41474d27fc",
  "kind": "def",
  "lexical_name": "onHighestNode?",
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
  "slug": "onhighestnode--1e98b5d695ec974edd7d34b6",
  "source": {
    "blob": "d68d26f2dd01c78764825f4377a7b1962f8c1c79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Varianta09d1cc4ff0e5652c1346b62cc8cecfec1ed61e3d3f51e222b7e60af74916750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e98b5d695ec974edd7d34b6eb81551e5a7cc9961a75b9647ebc0172353a2e6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Varianta09d1cc4ff0e5652c1346b62cc8cecfec1ed61e3d3f51e222b7e60af74916750.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3ec9d94213ab9c9d2fb11508303f00578df63fa00d0e7fce9de8f41474d27fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def onHighestNode? {α} (t : InfoTree) (ctx? : Option ContextInfo)
    (f : ContextInfo → Info → PersistentArray InfoTree → α) : Option α :=
  t.findSome? (ctx? := ctx?) fun ctx i ch => some (f ctx i ch)

/--
Returns the context and `info` on the outermost `.node info _` which has
context, having merged and updated contexts appropriately.

If `ctx?` is `some ctx`, `ctx` is used as an initial context. A `ctx?` of `none` should **only** be
used when operating on the first node of the entire infotree. Otherwise, it is likely that no
context will be found.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Varianta09d1cc4ff0e5652c1346b62cc8cecfec1ed61e3d3f51e222b7e60af74916750.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Varianta09d1cc4ff0e5652c1346b62cc8cecfec1ed61e3d3f51e222b7e60af74916750.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d68d26f2dd01c78764825f4377a7b1962f8c1c79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
