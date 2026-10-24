# actualFarPeriodicWork_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60fb6414-5d02-d0b1-46eb-6e6b65506e7b",
  "kind": "theorem",
  "lexical_name": "actualFarPeriodicWork_intervalIntegrable",
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
  "slug": "actualfarperiodicwork-intervalintegrable--5bcf0b444a4dd7d0c8a6a58b",
  "source": {
    "blob": "fbd94e6bee3ea86ee8fd95cc57bc83e6aeac4793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5fe4fcd678b6a5701542d8b5fc6b8232b71ab335e5e78d1352ad61d676403e79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bcf0b444a4dd7d0c8a6a58bc18203df574901370cdf7ea0c142e88aea7a37f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5fe4fcd678b6a5701542d8b5fc6b8232b71ab335e5e78d1352ad61d676403e79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60fb6414-5d02-d0b1-46eb-6e6b65506e7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFarPeriodicWork_intervalIntegrable {A l b r : ℝ} (hA : 91 ≤ A)
    (hl : (vaughanCutoff A : ℝ) ≤ l) (hlb : l ≤ b) (hr : actualTimeLower A ≤ r) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualPhysicalPeriodicPrefixRow A t l b) volume (actualTimeLower A) r := by
  have hA1 : 1 ≤ A := by linarith
  have ht0 : 0 ≤ actualTimeLower A :=
    Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA1)
  let C : ℝ := (32 / (3 * A)) *
    ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16) *
      Real.exp (r / 2) * Real.exp (-3 * Real.log l / 2)
  have hi : IntervalIntegrable (fun t => actualPhysicalPeriodicPrefixRow A t l b)
      volume (actualTimeLower A) r := by
    apply intervalIntegrable_iff.mpr
    have hb : ∀ᵐ t ∂volume.restrict (uIoc (actualTimeLower A) r),
        ‖actualPhysicalPeriodicPrefixRow A t l b‖ ≤ C := by
      rw [uIoc_of_le hr]
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
      rw [Real.norm_eq_abs]
      calc
        _ ≤ (32 / (3 * A)) *
            ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16) *
              Real.exp (t / 2) * Real.exp (-3 * Real.log l / 2) :=
          actualPhysicalPeriodicPrefixRow_abs_le hA (ht0.trans ht.1.le) hl hlb
        _ ≤ C := by
          dsimp [C]
          have he : Real.exp (t / 2) ≤ Real.exp (r / 2) :=
            Real.exp_le_exp.mpr (by linarith [ht.2])
          nlinarith [mul_nonneg (by positivity : 0 ≤ (32 / (3 * A)) *
            ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16))
              (sub_nonneg.mpr he)]
    exact Measure.integrableOn_of_bounded (by simp)
      (row_stronglyMeasurable (by linarith : 0 < A) hlb).aestronglyMeasurable hb
  exact hi.continuousOn_mul
    (actualAdjointTimePrimitive_absolutelyContinuous A 0 r hr).continuousOn

end
end FormalResearch.RiemannHypothesis.SourceActualFarPeriodicWorkDecay
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5fe4fcd678b6a5701542d8b5fc6b8232b71ab335e5e78d1352ad61d676403e79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5fe4fcd678b6a5701542d8b5fc6b8232b71ab335e5e78d1352ad61d676403e79.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbd94e6bee3ea86ee8fd95cc57bc83e6aeac4793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
