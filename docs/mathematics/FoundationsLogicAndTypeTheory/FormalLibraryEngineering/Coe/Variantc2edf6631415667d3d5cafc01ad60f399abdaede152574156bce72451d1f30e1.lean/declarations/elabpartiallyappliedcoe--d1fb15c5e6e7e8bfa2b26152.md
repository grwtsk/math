# elabPartiallyAppliedCoe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37c5d6a9d9a00090046c68f8e56e9f81bbbccfe02f10706a0bc4b7283bfda7e6",
  "kind": "def",
  "lexical_name": "elabPartiallyAppliedCoe",
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
  "slug": "elabpartiallyappliedcoe--d1fb15c5e6e7e8bfa2b26152",
  "source": {
    "blob": "ce4de64cb81eba56850b40faab21250d89d56e32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantc2edf6631415667d3d5cafc01ad60f399abdaede152574156bce72451d1f30e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1fb15c5e6e7e8bfa2b261520aaf74a8451dbc3fc2728542862ecf5ed425cdc9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantc2edf6631415667d3d5cafc01ad60f399abdaede152574156bce72451d1f30e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37c5d6a9d9a00090046c68f8e56e9f81bbbccfe02f10706a0bc4b7283bfda7e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabPartiallyAppliedCoe (sym : String) (expectedType : Expr)
    (mkCoe : (expectedType x : Expr) → TermElabM Expr) : TermElabM Expr := do
  let expectedType ← instantiateMVars expectedType
  let Expr.forallE _ a b .. := expectedType | do
    tryPostpone
    throwError "({sym}) must have a function type, not{indentExpr expectedType}"
  if b.hasLooseBVars then
    tryPostpone
    throwError "({sym}) must have a non-dependent function type, not{indentExpr expectedType}"
  if a.hasExprMVar then tryPostpone
  let f ← withLocalDeclD `x a fun x ↦ do
    mkLambdaFVars #[x] (← mkCoe b x)
  return f.etaExpanded?.getD f

/-- Partially applied coercion.  Equivalent to the η-reduction of `(↑ ·)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantc2edf6631415667d3d5cafc01ad60f399abdaede152574156bce72451d1f30e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantc2edf6631415667d3d5cafc01ad60f399abdaede152574156bce72451d1f30e1.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce4de64cb81eba56850b40faab21250d89d56e32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
