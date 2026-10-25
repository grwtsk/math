# matchDIteDecidableCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0186c0bea3b80aa309f747a1fe923a18fcf85d40e8561c3c4dc4631d8ae322b5",
  "kind": "def",
  "lexical_name": "matchDIteDecidableCongr",
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
  "slug": "matchditedecidablecongr--4a323a3bf4a7b8a30e4f766f",
  "source": {
    "blob": "638b27269bcce232d6c9cdff393ab48f7bb039a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a323a3bf4a7b8a30e4f766f0e70dd4606db31f616645b981cb957fc586d546b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0186c0bea3b80aa309f747a1fe923a18fcf85d40e8561c3c4dc4631d8ae322b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def matchDIteDecidableCongr (f α c inst a b c' h inst' : Expr) (fallback : SimpM Result) : SimpM Result := do
  match_expr inst' with
  | Decidable.isTrue _ hp =>
    let hp' := mkApp4 (mkConst ``Eq.mpr_prop) c c' h hp
    let a' ← share <| a.betaRev #[hp']
    return .step a' <| mkApp8 (mkConst ``Sym.dite_true_congr f.constLevels!) α c inst a b c' h hp
  | Decidable.isFalse _ hnp =>
    let hnp' := mkApp4 (mkConst ``Eq.mpr_not) c c' h hnp
    let b' ← share <| b.betaRev #[hnp']
    return .step b' <| mkApp8 (mkConst ``Sym.dite_false_congr f.constLevels!) α c inst a b c' h hnp
  | _ => fallback

/-- Simplify the `Decidable` instance, then try `simpDIteDecidable`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638b27269bcce232d6c9cdff393ab48f7bb039a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
