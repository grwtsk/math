# isMatchCondCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bad4ffd6163e5776286abf24eba2c75f00af87d679b68f08bacd0383c4a25a90",
  "kind": "def",
  "lexical_name": "isMatchCondCandidate",
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
  "slug": "ismatchcondcandidate--1e1f21d1aa461e9628f79365",
  "source": {
    "blob": "0f681965db75817505efcf7f6034ffe761c770a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e1f21d1aa461e9628f7936554f94758e48d0f68417dea9b672430e5d1e7daed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bad4ffd6163e5776286abf24eba2c75f00af87d679b68f08bacd0383c4a25a90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def isMatchCondCandidate (e : Expr) : Bool :=
  e.isForall && go e
where
  go (e : Expr) : Bool :=
    if let .forallE _ d b _ := e then
      match_expr d with
      | Eq _ lhs _ => !lhs.hasLooseBVars && go b
      | HEq _ lhs _ _ => !lhs.hasLooseBVars && go b
      | _ => b.hasLooseBVar 0 && go b
    else
      e.isFalse

/--
Given a splitter alternative, annotate the terms that are `match`-expression
conditions corresponding to overlapping patterns.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f681965db75817505efcf7f6034ffe761c770a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
