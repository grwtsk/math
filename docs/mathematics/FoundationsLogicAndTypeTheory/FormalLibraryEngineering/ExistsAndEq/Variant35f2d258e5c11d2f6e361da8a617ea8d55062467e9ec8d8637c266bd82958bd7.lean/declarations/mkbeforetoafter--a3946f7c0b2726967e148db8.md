# mkBeforeToAfter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19bfc4f37e597c60c97afb3e5d3db5884d8913754bcbf04790ce0553b7f6b1fd",
  "kind": "def",
  "lexical_name": "mkBeforeToAfter",
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
  "slug": "mkbeforetoafter--a3946f7c0b2726967e148db8",
  "source": {
    "blob": "35b2a2071b9d3b88e9247b3ac0e2bfdb0ed43f60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 261,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3946f7c0b2726967e148db8fb89fa5912d43c528d49f8ec821d71c74e146257",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19bfc4f37e597c60c97afb3e5d3db5884d8913754bcbf04790ce0553b7f6b1fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def mkBeforeToAfter {u : Level} {α : Q(Sort u)} {p : Q($α → Prop)}
    {P' : Q(Prop)} (fvars : List VarQ) (path : Path) :
    MetaM <| Q((∃ a, $p a) → $P') := do
  withLocalDeclQ .anonymous .default q(∃ a, $p a) fun h => do
  withLocalDeclQ .anonymous .default q($α) fun a => do
  withLocalDeclQ .anonymous .default q($p $a) fun ha => do
    let pf1 : Q($P') ← destruct ha fvars path [] fun leaves ⟨hEqType, hEq⟩ => do
      let ~q(@Eq.{u} $γ $x $y) := hEqType | panic! "the end of the path is not an equation"
      -- the equation is a local hypothesis, so `substCore` applies to it directly;
      -- for `a' = a` the variable to eliminate is on the right-hand side
      let goal ← mkFreshExprSyntheticOpaqueMVar P'
      let (fvarSubst, goal') ← substCore goal.mvarId! hEq.fvarId! (symm := x != a)
      goal'.withContext do
        let leaves : List HypQ ← leaves.mapM fun ⟨_, leaf⟩ => do
          let e := fvarSubst.apply leaf
          return ⟨← inferType e, e⟩
        goal'.assign (← construct (goal := P') fvars path.forResult leaves)
      instantiateMVars goal
    let pf2 : Q(∀ a : $α, $p a → $P') ← mkLambdaFVars #[a, ha] pf1
    let pf3 : Q($P') := q(Exists.elim $h $pf2)
    mkLambdaFVars #[h] pf3

/-- Generates a proof of `P' → ∃ a, p a`. We assume that `fvars = [f₁, ..., fₙ]` are free variables
and `P' = ∃ f₁ ... fₙ, newBody`, and `path` leads to `a = a'` in `∃ a, p a`.

The proof follows the following structure:
```
example (f : β → α) {P Q : β → Prop} :
    (∃ b c, P b ∧ (f c = f c ∧ Q c) ∧ Q b) → ∃ x b, P b ∧ (∃ c, f c = x ∧ Q c) ∧ Q b := by
  intro h₁
  -- destruct the input following the path of the result (with all existsBody moved left):
  -- existsBody, existsBody, andRight, andLeft, andLeft
  -- obtain ⟨e1, e2, a1, ⟨_, a3⟩, a2⟩ := h₁
  refine
    h₁.elim fun e1 h₂ ↦           -- existsBody
    h₂.elim fun e2 h₃ ↦           -- existsBody
    h₃.elim fun a1 h₄ ↦           -- andRight
    h₄.elim fun h₅ a2 ↦           -- andLeft
    h₅.elim fun _ a3 ↦ ?_         -- andLeft
  -- construct the output following the path: existsBody, andRight, andLeft, existsBody, andLeft
  -- exact ⟨f e2, e1, a1, ⟨e2, rfl, a3⟩, a2⟩
  refine Exists.intro (f e2) ?_   -- `a'`
  refine Exists.intro e1 ?_       -- existsBody
  refine And.intro a1 ?_          -- andRight
  refine And.intro ?_ a2          -- andLeft
  refine Exists.intro e2 ?_       -- existsBody
  refine And.intro ?_ a3          -- andLeft
  exact rfl
``` -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35b2a2071b9d3b88e9247b3ac0e2bfdb0ed43f60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
