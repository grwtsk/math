# mkFormat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b1ebeda03bd5e12e61fbfc787e8bfced04e3a1bda410a07d43842b0f9096518",
  "kind": "def",
  "lexical_name": "mkFormat",
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
  "slug": "mkformat--eb360aefa3e20694ccab7dc7",
  "source": {
    "blob": "ce9c9990801336a127527b7176d36f1d0662563c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variantfad50882464dbe424cad07599e657b96b1485359cdf27ed4834e4fb5fc6603c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb360aefa3e20694ccab7dc7aeb9d4debc6d9b52ae4ee830ce2385009a781bef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variantfad50882464dbe424cad07599e657b96b1485359cdf27ed4834e4fb5fc6603c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b1ebeda03bd5e12e61fbfc787e8bfced04e3a1bda410a07d43842b0f9096518`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkFormat (e : Expr) : MetaM Expr := do
  mkRepr e <|> (do mkAppM ``Std.Format.text #[← mkToString e])
  <|> do
    if eval.derive.repr.get (← getOptions) then
      if let .const name _ := (← whnf (← inferType e)).getAppFn then
        try
          trace[Elab.eval] "Attempting to derive a `Repr` instance for `{.ofConstName name}`"
          liftCommandElabM do applyDerivingHandlers ``Repr #[name]
          resetSynthInstanceCache
          return ← mkRepr e
        catch ex =>
          trace[Elab.eval] "Failed to use derived `Repr` instance. Exception: {ex.toMessageData}"
    throwError m!"could not synthesize a `Repr` or `ToString` instance for type{indentExpr (← inferType e)}"

/--
Returns a representation of `e` using `MessageData`, or else fails.
Tries `mkFormat` if a `ToExpr` instance can't be synthesized.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variantfad50882464dbe424cad07599e657b96b1485359cdf27ed4834e4fb5fc6603c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variantfad50882464dbe424cad07599e657b96b1485359cdf27ed4834e4fb5fc6603c1.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9c9990801336a127527b7176d36f1d0662563c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
