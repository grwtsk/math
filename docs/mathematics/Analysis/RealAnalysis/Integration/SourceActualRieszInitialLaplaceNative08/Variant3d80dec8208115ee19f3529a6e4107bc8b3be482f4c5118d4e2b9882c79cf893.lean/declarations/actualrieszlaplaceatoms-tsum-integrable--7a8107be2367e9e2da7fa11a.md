# actualRieszLaplaceAtoms_tsum_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ae06d58-4fd4-900b-1bba-9adcc5dfeedc",
  "kind": "theorem",
  "lexical_name": "actualRieszLaplaceAtoms_tsum_integrable",
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
  "slug": "actualrieszlaplaceatoms-tsum-integrable--7a8107be2367e9e2da7fa11a",
  "source": {
    "blob": "49677c9e16662b4a1d5740e5207fd68552a304f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 337,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a8107be2367e9e2da7fa11aa263f5298635446d055c685fbcee47ddd5336552",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ae06d58-4fd4-900b-1bba-9adcc5dfeedc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszLaplaceAtoms_tsum_integrable {z : ℂ} (hz : 1 / 2 < z.re) :
    IntegrableOn (fun t : ℝ => ∑' n : ℕ, actualRieszLaplaceAtom z n t) (Ioi 0) := by
  have hF (n : ℕ) := actualRieszLaplaceAtom_integrable (by linarith : 0 < z.re) n
  have hsum := actualRieszLaplaceAtoms_summable_integral_norm hz
  have hmeas : AEStronglyMeasurable
      (fun t : ℝ => ∑' n : ℕ, actualRieszLaplaceAtom z n t) (volume.restrict (Ioi 0)) := by
    simp_rw [actualRieszLaplaceAtoms_tsum]
    have hq : Continuous actualRieszContinuousRamp := by
      unfold actualRieszContinuousRamp
      fun_prop
    exact ((Complex.continuous_ofReal.comp
      (actualRieszPrimitive_continuous.add hq)).mul (by fun_prop)).aestronglyMeasurable
  refine ⟨hmeas, ?_⟩
  rw [hasFiniteIntegral_iff_enorm]
  have hint (n : ℕ) :
      ∫⁻ t in Ioi 0, ‖actualRieszLaplaceAtom z n t‖ₑ =
        ENNReal.ofReal (∫ t in Ioi 0, ‖actualRieszLaplaceAtom z n t‖) := by
    dsimp [enorm]
    rw [lintegral_coe_eq_integral _ (hF n).norm]
    simp only [coe_nnnorm]
  have hfinite : (∑' n : ℕ, ∫⁻ t in Ioi 0, ‖actualRieszLaplaceAtom z n t‖ₑ) < ⊤ := by
    simp_rw [hint]
    exact hsum.tsum_ofReal_lt_top
  apply lt_of_le_of_lt _ hfinite
  rw [← lintegral_tsum (fun n => (hF n).aestronglyMeasurable.enorm)]
  apply lintegral_mono
  intro t
  exact enorm_tsum_le_tsum_enorm

/-- The genuine L1 norm budget permits the actual infinite atom integral exchange. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49677c9e16662b4a1d5740e5207fd68552a304f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
