# higherOrderGetParam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de5bc8bbe26441cd53eea87e777b45f0bcc6e5a7d499414ef95366d496e8d444",
  "kind": "def",
  "lexical_name": "higherOrderGetParam",
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
  "slug": "higherordergetparam--2534308ae9d5371990de67d4",
  "source": {
    "blob": "da7b5e9053bb3c10fe1c39cad2bc19521bf24b2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2534308ae9d5371990de67d46e0dfbe3c8edf6643d1eff10826a5d09e4c38130",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de5bc8bbe26441cd53eea87e777b45f0bcc6e5a7d499414ef95366d496e8d444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def higherOrderGetParam (thm : Name) (stx : Syntax) : AttrM Name := do
  match stx with
  | `(attr| higher_order $[$name]?) =>
    let ref := (name : Option Syntax).getD stx[0]
    let hothmName :=
      if let some sname := name then
        updatePrefix sname.getId thm.getPrefix
      else
        thm.appendAfter "\'"
    MetaM.run' <| TermElabM.run' <| do
      let lvl := (← getConstInfo thm).levelParams
      let typ ← instantiateMVars (← inferType <| .const thm (lvl.map mkLevelParam))
      let hot ← mkHigherOrderType typ
      let prf ← do
        let mvar ← mkFreshExprMVar hot
        let (_, mvarId) ← mvar.mvarId!.intros
        let [mvarId] ← mvarId.apply (← mkConst ``funext) | throwError "failed"
        let (_, mvarId) ← mvarId.intro1
        let lmvr ← mvarId.apply (← mkConst thm)
        lmvr.forM fun mv ↦ mv.assumption
        instantiateMVars mvar
      addDecl <| .thmDecl
        { name := hothmName
          levelParams := lvl
          type := hot
          value := prf }
      addDeclarationRangesFromSyntax hothmName (← getRef) ref
      _ ← addTermInfo (isBinder := true) ref <| ← mkConstWithLevelParams hothmName
      let hsm := simpExtension.getState (← getEnv) |>.lemmaNames.contains (.decl thm)
      if hsm then
        addSimpTheorem simpExtension hothmName true false .global 1000
      let some fcn ← getSimpExtension? `functor_norm | failure
      let hfm := fcn.getState (← getEnv) |>.lemmaNames.contains <| .decl thm
      if hfm then
        addSimpTheorem fcn hothmName true false .global 1000
      return hothmName
  | _ => throwUnsupportedSyntax

/-- The `higher_order` attribute. From a lemma of the shape `∀ x, f (g x) = h x` derive an
auxiliary lemma of the form `f ∘ g = h` for reasoning about higher-order functions.

Syntax: `[higher_order]` or `[higher_order name]` where the given name is used for the
generated theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da7b5e9053bb3c10fe1c39cad2bc19521bf24b2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
