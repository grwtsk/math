# actual_source_growing_goodheight_residue_ledger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0071dc48-39e8-5efa-0e6b-bca05202c239",
  "kind": "theorem",
  "lexical_name": "actual_source_growing_goodheight_residue_ledger",
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
  "slug": "actual-source-growing-goodheight-residue-ledger--1ac90fce18e449583dd5af57",
  "source": {
    "blob": "bacd5601a20e6f79948af2af8a64e4bf310dd817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ac90fce18e449583dd5af57064bde56bea4e9f284e3c4c433abb73f71b027c9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0071dc48-39e8-5efa-0e6b-bca05202c239`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_growing_goodheight_residue_ledger :
    ∃ Cg : ℝ, 0 < Cg ∧ ∀ A c : ℝ, 1 ≤ A → 1 < c → c ≤ 3 / 2 →
      ∃ R : ℝ, max 7 (actualBumpMovingHeight A c) ≤ R ∧
        R < max 7 (actualBumpMovingHeight A c) + 2 ∧
        (∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 / 2 ≤ s.re → s.re ≤ 2 →
          riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
            Cg * Real.log ((actualGoodHeightIndex A c : ℝ) + 3) ^ 2) ∧
        ‖actualInitialPrimeTwoTail A c R‖ ≤ actualBumpMovingTailConstant c / A ^ 9 ∧
        ∃ Z : Finset ℂ,
          (Z : Set ℂ) = {ρ : ℂ | IsNontrivialZero ρ ∧ -R < ρ.im ∧ ρ.im < R} ∧
          RectangleIntegral' (fun s => actualInitialPrimeMellin A s *
            logDeriv completedRiemannZeta s)
            ((1 - c : ℝ) - (R : ℂ) * Complex.I) ((c : ℂ) + (R : ℂ) * Complex.I) =
            ∑ ρ ∈ Z, (zeroMult ρ : ℂ) * actualInitialPrimeMellin A ρ := by
  obtain ⟨Cg, hCg, hgood⟩ := WeilEF.good_heights_at
  refine ⟨Cg, hCg, ?_⟩
  intro A c hA hc hc2
  have hi := actualGoodHeightIndex_bounds A c
  obtain ⟨R, hjR, hRj, hRgood⟩ := hgood (actualGoodHeightIndex A c) hi.1
  have hlow := hi.2.1.trans hjR
  have hupp : R < max 7 (actualBumpMovingHeight A c) + 2 := by linarith [hi.2.2]
  have h7 : 7 ≤ R := (le_max_left _ _).trans hlow
  have hbase : actualBumpMovingHeight A c ≤ R := (le_max_right _ _).trans hlow
  have hcomplete := WeilEF.completedZeta_ne_zero_on_horizontals hc hc2
    (fun s him hr1 hr2 => (hRgood s him hr1 hr2).1)
  obtain ⟨Z, hZ, hrect⟩ := WeilEF.rectangle_identity
    (actualInitialPrimeKernel_contDiff A hA)
    (actualInitialPrimeKernel_hasCompactSupport A hA) hc hc2 h7 hcomplete
  simp_rw [← actualInitialPrimeMellin_eq_Hfn A] at hrect
  have hzero := actualInitialPrimeMellin_poles_zero A hA
  rw [hzero.1, hzero.2, sub_zero, sub_zero] at hrect
  exact ⟨R, hlow, hupp, hRgood,
    actualInitialPrimeTwoTail_above_movingHeight_norm_le A c R hA hc hbase, Z, hZ, hrect⟩

end
end FormalResearch.RiemannHypothesis.SourceActualGoodHeightContour
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bacd5601a20e6f79948af2af8a64e4bf310dd817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
