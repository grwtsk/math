# reduceCoefficientwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd7da6df8a80604b6591c1bae0971946a95c429e7a473de3765afae5638cee03",
  "kind": "def",
  "lexical_name": "reduceCoefficientwise",
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
  "slug": "reducecoefficientwise--01d45ace5f488f12294ea3a3",
  "source": {
    "blob": "43836e28bca10b34099d788c97d2f1ae074d6a6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 485,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01d45ace5f488f12294ea3a35ed6c93a1dd2077775527568fc21581e0cfd130b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd7da6df8a80604b6591c1bae0971946a95c429e7a473de3765afae5638cee03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def reduceCoefficientwise {R : Q(Type u)} {_ : Q(AddCommMonoid $M)} {_ : Q(Semiring $R)}
    (iRM : Q(Module $R $M)) (l₁ l₂ : qNF R M) :
    MetaM (List MVarId × Q(NF.eval $(l₁.toNF) = NF.eval $(l₂.toNF))) := do
  match l₁, l₂ with
  /- if both empty, return a `rfl` proof that `(0:M) = 0` -/
  | [], [] =>
    let pf : Q(NF.eval $(l₁.toNF) = NF.eval $(l₁.toNF)) := q(rfl)
    pure ([], pf)
  /- if one of the lists is empty and the other one is not, recurse down the nonempty one,
    forming goals that each of the listed coefficients is equal to
    zero -/
  | [], ((a, x), _) ::ᵣ L =>
    let mvar : Q((0:$R) = $a) ← mkFreshExprMVar q((0:$R) = $a)
    let (mvars, pf) ← reduceCoefficientwise iRM [] L
    pure (mvar.mvarId! :: mvars, (q(NF.eq_const_cons $x $mvar $pf):))
  | ((a, x), _) ::ᵣ L, [] =>
    let mvar : Q($a = (0:$R)) ← mkFreshExprMVar q($a = (0:$R))
    let (mvars, pf) ← reduceCoefficientwise iRM L []
    pure (mvar.mvarId! :: mvars, (q(NF.eq_cons_const $x $mvar $pf):))
  /- if both lists are nonempty, then deal with the numerically-smallest term in either list,
    forming a goal that it is equal to zero (if it appears in only one list) or that its
    coefficients in the two lists are the same (if it appears in both lists); then recurse -/
  | ((a₁, x₁), k₁) ::ᵣ L₁, ((a₂, x₂), k₂) ::ᵣ L₂ =>
    if k₁ < k₂ then
      let mvar : Q($a₁ = (0:$R)) ← mkFreshExprMVar q($a₁ = (0:$R))
      let (mvars, pf) ← reduceCoefficientwise iRM L₁ l₂
      pure (mvar.mvarId! :: mvars, (q(NF.eq_cons_const $x₁ $mvar $pf):))
    else if k₁ = k₂ then
      let mvar : Q($a₁ = $a₂) ← mkFreshExprMVar q($a₁ = $a₂)
      let (mvars, pf) ← reduceCoefficientwise iRM L₁ L₂
      pure (mvar.mvarId! :: mvars, (q(NF.eq_cons_cons $x₁ $mvar $pf):))
    else
      let mvar : Q((0:$R) = $a₂) ← mkFreshExprMVar q((0:$R) = $a₂)
      let (mvars, pf) ← reduceCoefficientwise iRM l₁ L₂
      pure (mvar.mvarId! :: mvars, (q(NF.eq_const_cons $x₂ $mvar $pf):))

/-- Given a goal which is an equality in a type `M` (with `M` an `AddCommMonoid`), parse the LHS and
RHS of the goal as linear combinations of `M`-atoms over some semiring `R`, and reduce the goal to
the respective equalities of the `R`-coefficients of each atom.

This is an auxiliary function which produces slightly awkward goals in `R`; they are later cleaned
up by the function `Mathlib.Tactic.Module.postprocess`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43836e28bca10b34099d788c97d2f1ae074d6a6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
