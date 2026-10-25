# nontrivialityByElim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43e64f6dcfefa92aacf743a380d5ed0fdc06085fe0a70798475cf7940c33f8e3",
  "kind": "def",
  "lexical_name": "nontrivialityByElim",
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
  "slug": "nontrivialitybyelim--bbfc9b89acf648718c19904a",
  "source": {
    "blob": "875ff17ff86d027d9527f764c6472881ec022c31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbfc9b89acf648718c19904a6301f2f2f8c60f9a674b8182f35a0a817faffe87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43e64f6dcfefa92aacf743a380d5ed0fdc06085fe0a70798475cf7940c33f8e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nontrivialityByElim (α : Q(Type u)) (g : MVarId) (simpArgs : Array Syntax) : MetaM MVarId := do
  let p : Q(Prop) ← g.getType
  guard (←instantiateMVars (← inferType p)).isProp
  g.withContext do
    let g₁ ← mkFreshExprMVarQ q(Subsingleton $α → $p)
    let (_, g₁') ← g₁.mvarId!.intro1
    g₁'.withContext try
      -- FIXME: restore after lean4#2054 is fixed
      -- g₁'.inferInstance <|> do
      (do g₁'.assign (← synthInstance (← g₁'.getType))) <|> do
        let simpArgs := simpArgs.push (Unhygienic.run `(Parser.Tactic.simpLemma| nontriviality))
        let stx := open TSyntax.Compat in Unhygienic.run `(tactic| simp [$simpArgs,*])
        let ([], _) ← runTactic g₁' stx | failure
    catch _ => throwError
      "Could not prove goal assuming `{q(Subsingleton $α)}`\n{MessageData.ofGoal g₁'}"
    let g₂ : Q(Nontrivial $α → $p) ← mkFreshExprMVarQ q(Nontrivial $α → $p)
    g.assign q(subsingleton_or_nontrivial_elim $g₁ $g₂)
    pure g₂.mvarId!

/--
Tries to generate a `Nontrivial α` instance using `nontrivial_of_ne` or `nontrivial_of_lt`
and local hypotheses.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `875ff17ff86d027d9527f764c6472881ec022c31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
