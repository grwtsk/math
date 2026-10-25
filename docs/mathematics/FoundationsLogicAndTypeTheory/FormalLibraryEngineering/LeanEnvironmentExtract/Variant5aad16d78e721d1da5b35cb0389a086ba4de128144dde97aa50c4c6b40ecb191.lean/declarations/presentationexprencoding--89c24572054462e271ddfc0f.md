# presentationExprEncoding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bdf428c1ab15f4ad6f64d063f0e85aae16cac82212ae97b1468d48ede47d9f5",
  "kind": "def",
  "lexical_name": "presentationExprEncoding",
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
  "slug": "presentationexprencoding--89c24572054462e271ddfc0f",
  "source": {
    "blob": "87cb8256a8e593fea576fd195536a06142d56c98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant5aad16d78e721d1da5b35cb0389a086ba4de128144dde97aa50c4c6b40ecb191.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89c24572054462e271ddfc0f7a6b4cc6c977917c44e616953ab18326cc1c2e84",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant5aad16d78e721d1da5b35cb0389a086ba4de128144dde97aa50c4c6b40ecb191.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bdf428c1ab15f4ad6f64d063f0e85aae16cac82212ae97b1468d48ede47d9f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def presentationExprEncoding (params : List Name) : Expr → String
  | .bvar index => node "bvar" #[toString index]
  | .fvar id => node "invalidFVar" #[reprStr id]
  | .mvar id => node "invalidMVar" #[reprStr id]
  | .sort level => node "sort" #[levelEncoding params level]
  | .const name levels => node "const" #[name.toString, levelArrayEncoding params levels]
  | .app fn arg => node "app" #[presentationExprEncoding params fn, presentationExprEncoding params arg]
  | .lam name type body binderInfo =>
      node "lam" #[name.toString, binderInfoEncoding binderInfo,
        presentationExprEncoding params type, presentationExprEncoding params body]
  | .forallE name type body binderInfo =>
      node "forall" #[name.toString, binderInfoEncoding binderInfo,
        presentationExprEncoding params type, presentationExprEncoding params body]
  | .letE name type value body nondep =>
      node "let" #[name.toString, toString nondep,
        presentationExprEncoding params type,
        presentationExprEncoding params value,
        presentationExprEncoding params body]
  | .lit literal => node "lit" #[reprStr literal]
  | .mdata metadata body =>
      node "mdata" #[reprStr metadata, presentationExprEncoding params body]
  | .proj typeName fieldIndex object =>
      node "proj" #[typeName.toString, toString fieldIndex,
        presentationExprEncoding params object]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant5aad16d78e721d1da5b35cb0389a086ba4de128144dde97aa50c4c6b40ecb191.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant5aad16d78e721d1da5b35cb0389a086ba4de128144dde97aa50c4c6b40ecb191.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87cb8256a8e593fea576fd195536a06142d56c98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
