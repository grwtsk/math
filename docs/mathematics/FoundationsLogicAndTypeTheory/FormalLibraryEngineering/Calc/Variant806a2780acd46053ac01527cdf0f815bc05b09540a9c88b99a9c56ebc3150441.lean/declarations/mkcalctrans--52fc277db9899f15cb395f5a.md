# mkCalcTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:875861cdd57b3d2e40ed7222b428814d4f3b71cd09afa15cd9f47724c7a21cb8",
  "kind": "def",
  "lexical_name": "mkCalcTrans",
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
  "slug": "mkcalctrans--52fc277db9899f15cb395f5a",
  "source": {
    "blob": "b90a49fba3b28eb0a6c55acea4ecabb8d654d959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant806a2780acd46053ac01527cdf0f815bc05b09540a9c88b99a9c56ebc3150441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52fc277db9899f15cb395f5a7e860fc487d077b56ac4175a92f78d719ad496e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant806a2780acd46053ac01527cdf0f815bc05b09540a9c88b99a9c56ebc3150441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:875861cdd57b3d2e40ed7222b428814d4f3b71cd09afa15cd9f47724c7a21cb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCalcTrans (result resultType step stepType : Expr) : MetaM (Expr × Expr) := do
  let some (r, a, b) ← getCalcRelation? resultType | unreachable!
  let some (s, _, c) ← getCalcRelation? (← instantiateMVars stepType) | unreachable!
  let u ← getRelUniv r
  let v ← getRelUniv s
  let (α, β, γ)       := (← inferType a, ← inferType b, ← inferType c)
  let (u_1, u_2, u_3) := (← getLevel α, ← getLevel β, ← getLevel γ)
  let w ← mkFreshLevelMVar
  let t ← mkFreshExprMVar (← mkArrow α (← mkArrow γ (mkSort w)))
  let selfType := mkAppN (Lean.mkConst ``Trans [u, v, w, u_1, u_2, u_3]) #[α, β, γ, r, s, t]
  match (← trySynthInstance selfType) with
  | .some self =>
    let result := mkAppN (Lean.mkConst ``Trans.trans [u, v, w, u_1, u_2, u_3]) #[α, β, γ, r, s, t, self, a, b, c, result, step]
    let resultType := (← instantiateMVars (← inferType result)).headBeta
    unless (← getCalcRelation? resultType).isSome do
      throwError "invalid 'calc' step, step result is not a relation{indentExpr resultType}"
    return (result, resultType)
  | _ => throwError "invalid 'calc' step, failed to synthesize `Trans` instance{indentExpr selfType}{useDiagnosticMsg}"

/--
Adds a type annotation to a hole that occurs immediately at the beginning of the term.
This is so that coercions can trigger when elaborating the term.
See https://github.com/leanprover/lean4/issues/2040 for further rationale.

- `_ < 3` is annotated
- `(_) < 3` is not, because it occurs after an atom
- in `_ < _` only the first one is annotated
- `_ + 2 < 3` is annotated (not the best heuristic, ideally we'd like to annotate `_ + 2`)
- `lt _ 3` is not, because it occurs after an identifier
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant806a2780acd46053ac01527cdf0f815bc05b09540a9c88b99a9c56ebc3150441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant806a2780acd46053ac01527cdf0f815bc05b09540a9c88b99a9c56ebc3150441.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90a49fba3b28eb0a6c55acea4ecabb8d654d959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
