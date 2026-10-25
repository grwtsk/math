# itautoCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1855b8b2156f3cb332a7a38d22e9aa1fde009c9e6f49ead54d79257c571adb03",
  "kind": "def",
  "lexical_name": "itautoCore",
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
  "slug": "itautocore--c1e5af39682ce6471bad46ed",
  "source": {
    "blob": "26babd9571a37e1ff290bd840ed4de9b4f580447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 650,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant4fd7ead4a03fccdb66342351f5d6f9fabaeac52983d5b4de9c050830acec33ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1e5af39682ce6471bad46ed63e27072bd3db500285d309b80aa99a8f847d6d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant4fd7ead4a03fccdb66342351f5d6f9fabaeac52983d5b4de9c050830acec33ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1855b8b2156f3cb332a7a38d22e9aa1fde009c9e6f49ead54d79257c571adb03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def itautoCore (g : MVarId)
    (useDec useClassical : Bool) (extraDec : Array Expr) : MetaM Unit := do
  AtomM.run (← getTransparency) do
    let mut hs := mkNameMap Expr
    let t ← g.getType
    let (g, t) ← if ← isProp t then pure (g, ← reify t) else pure (← g.exfalso, .false)
    let mut Γ : Except (IProp → Proof) ITauto.Context := .ok TreeMap.empty
    let mut decs := TreeMap.empty
    for ldecl in ← getLCtx do
      if !ldecl.isImplementationDetail then
        let e := ldecl.type
        if ← isProp e then
          let A ← reify e
          let n := ldecl.fvarId.name
          hs := hs.insert n (Expr.fvar ldecl.fvarId)
          Γ := do (← Γ).add A (.hyp n)
        else
          if let .const ``Decidable _ := e.getAppFn then
            let p : Q(Prop) := e.appArg!
            if useDec then
              let A ← reify p
              decs := decs.insert A (false, Expr.fvar ldecl.fvarId)
    let addDec (force : Bool) (decs : TreeMap IProp (Bool × Expr) IProp.cmp) (e : Q(Prop)) := do
      let A ← reify e
      let dec_e := q(Decidable $e)
      let res ← trySynthInstance q(Decidable $e)
      if !(res matches .some _) && !useClassical then
        if force then _ ← synthInstance dec_e
        pure decs
      else
        pure (decs.insert A (match res with | .some e => (false, e) | _ => (true, e)))
    decs ← extraDec.foldlM (addDec true) decs
    if useDec then
      let mut decided := TreeSet.empty (cmp := compare)
      if let .ok Γ' := Γ then
        decided := Γ'.foldl (init := decided) fun m p _ =>
          match p with
          | .var i => m.insert i
          | .not (.var i) => m.insert i
          | _ => m
      let ats := (← get).atoms
      for e in ats, i in [0:ats.size] do
        if !decided.contains i then
          decs ← addDec false decs e
    for (A, cl, pf) in decs do
      let n ← mkFreshId
      hs := hs.insert n pf
      Γ := return (← Γ).insert (A.or A.not) (.em cl n)
    let p : Proof :=
      match Γ with
      | .ok Γ => (prove Γ t 0).1.2
      | .error p => p t
    applyProof g hs p

open Elab Tactic

/-- A decision procedure for intuitionistic propositional logic. Unlike `finish` and `tauto!` this
tactic never uses the law of excluded middle (without the `!` option), and the proof search is
tailored for this use case. (`itauto!` will work as a classical SAT solver, but the algorithm is
not very good in this situation.)

```lean
example (p : Prop) : ¬ (p ↔ ¬ p) := by itauto
```

`itauto [a, b]` will additionally attempt case analysis on `a` and `b` assuming that it can derive
`Decidable a` and `Decidable b`. `itauto *` will case on all decidable propositions that it can
find among the atomic propositions, and `itauto! *` will case on all propositional atoms.
*Warning:* This can blow up the proof search, so it should be used sparingly.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant4fd7ead4a03fccdb66342351f5d6f9fabaeac52983d5b4de9c050830acec33ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant4fd7ead4a03fccdb66342351f5d6f9fabaeac52983d5b4de9c050830acec33ea.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26babd9571a37e1ff290bd840ed4de9b4f580447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
