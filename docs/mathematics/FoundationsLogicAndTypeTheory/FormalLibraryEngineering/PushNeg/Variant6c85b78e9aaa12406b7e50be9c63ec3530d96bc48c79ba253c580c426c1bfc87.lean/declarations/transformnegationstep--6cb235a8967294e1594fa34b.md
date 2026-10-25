# transformNegationStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30a1b53896a1a275709fa1d4073f3602e7b5332b7d3017dea0fa7073b564b048",
  "kind": "def",
  "lexical_name": "transformNegationStep",
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
  "slug": "transformnegationstep--6cb235a8967294e1594fa34b",
  "source": {
    "blob": "ba7507706cff9cbe195fa758dfbb78389bef1e1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cb235a8967294e1594fa34bf44c72b372020a677c87dda983d701e79e1ff802",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30a1b53896a1a275709fa1d4073f3602e7b5332b7d3017dea0fa7073b564b048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transformNegationStep (e : Expr) : SimpM (Option Simp.Step) := do
  -- Wrapper around `Simp.Step.visit`
  let mkSimpStep (e : Expr) (pf : Expr) : Simp.Step :=
    Simp.Step.visit { expr := e, proof? := some pf }
  -- Try applying the inequality lemma and verify that we do get a defeq type.
  -- Sometimes there might be the wrong LinearOrder available!
  let handleIneq (e₁ e₂ : Expr) (notThm : Name) : SimpM (Option Simp.Step) := do
    try
      -- Allowed to fail if it can't synthesize an instance:
      let thm ← mkAppM notThm #[e₁, e₂]
      let some (_, lhs, rhs) := (← inferType thm).eq? | failure -- this should never fail
      -- Make sure the inferred instances are right:
      guard <| ← isDefEq e lhs
      return some <| mkSimpStep rhs thm
    catch _ => return none
  let e_whnf ← whnfR e
  let some ex := e_whnf.not? | return Simp.Step.visit { expr := e }
  let ex := (← instantiateMVars ex).cleanupAnnotations
  match ex.getAppFnArgs with
  | (``Not, #[e]) =>
      return mkSimpStep e (← mkAppM ``not_not_eq #[e])
  | (``And, #[p, q]) =>
      match ← getBoolOption `push_neg.use_distrib with
      | false => return mkSimpStep (.forallE `_ p (mkNot q) default) (←mkAppM ``not_and_eq #[p, q])
      | true  => return mkSimpStep (mkOr (mkNot p) (mkNot q)) (←mkAppM ``not_and_or_eq #[p, q])
  | (``Or, #[p, q]) =>
      return mkSimpStep (mkAnd (mkNot p) (mkNot q)) (←mkAppM ``not_or_eq #[p, q])
  | (``Iff, #[p, q]) =>
      return mkSimpStep (mkOr (mkAnd p (mkNot q)) (mkAnd (mkNot p) q)) (←mkAppM ``not_iff #[p, q])
  | (``Eq, #[_ty, e₁, e₂]) =>
      return Simp.Step.visit { expr := ← mkAppM ``Ne #[e₁, e₂] }
  | (``Ne, #[_ty, e₁, e₂]) =>
      return mkSimpStep (← mkAppM ``Eq #[e₁, e₂]) (← mkAppM ``not_ne_eq #[e₁, e₂])
  | (``LE.le, #[_ty, _inst, e₁, e₂]) => handleIneq e₁ e₂ ``not_le_eq
  | (``LT.lt, #[_ty, _inst, e₁, e₂]) => handleIneq e₁ e₂ ``not_lt_eq
  | (``GE.ge, #[_ty, _inst, e₁, e₂]) => handleIneq e₁ e₂ ``not_ge_eq
  | (``GT.gt, #[_ty, _inst, e₁, e₂]) => handleIneq e₁ e₂ ``not_gt_eq
  | (``Exists, #[_, .lam n typ bo bi]) =>
      return mkSimpStep (.forallE n typ (mkNot bo) bi)
                        (← mkAppM ``not_exists_eq #[.lam n typ bo bi])
  | (``Exists, #[_, _]) =>
      return none
  | _ => match ex with
          | .forallE name ty body binfo => do
              if (← isProp ty) && !body.hasLooseBVars then
                return mkSimpStep (← mkAppM ``And #[ty, mkNot body])
                  (← mkAppM ``not_implies_eq #[ty, body])
              else
                let body' : Expr := .lam name ty (mkNot body) binfo
                let body'' : Expr := .lam name ty body binfo
                return mkSimpStep (← mkAppM ``Exists #[body']) (← mkAppM ``not_forall_eq #[body''])
          | _ => return none

/-- Recursively push negations at the top level of the current expression. This is needed
to handle e.g. triple negation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba7507706cff9cbe195fa758dfbb78389bef1e1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
