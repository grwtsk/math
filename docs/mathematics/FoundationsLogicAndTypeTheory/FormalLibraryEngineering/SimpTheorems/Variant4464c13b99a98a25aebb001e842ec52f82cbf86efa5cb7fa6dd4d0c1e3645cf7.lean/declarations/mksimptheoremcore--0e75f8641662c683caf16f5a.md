# mkSimpTheoremCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc5ae02829f148c2df913b72f8bd10bc4d6eb944e1597200a8c0559fc5b705ba",
  "kind": "def",
  "lexical_name": "mkSimpTheoremCore",
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
  "slug": "mksimptheoremcore--0e75f8641662c683caf16f5a",
  "source": {
    "blob": "375077889ab38d6151fbb04b213bf66513572d23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 424,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e75f8641662c683caf16f5ae9789c0d8bca8996342b28b0476cc2debb5466c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc5ae02829f148c2df913b72f8bd10bc4d6eb944e1597200a8c0559fc5b705ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkSimpTheoremCore (origin : Origin) (e : Expr) (levelParams : Array Name) (proof : Expr)
    (post : Bool) (prio : Nat) (noIndexAtArgs : Bool) (checkLhs : Bool := false): MetaM SimpTheorem := do
  assert! origin != .fvar ⟨.anonymous⟩
  let type ← instantiateMVars (← inferType e)
  let (keys, perm) ← mkSimpTheoremKeys type noIndexAtArgs checkLhs
  let rfl ← isRflProof proof
  let backwardRfl ← if rfl then pure true else isBackwardRflProof proof
  if rfl && simp.rfl.checkTransparency.get (← getOptions) then
    forallTelescopeReducing type fun _ type => do
      let checkDefEq (lhs rhs : Expr) := do
        unless (← withConfig
            (fun ctx => { ctx with proj := .yesWithDelta, transparency := .implicit })
            (isDefEq lhs rhs)) do
          logWarning m!"`{origin.key}` is a `[defeq]` simp theorem, but its left-hand side{indentExpr lhs}\n\
            is not definitionally equal to the right-hand side{indentExpr rhs}\n\
            at `.implicit` transparency. Possible solutions:\n\
            1- use `(rfl)` as the proof\n\
            2- mark constants occurring in the lhs and rhs as `[implicit_reducible]`"
      match_expr type with
      | Eq _ lhs rhs => checkDefEq lhs rhs
      | Iff lhs rhs => checkDefEq lhs rhs
      | _ =>
        logWarning m!"'{origin.key}' is a 'rfl' simp theorem, unexpected resulting type{indentExpr type}"
  return { origin, keys, perm, post, levelParams, proof, priority := prio, rfl, backwardRfl }

/--
Creates a `SimpTheorem` from a global theorem.
Because some theorems lead to multiple `SimpTheorems` (in particular conjunctions), returns an array.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `375077889ab38d6151fbb04b213bf66513572d23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
