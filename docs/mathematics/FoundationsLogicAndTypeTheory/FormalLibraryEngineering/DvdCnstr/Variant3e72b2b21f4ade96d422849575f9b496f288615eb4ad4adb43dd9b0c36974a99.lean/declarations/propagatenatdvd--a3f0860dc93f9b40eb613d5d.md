# propagateNatDvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47f6c697173135210702ed9ad371b722ed2f7f8713bb2738e88602c3146f9138",
  "kind": "def",
  "lexical_name": "propagateNatDvd",
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
  "slug": "propagatenatdvd--a3f0860dc93f9b40eb613d5d",
  "source": {
    "blob": "4c4131f7464dae196bc4945a17a9564c62438d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant3e72b2b21f4ade96d422849575f9b496f288615eb4ad4adb43dd9b0c36974a99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3f0860dc93f9b40eb613d5d40ca99f69f83b6125dd0e879ff6b2b1fd0d266a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant3e72b2b21f4ade96d422849575f9b496f288615eb4ad4adb43dd9b0c36974a99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47f6c697173135210702ed9ad371b722ed2f7f8713bb2738e88602c3146f9138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagateNatDvd (e : Expr) : GoalM Unit := do
  let_expr Dvd.dvd _ inst d₀ a := e | return ()
  unless (← Structural.isInstDvdNat inst) do return ()
  let some d ← getNatValue? d₀
    | reportIssue! "non-linear divisibility constraint found{indentExpr e}"; return ()
  if (← isEqTrue e) then
    let (d', h₁) ← natToInt d₀
    let (a', h₂) ← natToInt a
    let gen ← getGeneration e
    let e' ← toLinearExpr a' gen
    let p := e'.norm
    let thm := mkApp6 (mkConst ``Nat.ToInt.of_dvd) d₀ a d' a' h₁ h₂
    let c := { d, p, h := .coreOfNat e thm d e' : DvdCnstr }
    c.assertCore
  else if (← isEqFalse e) then
    pushNewFact <| mkApp3 (mkConst ``Nat.emod_pos_of_not_dvd) d₀ a (mkOfEqFalseCore e (← mkEqFalseProof e))

builtin_grind_propagator propagateDvd ↓Dvd.dvd := fun e => do
  unless (← getConfig).lia do return ()
  let_expr Dvd.dvd α _ _ _ ← e | return ()
  if α.isConstOf ``Nat then
    propagateNatDvd e
  else
    propagateIntDvd e

end Lean.Meta.Grind.Arith.Cutsat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant3e72b2b21f4ade96d422849575f9b496f288615eb4ad4adb43dd9b0c36974a99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant3e72b2b21f4ade96d422849575f9b496f288615eb4ad4adb43dd9b0c36974a99.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c4131f7464dae196bc4945a17a9564c62438d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
