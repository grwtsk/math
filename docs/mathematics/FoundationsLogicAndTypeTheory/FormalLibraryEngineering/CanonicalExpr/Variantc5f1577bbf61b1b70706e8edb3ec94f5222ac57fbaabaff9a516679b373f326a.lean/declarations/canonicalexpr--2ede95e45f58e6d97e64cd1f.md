# canonicalExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e75ecf09feb4643d8667d693adfdaa241b91892fd09fb7ed44585d1890d2a1e",
  "kind": "def",
  "lexical_name": "canonicalExpr",
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
  "slug": "canonicalexpr--2ede95e45f58e6d97e64cd1f",
  "source": {
    "blob": "50a73c517ff56379754641d3a252cb90534a9e4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalExpr/Variantc5f1577bbf61b1b70706e8edb3ec94f5222ac57fbaabaff9a516679b373f326a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ede95e45f58e6d97e64cd1f4c3276747348e99ee5cdddea9191f3cc442a140e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalExpr/Variantc5f1577bbf61b1b70706e8edb3ec94f5222ac57fbaabaff9a516679b373f326a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e75ecf09feb4643d8667d693adfdaa241b91892fd09fb7ed44585d1890d2a1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def canonicalExpr : Lean.Expr -> String
  | .bvar i => "b:" ++ toString i
  | .fvar id => "f:" ++ toString id.name
  | .mvar id => "m:" ++ toString id.name
  | .sort u => "sort:" ++ toString u
  | .const n us => "const:" ++ n.toString ++ ":" ++ String.intercalate "," (us.map toString)
  | .app f a => "app(" ++ canonicalExpr f ++ "," ++ canonicalExpr a ++ ")"
  | .lam _ t b _ => "lam(" ++ canonicalExpr t ++ "," ++ canonicalExpr b ++ ")"
  | .forallE _ t b _ => "forall(" ++ canonicalExpr t ++ "," ++ canonicalExpr b ++ ")"
  | .letE _ t v b _ => "let(" ++ canonicalExpr t ++ "," ++ canonicalExpr v ++ "," ++ canonicalExpr b ++ ")"
  | .lit (.natVal n) => "nat:" ++ toString n
  | .lit (.strVal s) => "str:" ++ s
  | .mdata _ e => canonicalExpr e
  | .proj n i e => "proj:" ++ n.toString ++ ":" ++ toString i ++ "(" ++ canonicalExpr e ++ ")"

end Noeoueue.Export
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalExpr/Variantc5f1577bbf61b1b70706e8edb3ec94f5222ac57fbaabaff9a516679b373f326a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalExpr/Variantc5f1577bbf61b1b70706e8edb3ec94f5222ac57fbaabaff9a516679b373f326a.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50a73c517ff56379754641d3a252cb90534a9e4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
