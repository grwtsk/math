# ComptimeDependency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90a8eaf0b8f438dc30421d3b00e14311a1919ff954bdae644547558822d2c8d4",
  "kind": "inductive",
  "lexical_name": "ComptimeDependency",
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
  "slug": "comptimedependency--4d4347d03624c9169c85bb28",
  "source": {
    "blob": "50ebe6549e1e693c5dbd37181e9ff4ed58b00464",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 250,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variantddd7dc97f5e43e12fc12676415a37983c1ad0213eb60e784a7852aebe5ac3fe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d4347d03624c9169c85bb28a1a341e158d6763108655cce90664b37ce70ffb6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variantddd7dc97f5e43e12fc12676415a37983c1ad0213eb60e784a7852aebe5ac3fe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90a8eaf0b8f438dc30421d3b00e14311a1919ff954bdae644547558822d2c8d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ComptimeDependency where
| /-- A potential compile-time dependency due to an indirect mod use.
  `imposingModule` records the module that imposed the indirect mod use (not the source module of
  the declaration). -/
  indirect (use : IndirectModUse) (imposingModules : Array Name)
| /-- A compile-time dependency due to parsing. -/
  stx (kind : SyntaxNodeKind) (pos? : Option Syntax.Range) -- TODO: just record syntax?
deriving Inhabited, BEq, Repr, Hashable, Ord

/-- A location at which a `ConstantInfo` can reference another. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variantddd7dc97f5e43e12fc12676415a37983c1ad0213eb60e784a7852aebe5ac3fe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variantddd7dc97f5e43e12fc12676415a37983c1ad0213eb60e784a7852aebe5ac3fe1.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50ebe6549e1e693c5dbd37181e9ff4ed58b00464` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
