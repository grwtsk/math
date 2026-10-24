# CanonicalExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9b6e934ab2d16c377c021a281ab7d4286d16960e6af1d11b26d3cd69a1cdace",
  "kind": "inductive",
  "lexical_name": "CanonicalExpr",
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
  "slug": "canonicalexpr--7ff55893ea0fbb072aefb6c3",
  "source": {
    "blob": "11f8fcd65f0b75e5cd6272202b95d3b0de0a96e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 29,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variantb5960f5313e95ec9f7e9ef2642c06cfd556bacddb5d767ae1ec25dc7a9452fa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ff55893ea0fbb072aefb6c380405d670ab2f62010546d9aa4b6340d028cf46f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variantb5960f5313e95ec9f7e9ef2642c06cfd556bacddb5d767ae1ec25dc7a9452fa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9b6e934ab2d16c377c021a281ab7d4286d16960e6af1d11b26d3cd69a1cdace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive CanonicalExpr
  | bvar (index : Nat)
  | sort (level : CanonicalLevel)
  | const (name : Lean.Name) (levels : Array CanonicalLevel)
  | app (fn arg : ExprId)
  | lam (binderInfo : BinderClass) (type body : ExprId)
  | forallE (binderInfo : BinderClass) (type body : ExprId)
  | letE (type value body : ExprId) (nondep : Bool)
  | lit (literal : CanonicalLiteral)
  | mdata (payloadDigest : Digest) (expr : ExprId)
  | proj (typeName : Lean.Name) (fieldIdx : Nat) (expr : ExprId)
  | adapterStructural (encoding : String)
  | legacyText (text : String)
  | invalidFreeVariable (description : String)
  | invalidMetavariable (description : String)
  deriving DecidableEq, Repr, Inhabited

/-- Exact structural child references of one canonical expression node. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variantb5960f5313e95ec9f7e9ef2642c06cfd556bacddb5d767ae1ec25dc7a9452fa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variantb5960f5313e95ec9f7e9ef2642c06cfd556bacddb5d767ae1ec25dc7a9452fa3.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f8fcd65f0b75e5cd6272202b95d3b0de0a96e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
