# addProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c2249ab80bd86eccfd99bc1a1405e03d60c7cb83be6439251abc8b8f3cea5ea",
  "kind": "def",
  "lexical_name": "addProjection",
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
  "slug": "addprojection--827d9fe258ec08c16f4c4ddd",
  "source": {
    "blob": "0479e1e84fa7c9d53b5dcb94336ad6f7962f01fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1036,
    "line": 976,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:827d9fe258ec08c16f4c4dddcf9b933a7171a21ed0f0ddaa1fbd53261bb375bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c2249ab80bd86eccfd99bc1a1405e03d60c7cb83be6439251abc8b8f3cea5ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 976–1036.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addProjection (declName : Name) (type lhs rhs : Expr) (args : Array Expr)
    (cfg : Config) : MetaM Unit :=
  -- Enable `backward.defeqAttrib.useBackward` so the dsimp/simp normalization
  -- below still uses `@[backward_defeq]`-only theorems (which would have been
  -- `@[defeq]` under the pre-stricter-inference rules). Without this, rfl-shaped
  -- projections end up with compound (non-rfl) proofs, which prevents
  -- `inferDefEqAttr` from tagging them, which cascades through downstream
  -- `@[simps!]` invocations.
  withOptions (fun opts => backward.defeqAttrib.useBackward.set opts true) do
  trace[simps.debug] "Planning to add the equality{indentD m!"{lhs} = ({rhs} : {type})"}"
  let env ← getEnv
  -- simplify `rhs` if `cfg.simpRhs` is true
  let lvl ← getLevel type
  let mut (rhs, prf) := (rhs, mkAppN (mkConst `Eq.refl [lvl]) #[type, lhs])
  if cfg.simpRhs then
    let ctx ← mkSimpContext
    let (rhs2, _) ← dsimp rhs ctx
    if rhs != rhs2 then
      trace[simps.debug] "`dsimp` simplified rhs to{indentExpr rhs2}"
    else
      trace[simps.debug] "`dsimp` failed to simplify rhs"
    let (result, _) ← simp rhs2 ctx
    if rhs2 != result.expr then
      trace[simps.debug] "`simp` simplified rhs to{indentExpr result.expr}"
    else
      trace[simps.debug] "`simp` failed to simplify rhs"
    rhs := result.expr
    prf := result.proof?.getD prf
  -- dsimplify `lhs` if `cfg.dsimpLhs` is true
  let mut lhs := lhs
  if cfg.dsimpLhs then
    let ctx ← mkSimpContext
    (lhs, _) ← dsimp lhs ctx
  let eqAp := mkApp3 (mkConst `Eq [lvl]) type lhs rhs
  let declType ← mkForallFVars args eqAp
  let declValue ← mkLambdaFVars args prf
  if (env.find? declName).isSome then -- diverging behavior from Lean 3
    throwError "simps tried to add lemma{indentD m!"{.ofConstName declName} : {declType}"}\n\
      to the environment, but it already exists."
  Mathlib.Tactic.warnIfImplicitIllTyped ref declName declType
  prependError "Failed to add projection lemma {declName}:" do
    addDecl <| .thmDecl {
      name := declName
      levelParams := univs
      type := declType
      value := declValue }
  trace[simps] "Adding `{.ofConstName declName}` :{indentExpr declType}"
  inferDefEqAttr declName
  -- add term info and apply attributes
  addDeclarationRangesFromSyntax declName (← getRef) ref
  addTermInfo' ref (← mkConstWithLevelParams declName) (isBinder := true) |>.run'
  if cfg.isSimp then
    addSimpTheorem simpExtension declName true false .global <| eval_prio default
  TermElabM.run' do
    Elab.Term.applyAttributes declName cfg.attrs

/--
Perform head-structure-eta-reduction on expression `e`. That is, if `e` is of the form
`⟨f.1, f.2, ..., f.n⟩` with `f` definitionally equal to `e`, then
`headStructureEtaReduce e = headStructureEtaReduce f` and `headStructureEtaReduce e = e` otherwise.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.lean#L976).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0479e1e84fa7c9d53b5dcb94336ad6f7962f01fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
