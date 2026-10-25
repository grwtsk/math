# discharge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc7650253ae4d179aed7119545678309178ef024c7a21882e7b75716514b0b21",
  "kind": "def",
  "lexical_name": "discharge",
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
  "slug": "discharge--8d1eff575e33af9a9e8e3abc",
  "source": {
    "blob": "52bf569939d8d84eba767df1161fd8d2433a0f39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d1eff575e33af9a9e8e3abc0258824e1acff7df23713ada1ea0a2d068571467",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc7650253ae4d179aed7119545678309178ef024c7a21882e7b75716514b0b21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def discharge (prop : Expr) : SimpM (Option Expr) :=
  withTraceNode `Tactic.field_simp (dischargerTraceMessage prop) do
    -- Discharge strategy 1: Use assumptions
    if let some r ← Simp.dischargeUsingAssumption? prop then
      return some r

    -- Discharge strategy 2: Normalize inequalities using NormNum
    let prop : Q(Prop) ← (do pure prop)
    let pf? ← match prop with
    | ~q(($e : $α) ≠ $b) =>
        try
          let res ← Mathlib.Meta.NormNum.derive prop
          match res with
          | .isTrue pf => pure (some pf)
          | _ => pure none
        catch _ =>
          pure none
    | _ => pure none
    if let some pf := pf? then return some pf

    -- Discharge strategy 3: Use positivity
    let pf? ←
      try some <$> Mathlib.Meta.Positivity.solve prop
      catch _ => pure none
    if let some pf := pf? then return some pf

    -- Discharge strategy 4: Use the simplifier
    Simp.withIncDischargeDepth do
      let ctx ← readThe Simp.Context
      let stats : Simp.Stats := { (← get) with }

      -- Porting note: mathlib3's analogous field_simp discharger `field_simp.ne_zero`
      -- does not explicitly call `simp` recursively like this. It's unclear to me
      -- whether this is because
      --   1) Lean 3 simp dischargers automatically call `simp` recursively. (Do they?),
      --   2) mathlib3 norm_num1 is able to handle any needed discharging, or
      --   3) some other reason?
      let ⟨simpResult, stats'⟩ ←
        simp prop ctx #[(← Simp.getSimprocs)]
          discharge stats
      set { (← get) with usedTheorems := stats'.usedTheorems, diag := stats'.diag }
      if simpResult.expr.isConstOf ``True then
        try
          return some (← mkOfEqTrue (← simpResult.getProof))
        catch _ =>
          return none
      else
        return none

@[inherit_doc discharge]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52bf569939d8d84eba767df1161fd8d2433a0f39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
