# Lean.Meta.Sym.BackwardRule.applyChecked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eeb8b3e8a729aeba5f2a4c9c1fd3dd7c172611a938be9e735176ba46919e8620",
  "kind": "def",
  "lexical_name": "Lean.Meta.Sym.BackwardRule.applyChecked",
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
  "slug": "lean-meta-sym-backwardrule-applychecked--ac05c60da8d55d098cb33118",
  "source": {
    "blob": "c4d992dedf70719b4c5f6212d61db676aefb4c9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac05c60da8d55d098cb331184cd32f9bc6cf5b6a0d119b2136155cabc98ace8b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eeb8b3e8a729aeba5f2a4c9c1fd3dd7c172611a938be9e735176ba46919e8620`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Lean.Meta.Sym.BackwardRule.applyChecked (rule : BackwardRule) (goal : MVarId)
    (ruleDesc? : Option MessageData := none) : VCGenM ApplyResult := do
  let r ← rule.apply goal
  match r with
  | .goals _ => return r
  | .failed =>
    unless (← read).debug do return r
    let originalType ← goal.getType
    let normalized ← unfoldReducible originalType
    if normalized == originalType then return r
    let succeeded ← Lean.Meta.withoutModifyingMCtx do
      let goal' ← Meta.mkFreshExprSyntheticOpaqueMVar normalized
      match ← rule.apply goal'.mvarId! with
      | .goals _ => return true
      | .failed => return false
    if succeeded then
      let ruleDesc := ruleDesc?.getD <|
        match rule.expr.getAppFn with
        | .const declName _ => m!"`{.ofConstName declName}`"
        | _ => m!"<rule constructed from expression>"
      throwError m!"[vcgen +debug] BackwardRule {ruleDesc} failed to \
        apply to:{indentExpr originalType}\nbut succeeded after `unfoldReducible`-\
        normalization to:{indentExpr normalized}\nAn earlier step is missing a normalization. \
        Re-run with `set_option pp.all true` to see the structural difference."
    return r

namespace VCGen

open Sym Sym.Internal
open Lean.Elab.Tactic.Do.Internal

/-- `Grind.processHypotheses` if `Context.internalize` is `true`, otherwise a no-op. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4d992dedf70719b4c5f6212d61db676aefb4c9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
