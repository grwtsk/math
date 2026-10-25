# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd7cc3d27cf61113a997e19d3f9e8fe9abd75adf15edb6643d7333b215471d24",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--6bf5b0e527fae2a98f61cffa",
  "source": {
    "blob": "8f56d7aaaedfaf2691bd6946557b0cbfd67a9c57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 436,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant0b3332c4cb76350f1945d694567e891313a8ef5564b7181428a46cadcea8942d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bf5b0e527fae2a98f61cffaa38d1cde7ef9e05695d021aecc2dfe8c3243ef3d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant0b3332c4cb76350f1945d694567e891313a8ef5564b7181428a46cadcea8942d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd7cc3d27cf61113a997e19d3f9e8fe9abd75adf15edb6643d7333b215471d24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| mv_bisim $e $[ with $ids:binderIdent*]?) => do
    let ids : TSyntaxArray `Lean.binderIdent := ids.getD #[]
    let idsn (n : ℕ) : Name :=
      match ids[n]? with
      | some s =>
        match s with
        | `(binderIdent| $n:ident) => n.getId
        | `(binderIdent| _) => `_
        | _ => unreachable!
      | none => `_
    let idss (n : ℕ) : TacticM (TSyntax `rcasesPat) := do
      match ids[n]? with
      | some s =>
        match s with
        | `(binderIdent| $n:ident) => `(rcasesPat| $n)
        | `(binderIdent| _%$b) => `(rcasesPat| _%$b)
        | _ => unreachable!
      | none => `(rcasesPat| _)
    withMainContext do
      let e ← Tactic.elabTerm e none
      let f ← liftMetaTacticAux fun g => do
        let (#[fv], g) ← g.generalize #[{ expr := e }] | unreachable!
        return (mkFVar fv, [g])
      withMainContext do
        let some (t, l, r) ← matchEq? (← getMainTarget) | throwError "goal is not an equality"
        let ex ←
          withLocalDecl (idsn 1) .default t fun v₀ =>
            withLocalDecl (idsn 2) .default t fun v₁ => do
              let x₀ ← mkEq v₀ l
              let x₁ ← mkEq v₁ r
              let xx ← mkAppM ``And #[x₀, x₁]
              let ex₁ ← mkLambdaFVars #[f] xx
              let ex₂ ← mkAppM ``Exists #[ex₁]
              mkLambdaFVars #[v₀, v₁] ex₂
        let R ← liftMetaTacticAux fun g => do
          let g₁ ← g.define (idsn 0) (← mkArrow t (← mkArrow t (mkSort .zero))) ex
          let (Rv, g₂) ← g₁.intro1P
          return (mkFVar Rv, [g₂])
        withMainContext do
          ids[0]?.forM fun s => addLocalVarInfoForBinderIdent R s
          let sR ← exprToSyntax R
          evalTactic <| ← `(tactic|
            refine MvQPF.Cofix.bisim₂ $sR ?_ _ _ ⟨_, rfl, rfl⟩;
            rintro $(← idss 1) $(← idss 2) ⟨$(← idss 3), $(← idss 4), $(← idss 5)⟩)
          liftMetaTactic fun g => return [← g.clear f.fvarId!]
    for h : n in [6 : ids.size] do
      let name := ids[n]
      logWarningAt name m!"unused name: {name}"

end Mathlib.Tactic.MvBisim

namespace MvQPF

open TypeVec MvPFunctor

open MvFunctor (LiftP LiftR)

variable {n : ℕ} {F : TypeVec.{u} (n + 1) → Type u} [q : MvQPF F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant0b3332c4cb76350f1945d694567e891313a8ef5564b7181428a46cadcea8942d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant0b3332c4cb76350f1945d694567e891313a8ef5564b7181428a46cadcea8942d.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f56d7aaaedfaf2691bd6946557b0cbfd67a9c57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
