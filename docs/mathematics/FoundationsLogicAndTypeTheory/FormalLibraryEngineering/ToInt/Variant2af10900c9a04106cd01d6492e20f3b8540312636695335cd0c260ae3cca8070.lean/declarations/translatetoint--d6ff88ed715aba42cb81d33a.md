# translateToInt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c205d19b6494b4e485449ae95ca0c8cbc682ca24e8e6c088bbe8fdc9e08b673",
  "kind": "def",
  "lexical_name": "translateToInt",
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
  "slug": "translatetoint--d6ff88ed715aba42cb81d33a",
  "source": {
    "blob": "9ce03302160114787f29b91166cafdda15170d90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6ff88ed715aba42cb81d33a82e4f9ddc2e39e2637e96ce51d044cceba9f8fd6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c205d19b6494b4e485449ae95ca0c8cbc682ca24e8e6c088bbe8fdc9e08b673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def translateToInt {u : Lean.Level} (type : Q(Type u)) (inst : Q(LinearOrder $type))
    (facts : Array AtomicFact) :
    AtomM <| Std.HashMap ℕ Q(ℤ) × Array AtomicFact := do
  let mut idxToAtom : Std.HashMap Nat Q($type) := ∅
  for atom in (← get).atoms do
    -- `atoms` contains atoms for all types we are working on, so here we need to filter only
    -- those of type `type`
    if ← withReducible <| isDefEq type (← inferType atom) then
      idxToAtom := idxToAtom.insert idxToAtom.size atom
  haveI nE : Q(ℕ) := mkNatLitQ idxToAtom.size
  haveI finFun : Q(Fin $nE → $type) :=
    ← mkFinFun (Array.ofFn fun (n : Fin idxToAtom.size) => idxToAtom[n]!)
  let toFinUnsafe : ℕ → Q(Fin $nE) := fun k =>
    haveI kE := mkNatLitQ k
    haveI heq : decide ($kE < $nE) =Q true := ⟨⟩
    q(⟨$kE, of_decide_eq_true $heq⟩)
  return Prod.snd <| facts.foldl (fun (curr, map, facts) fact =>
    match fact with
    | .eq lhs rhs prf =>
      (curr, map, facts.push (
        haveI lhsFin := toFinUnsafe lhs
        haveI rhsFin := toFinUnsafe rhs
        haveI prfQ : Q($finFun $lhsFin = $finFun $rhsFin) := prf
        .eq lhs rhs q((toInt_eq_toInt $finFun $lhsFin $rhsFin).mpr $prfQ)
      ))
    | .ne lhs rhs prf =>
      (curr, map, facts.push (
        haveI lhsFin := toFinUnsafe lhs
        haveI rhsFin := toFinUnsafe rhs
        haveI prfQ : Q($finFun $lhsFin ≠ $finFun $rhsFin) := prf
        .ne lhs rhs q((toInt_ne_toInt $finFun $lhsFin $rhsFin).mpr $prfQ)
      ))
    | .le lhs rhs prf =>
      (curr, map, facts.push (
        haveI lhsFin := toFinUnsafe lhs
        haveI rhsFin := toFinUnsafe rhs
        haveI prfQ : Q($finFun $lhsFin ≤ $finFun $rhsFin) := prf
        .le lhs rhs q((toInt_le_toInt $finFun $lhsFin $rhsFin).mpr $prfQ)
      ))
    | .lt lhs rhs prf =>
      (curr, map, facts.push (
        haveI lhsFin := toFinUnsafe lhs
        haveI rhsFin := toFinUnsafe rhs
        haveI prfQ : Q($finFun $lhsFin < $finFun $rhsFin) := prf
        .lt lhs rhs q((toInt_lt_toInt $finFun $lhsFin $rhsFin).mpr $prfQ)
      ))
    | .nle lhs rhs prf =>
      (curr, map, facts.push (
        haveI lhsFin := toFinUnsafe lhs
        haveI rhsFin := toFinUnsafe rhs
        haveI prfQ : Q(¬$finFun $lhsFin ≤ $finFun $rhsFin) := prf
        .nle lhs rhs q((toInt_nle_toInt $finFun $lhsFin $rhsFin).mpr $prfQ)
      ))
    | .nlt lhs rhs prf =>
      (curr, map, facts.push (
        haveI lhsFin := toFinUnsafe lhs
        haveI rhsFin := toFinUnsafe rhs
        haveI prfQ : Q(¬$finFun $lhsFin < $finFun $rhsFin) := prf
        .nlt lhs rhs q((toInt_nlt_toInt $finFun $lhsFin $rhsFin).mpr $prfQ)
      ))
    | .isBot _
    | .isTop _ => (curr, map, facts)
    | .isSup lhs rhs val =>
      haveI lhsFin := toFinUnsafe lhs
      haveI rhsFin := toFinUnsafe rhs
      haveI valFin := toFinUnsafe val
      haveI heq : max («$finFun» «$lhsFin») («$finFun» «$rhsFin») =Q «$finFun» «$valFin» := ⟨⟩
      (curr + 1, map.insert curr q(toInt $finFun $lhsFin ⊔ toInt $finFun $rhsFin),
        (facts.push (.isSup lhs rhs curr)).push (.eq curr val
          q((toInt_sup_toInt_eq_toInt $finFun $lhsFin $rhsFin $valFin).mpr $heq)
        )
      )
    | .isInf lhs rhs val =>
      haveI lhsFin := toFinUnsafe lhs
      haveI rhsFin := toFinUnsafe rhs
      haveI valFin := toFinUnsafe val
      haveI heq : min («$finFun» «$lhsFin») («$finFun» «$rhsFin») =Q «$finFun» «$valFin» := ⟨⟩
      (curr + 1, map.insert curr q(toInt $finFun $lhsFin ⊓ toInt $finFun $rhsFin),
        (facts.push (.isInf lhs rhs curr)).push (.eq curr val
          q((toInt_inf_toInt_eq_toInt $finFun $lhsFin $rhsFin $valFin).mpr $heq)
        )
      ))
    (idxToAtom.size, idxToAtom.map fun k _ =>
      haveI kFin := toFinUnsafe k
      q(toInt $finFun $kFin), Array.emptyWithCapacity idxToAtom.size)

end Mathlib.Tactic.Order.ToInt

export Mathlib.Tactic.Order.ToInt (translateToInt)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ce03302160114787f29b91166cafdda15170d90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
