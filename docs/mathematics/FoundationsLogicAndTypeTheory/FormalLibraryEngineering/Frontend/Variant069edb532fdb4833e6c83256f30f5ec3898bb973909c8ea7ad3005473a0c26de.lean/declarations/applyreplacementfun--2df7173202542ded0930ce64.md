# applyReplacementFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:106a5c193db8e90ccd15aeba45d8aeca053da81e4999bcc3369a4f5455559ac2",
  "kind": "def",
  "lexical_name": "applyReplacementFun",
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
  "slug": "applyreplacementfun--2df7173202542ded0930ce64",
  "source": {
    "blob": "68138ccfe54e8c7a4fe4d54f67af05cfcc444fe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 652,
    "line": 573,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2df7173202542ded0930ce64f5aceac0103cdd1c1a7a1a3a42e65263abdce873",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:106a5c193db8e90ccd15aeba45d8aeca053da81e4999bcc3369a4f5455559ac2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–652.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyReplacementFun (e : Expr) : MetaM Expr :=
  return aux (← getEnv) (← getBoolOption `trace.to_additive_detail) e
where /-- Implementation of `applyReplacementFun`. -/
  aux (env : Environment) (trace : Bool) : Expr → Expr :=
  let reorderFn : Name → List (List ℕ) := fun nm ↦ (reorderAttr.find? env nm |>.getD [])
  let relevantArg : Name → ℕ := fun nm ↦ (relevantArgAttr.find? env nm).getD 0
  Lean.Expr.replaceRec fun r e ↦ Id.run do
    if trace then
      dbg_trace s!"replacing at {e}"
    match e with
    | .const n₀ ls₀ => do
      let n₁ := n₀.mapPrefix <| findTranslation? env
      let ls₁ : List Level := if 0 ∈ (reorderFn n₀).flatten then ls₀.swapFirstTwo else ls₀
      if trace then
        if n₀ != n₁ then
          dbg_trace s!"changing {n₀} to {n₁}"
        if 0 ∈ (reorderFn n₀).flatten then
          dbg_trace s!"reordering the universe variables from {ls₀} to {ls₁}"
      return some <| Lean.mkConst n₁ ls₁
    | .app g x => do
      let gf := g.getAppFn
      if gf.isBVar && x.isLit then
        if trace then
          dbg_trace s!"applyReplacementFun: Variables applied to numerals are not changed {g.app x}"
        return some <| g.app x
      let gArgs := g.getAppArgs
      let mut gAllArgs := gArgs.push x
      let (gfAdditive, gAllArgsAdditive) ←
        if let some nm := gf.constName? then
          -- e = `(nm y₁ .. yₙ x)
          /- Test if the head should not be replaced. -/
          let relevantArgId := relevantArg nm
          let gfAdditive :=
            if h : relevantArgId < gAllArgs.size ∧ gf.isConst then
              if let some fxd :=
                additiveTest env gAllArgs[relevantArgId] then
                Id.run <| do
                  if trace then
                    dbg_trace s!"The application of {nm} contains the fixed type \
                      {fxd}, so it is not changed"
                  gf
              else
                r gf
            else
              r gf
          /- Test if arguments should be reordered. -/
          let reorder := reorderFn nm
          if !reorder.isEmpty && relevantArgId < gAllArgs.size &&
            (additiveTest env gAllArgs[relevantArgId]!).isNone then
            gAllArgs := gAllArgs.permute! reorder
            if trace then
              dbg_trace s!"reordering the arguments of {nm} using the cyclic permutations {reorder}"
          /- Do not replace numerals in specific types. -/
          let firstArg := gAllArgs[0]!
          if let some changedArgNrs := changeNumeralAttr.find? env nm then
            if additiveTest env firstArg |>.isNone then
              if trace then
                dbg_trace s!"applyReplacementFun: We change the numerals in this expression. \
                  However, we will still recurse into all the non-numeral arguments."
              -- In this case, we still update all arguments of `g` that are not numerals,
              -- since all other arguments can contain subexpressions like
              -- `(fun x ↦ ℕ) (1 : G)`, and we have to update the `(1 : G)` to `(0 : G)`
              gAllArgs := gAllArgs.mapIdx fun argNr arg ↦
                if changedArgNrs.contains argNr then
                  changeNumeral arg
                else
                  arg
          pure <| (gfAdditive, ← gAllArgs.mapM r)
        else
          pure (← r gf, ← gAllArgs.mapM r)
      return some <| mkAppN gfAdditive gAllArgsAdditive
    | .proj n₀ idx e => do
      let n₁ := n₀.mapPrefix <| findTranslation? env
      if trace then
        dbg_trace s!"applyReplacementFun: in projection {e}.{idx} of type {n₀}, \
          replace type with {n₁}"
      return some <| .proj n₁ idx <| ← r e
    | _ => return none

/-- Eta expands `e` at most `n` times. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68138ccfe54e8c7a4fe4d54f67af05cfcc444fe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
