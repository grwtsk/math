# elabPatterns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24041fb68d39b494451ea89c99a4f835ad7f5ee4fb05011b260a7a291d8f1038",
  "kind": "def",
  "lexical_name": "elabPatterns",
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
  "slug": "elabpatterns--a431dcb710768da371ee3ad7",
  "source": {
    "blob": "249e89b55de88b1457acca3fa26ce85855f4cf7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a431dcb710768da371ee3ad7d9b65001b089c5848f64d4ec466606d3ac35d2d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24041fb68d39b494451ea89c99a4f835ad7f5ee4fb05011b260a7a291d8f1038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabPatterns (patternStxs : Array Syntax) (numDiscrs : Nat) (matchType : Expr) : TermElabM (Array Expr) :=
  withReader (fun ctx => { ctx with implicitLambda := false }) do
    let mut patterns  := #[]
    let mut matchType := matchType
    let patternStxs ← Term.checkNumPatterns numDiscrs patternStxs
    for h : idx in *...patternStxs.size do
      let patternStx := patternStxs[idx]
      matchType ← whnf matchType
      let .forallE _ discrType matchTypeBody _ := matchType
        | throwError "unexpected match type {matchType}"
      let pattern ← Term.withSynthesize <| Term.withPatternElabConfig <| Term.elabTermEnsuringType patternStx discrType
      patterns  := patterns.push pattern
      matchType := matchTypeBody.instantiate1 pattern
    return patterns

/--
Abstract earlier discriminant free variables from each discriminant type to produce
a dependent match motive. E.g., for discriminants `[i, h]` with types `[Nat, i ≤ n]` and
body `m β`, this produces `∀ (x₁ : Nat), ∀ (x₂ : x₁ ≤ n), m β`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `249e89b55de88b1457acca3fa26ce85855f4cf7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
