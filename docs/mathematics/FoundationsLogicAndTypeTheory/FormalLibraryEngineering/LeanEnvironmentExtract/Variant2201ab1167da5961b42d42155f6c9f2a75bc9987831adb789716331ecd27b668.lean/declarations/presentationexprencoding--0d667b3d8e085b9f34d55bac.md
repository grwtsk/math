# presentationExprEncoding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9f3af3445acea1ba8e19e57e1737924e4aff2234a0b9cb4225dc2b8823848e6",
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
  "slug": "presentationexprencoding--0d667b3d8e085b9f34d55bac",
  "source": {
    "blob": "70b80d5e44d2c3010f9c791a3f7ba813a10dfebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 206,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant2201ab1167da5961b42d42155f6c9f2a75bc9987831adb789716331ecd27b668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d667b3d8e085b9f34d55bac3b6598d770c63e8780f2977747e5adabd34a5075",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant2201ab1167da5961b42d42155f6c9f2a75bc9987831adb789716331ecd27b668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9f3af3445acea1ba8e19e57e1737924e4aff2234a0b9cb4225dc2b8823848e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–230.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant2201ab1167da5961b42d42155f6c9f2a75bc9987831adb789716331ecd27b668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant2201ab1167da5961b42d42155f6c9f2a75bc9987831adb789716331ecd27b668.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70b80d5e44d2c3010f9c791a3f7ba813a10dfebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
