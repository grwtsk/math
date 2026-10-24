# signedTypeI_absoluteTypeII_to_squarefreeGCDBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4edb92a8-2266-291c-ca47-9344bbbeedb8",
  "kind": "theorem",
  "lexical_name": "signedTypeI_absoluteTypeII_to_squarefreeGCDBound",
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
  "slug": "signedtypei-absolutetypeii-to-squarefreegcdbound--4713c41dcf260a39f5cf3c07",
  "source": {
    "blob": "3850d5ace477943031d8c81a97a8628652b60096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 686,
    "line": 614,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4713c41dcf260a39f5cf3c07f2407640d1a3074193b7a86f29024e8d612aa490",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4edb92a8-2266-291c-ca47-9344bbbeedb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedTypeI_absoluteTypeII_to_squarefreeGCDBound
    (hI : SevenEighthsBoundaryMinimalSignedLowGCDTypeIBound)
    (hII : SevenEighthsBoundaryMinimalAbsoluteHighGCDTypeIIBound) :
    SevenEighthsBoundaryMinimalMobiusLogSquarefreeGCDBound := by
  intro hgraded
  rcases hI hgraded with ⟨CI, hCI, jI, hIbound⟩
  rcases hII hgraded with ⟨CII, hCII, jII, hIIbound⟩
  refine ⟨CI + CII, add_nonneg hCI hCII, max jI jII, ?_⟩
  intro j hj m hm0 hm1
  have hjI : jI ≤ j :=
    (Nat.le_max_left jI jII).trans hj
  have hjII : jII ≤ j :=
    (Nat.le_max_right jI jII).trans hj
  let Y :=
    sevenEighthsMobiusLogTypeITypeIICutoff
      (dyadicScale j)
  have hhigh :
      nonAliasingFejerMobiusLogHighGCDAggregate
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m Y
        ≤
      nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m Y :=
    nonAliasingFejerMobiusLogHighGCDAggregate_le_absolute
      (sevenEighthsBoundaryMinimalFejerCutoff_nonaliasing j)
      hm0 hm1
  rw [nonAliasingFejerMobiusLogSquarefreeGCDAggregate_eq_low_add_high
    (dyadicScale j)
    (sevenEighthsBoundaryMinimalFejerCutoff j)
    m Y]
  calc
    nonAliasingFejerMobiusLogLowGCDAggregate
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m Y +
        nonAliasingFejerMobiusLogHighGCDAggregate
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m Y
      ≤
    nonAliasingFejerMobiusLogLowGCDAggregate
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m Y +
        nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m Y := by
            exact add_le_add_left hhigh _
    _ ≤
    CI *
          Real.rpow (dyadicScale j : ℝ)
            ((3 : ℝ) / 2) *
          (Real.log (dyadicScale j : ℝ))^4 +
      CII *
          Real.rpow (dyadicScale j : ℝ)
            ((3 : ℝ) / 2) *
          (Real.log (dyadicScale j : ℝ))^4 := by
            exact add_le_add
              (hIbound j hjI m hm0 hm1)
              (hIIbound j hjII m hm0 hm1)
    _ =
    (CI + CII) *
      Real.rpow (dyadicScale j : ℝ)
        ((3 : ℝ) / 2) *
      (Real.log (dyadicScale j : ℝ))^4 := by
        ring

/-- The same two exact inputs reach the existing seven-eighths finite
partial-prime discrepancy target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3850d5ace477943031d8c81a97a8628652b60096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
