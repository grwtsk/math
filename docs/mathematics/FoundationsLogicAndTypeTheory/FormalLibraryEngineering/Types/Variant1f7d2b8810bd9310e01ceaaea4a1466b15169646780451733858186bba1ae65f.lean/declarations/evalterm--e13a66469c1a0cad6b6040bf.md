# EvalTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f24c84e66db8a63948a8748825a7e86dccd4d240a9974ad2688c69d22993764",
  "kind": "class",
  "lexical_name": "EvalTerm",
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
  "slug": "evalterm--e13a66469c1a0cad6b6040bf",
  "source": {
    "blob": "d94bd8af15bfb394ea1de47578b71beb6f72ba71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant1f7d2b8810bd9310e01ceaaea4a1466b15169646780451733858186bba1ae65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e13a66469c1a0cad6b6040bf9a2b55cf7686f12bccf2b632facf9937592d07da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant1f7d2b8810bd9310e01ceaaea4a1466b15169646780451733858186bba1ae65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f24c84e66db8a63948a8748825a7e86dccd4d240a9974ad2688c69d22993764`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class EvalTerm (α : Type) where
  /--
  Direct evaluation of `Term` syntax, avoiding term elaboration.
  Instances should use `throwUnsupportedSyntax` to signal that the syntax is not recognized.
  Instances shouldn't generally throw other exceptions.

  Evaluation is allowed to imagine that certain coercions are implicitly inserted.
  For example, the `Option Int` instance is allowed to recognize `1` as an `Option Int`
  even though term elaboration would fail here. This allowance should be used lightly,
  since generally `EvalTerm` is used as the fast path, and when using the `EvalExpr`
  backup, such expressions will no longer be recognized.

  Implementations should add `TermInfo` when the info is enabled.
  The `Expr` return value is to support constructing such expressions in combinators.
  -/
  evalTerm : Term → TermElabM (α × Expr)
  /--
  A type that can be used when constructing expression for the `TermInfo`.
  -/
  typeExpr : Expr

export EvalTerm (evalTerm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant1f7d2b8810bd9310e01ceaaea4a1466b15169646780451733858186bba1ae65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant1f7d2b8810bd9310e01ceaaea4a1466b15169646780451733858186bba1ae65f.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d94bd8af15bfb394ea1de47578b71beb6f72ba71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
