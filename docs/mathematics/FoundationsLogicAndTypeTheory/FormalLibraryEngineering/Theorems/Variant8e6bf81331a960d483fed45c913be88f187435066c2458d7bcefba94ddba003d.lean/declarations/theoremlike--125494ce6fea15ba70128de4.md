# TheoremLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce59f3c6c100e163c9020f9d091000510d3d1d01facd5358782cd4cb14a02c02",
  "kind": "class",
  "lexical_name": "TheoremLike",
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
  "slug": "theoremlike--125494ce6fea15ba70128de4",
  "source": {
    "blob": "0ba54a26c0176afaf6b32471415df3fad21be889",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant8e6bf81331a960d483fed45c913be88f187435066c2458d7bcefba94ddba003d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:125494ce6fea15ba70128de4b3d2ce4eee131508aa263165e596a183496997f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant8e6bf81331a960d483fed45c913be88f187435066c2458d7bcefba94ddba003d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce59f3c6c100e163c9020f9d091000510d3d1d01facd5358782cd4cb14a02c02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class TheoremLike (α : Type) where
  getSymbols : α → List HeadIndex
  setSymbols : α → List HeadIndex → α
  getOrigin : α → Origin
  getProof : α → Expr
  getLevelParams : α → Array Name

open TheoremLike

/--
Inserts a `thm` with symbols `[s_1, ..., s_n]` to `s`.
We add `s_1 -> { thm with symbols := [s_2, ..., s_n] }`.
When `grind` internalizes a term containing symbol `s`, we
process all theorems `thm` associated with key `s`.
If their `thm.symbols` is empty, we say they are activated.
Otherwise, we reinsert into `map`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant8e6bf81331a960d483fed45c913be88f187435066c2458d7bcefba94ddba003d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant8e6bf81331a960d483fed45c913be88f187435066c2458d7bcefba94ddba003d.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ba54a26c0176afaf6b32471415df3fad21be889` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
