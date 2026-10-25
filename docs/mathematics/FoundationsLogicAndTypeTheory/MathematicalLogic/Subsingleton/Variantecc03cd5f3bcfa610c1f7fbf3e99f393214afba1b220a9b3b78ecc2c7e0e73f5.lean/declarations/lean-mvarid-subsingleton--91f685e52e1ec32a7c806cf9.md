# Lean.MVarId.subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:110641c168b97957afd23722060b911a8c9f3ebc8d48ee556f9bd9c1ed2949a7",
  "kind": "def",
  "lexical_name": "Lean.MVarId.subsingleton",
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
  "slug": "lean-mvarid-subsingleton--91f685e52e1ec32a7c806cf9",
  "source": {
    "blob": "c5d461075f406acd1e452bde439c00ac00d6ef70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantecc03cd5f3bcfa610c1f7fbf3e99f393214afba1b220a9b3b78ecc2c7e0e73f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91f685e52e1ec32a7c806cf9f84856403d059a4af9da61bc1dcdd13230c31805",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantecc03cd5f3bcfa610c1f7fbf3e99f393214afba1b220a9b3b78ecc2c7e0e73f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:110641c168b97957afd23722060b911a8c9f3ebc8d48ee556f9bd9c1ed2949a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def Lean.MVarId.subsingleton (g : MVarId) (insts : Array (Term × AbstractMVarsResult) := #[]) :
    MetaM Unit := commitIfNoEx do
  let g ← g.heqOfEq
  g.withContext do
    let tgt ← whnfR (← g.getType)
    if let some (ty, x, y) := tgt.eq? then
      -- Proof irrelevance. This is not necessary since `rfl` suffices,
      -- but propositions are subsingletons so we may as well.
      if ← Meta.isProp ty then
        g.assign <| mkApp3 (.const ``proof_irrel []) ty x y
        return
      -- Try `Subsingleton.elim`
      let u ← getLevel ty
      try
        let inst ← synthSubsingletonInst ty insts
        g.assign <| mkApp4 (.const ``Subsingleton.elim [u]) ty inst x y
        return
      catch _ => pure ()
      -- Try `lawful_beq_subsingleton`
      let ty' ← whnfR ty
      if ty'.isAppOfArity ``BEq 1 then
        let α := ty'.appArg!
        try
          let some u' := u.dec | failure
          let xInst ← withNewMCtxDepth <| Meta.synthInstance <| mkApp2 (.const ``LawfulBEq [u']) α x
          let yInst ← withNewMCtxDepth <| Meta.synthInstance <| mkApp2 (.const ``LawfulBEq [u']) α y
          g.assign <| mkApp5 (.const ``lawful_beq_subsingleton [u']) α x y xInst yInst
          return
        catch _ => pure ()
      throwError "\
        tactic 'subsingleton' could not prove equality since it could not synthesize\
          {indentD (← mkSubsingleton ty)}"
    else if let some (xTy, x, yTy, y) := tgt.heq? then
      -- The HEq version of proof irrelevance.
      if ← (Meta.isProp xTy <&&> Meta.isProp yTy) then
        g.assign <| mkApp4 (.const ``proof_irrel_heq []) xTy yTy x y
        return
      throwError "tactic 'subsingleton' could not prove heterogeneous equality"
    throwError "tactic 'subsingleton' failed, goal is neither an equality nor a \
      heterogeneous equality"

namespace Mathlib.Tactic

/--
The `subsingleton` tactic tries to prove a goal of the form `x = y` or `HEq x y`
using the fact that the types involved are *subsingletons*
(a type with exactly zero or one terms).
To a first approximation, it does `apply Subsingleton.elim`.
As a nicety, `subsingleton` first runs the `intros` tactic.

- If the goal is an equality, it either closes the goal or fails.
- `subsingleton [inst1, inst2, ...]` can be used to add additional `Subsingleton` instances
  to the local context. This can be more flexible than
  `have := inst1; have := inst2; ...; subsingleton` since the tactic does not require that
  all placeholders be solved for.

Techniques the `subsingleton` tactic can apply:
- proof irrelevance
- heterogeneous proof irrelevance (via `proof_irrel_heq`)
- using `Subsingleton` (via `Subsingleton.elim`)
- proving `BEq` instances are equal if they are both lawful (via `lawful_beq_subsingleton`)

### Properties

The tactic is careful not to accidentally specialize `Sort _` to `Prop`,
avoiding the following surprising behavior of `apply Subsingleton.elim`:
```lean
example (α : Sort _) (x y : α) : x = y := by apply Subsingleton.elim
```
The reason this `example` goes through is that
it applies the `∀ (p : Prop), Subsingleton p` instance,
specializing the universe level metavariable in `Sort _` to `0`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantecc03cd5f3bcfa610c1f7fbf3e99f393214afba1b220a9b3b78ecc2c7e0e73f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantecc03cd5f3bcfa610c1f7fbf3e99f393214afba1b220a9b3b78ecc2c7e0e73f5.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5d461075f406acd1e452bde439c00ac00d6ef70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
