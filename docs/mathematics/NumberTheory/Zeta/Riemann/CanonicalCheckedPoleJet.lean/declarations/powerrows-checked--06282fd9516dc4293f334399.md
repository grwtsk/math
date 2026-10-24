# powerRows_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a85cc5b6-ec5b-ea72-68df-84805d377789",
  "kind": "theorem",
  "lexical_name": "powerRows_checked",
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
  "slug": "powerrows-checked--06282fd9516dc4293f334399",
  "source": {
    "blob": "3f43c73eddbf429fd153b65e4e48005250db4ce3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 31,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06282fd9516dc4293f3343991f582432796aa3697a11b1ee3f410726482bb7c4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a85cc5b6-ec5b-ea72-68df-84805d377789`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powerRows_checked {c : Coordinates} {p : RationalPoleValue.Parameters} {k : ℕ}
    (h : RationalPowerValue.check c (k : ℚ) (RationalPoleValue.resolution p k) = true) :
    CheckedIntegerPower.evaluate c (k : ℚ) (RationalPoleValue.resolution p k)
      (powerRows c p k) = some (RationalPoleValue.powers c p k) := by
  let d := RationalPoleValue.resolution p k
  let x := CheckedIntegerPower.start c (k : ℚ) d
  have hw0 := IntegerSquareWitness.walk_rowsFor d.bits d.squarings x
  have hw : IntegerSquareWitness.walk d.bits d.squarings x (powerRows c p k) =
      some (run (fun _ z => IntegerDyadicSquare.step d.bits z) 0 d.squarings x) := by
    simpa only [powerRows,d,x] using hw0
  apply (CheckedIntegerPower.evaluate_eq_some_iff _ _ _ _ _).mpr
  refine ⟨h,run (fun _ z => IntegerDyadicSquare.step d.bits z) 0 d.squarings x,hw,?_⟩
  calc
    CheckedIntegerPower.finish c (k : ℚ) d
        (run (fun _ z => IntegerDyadicSquare.step d.bits z) 0 d.squarings x) =
        IntegerExpStateFold.powerValue c (k : ℚ) d :=
      CheckedIntegerPower.finish_eq_reference hw
    _ = RationalExpStateFold.powerValue c (k : ℚ) d :=
      IntegerExpStateFold.powerValue_eq c (k : ℚ) d
    _ = RationalPowerValue.valueBall c (k : ℚ) d :=
      RationalExpStateFold.powerValue_eq c (k : ℚ) d
    _ = RationalPoleValue.powers c p k := by
      rfl

/-- Consecutive source bases, with no independently editable labels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f43c73eddbf429fd153b65e4e48005250db4ce3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
