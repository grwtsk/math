# boundary_discrepancy_bound_with_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d58a75e5-7ebc-4acb-db46-bcd8aefdb090",
  "kind": "theorem",
  "lexical_name": "boundary_discrepancy_bound_with_tail",
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
  "slug": "boundary-discrepancy-bound-with-tail--932eccbfe0dbbeea94524fbf",
  "source": {
    "blob": "ceeaab0f42e24f9ff6acd368020b6a45a00eb4ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variant3f1c306fe038765ade939b0e06ff65b67179003b242f9ec039ad7134d0a0e6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:932eccbfe0dbbeea94524fbfb319a8acd8899005cb6ec653bd20e06cdbb0d4ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variant3f1c306fe038765ade939b0e06ff65b67179003b242f9ec039ad7134d0a0e6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d58a75e5-7ebc-4acb-db46-bcd8aefdb090`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_discrepancy_bound_with_tail {A B C c γ : ℝ} {E w H : ℝ → ℝ}
    (hA : 1 ≤ A) (hc : 0 ≤ c)
    (hMain : ∀ t : ℝ, 0 < t → |E t + γ| ≤ c / t ^ 2)
    (hGlobal : ∀ t : ℝ, |E t + γ| ≤ B + max 0 (-t))
    (hEnvelope : ∀ y ∈ Icc 0 (4 * A), |w y| ≤ H y)
    (hHnonneg : ∀ y ∈ Ioi A, 0 ≤ H y)
    (hLeft : IntervalIntegrable (fun y => w y * (E (2 * A - y) + γ)) volume 0 A)
    (hRight : IntervalIntegrable (fun y => w y * (E (2 * A - y) + γ)) volume A (4 * A))
    (hHLeft : IntervalIntegrable H volume 0 A)
    (hHTail : IntegrableOn (fun y => H y * (B + y)) (Ioi A))
    (hMass : (∫ y in 0..A, H y) ≤ C) :
    |∫ y in 0..4 * A, w y * (E (2 * A - y) + γ)| ≤
      c * C / A ^ 2 + ∫ y in Ioi A, H y * (B + y) := by
  have hAA : A ≤ 4 * A := by linarith
  have hsub : Ioc A (4 * A) ⊆ Ioi A := fun _ hy => hy.1
  have hi : IntervalIntegrable (fun y => H y * (B + y)) volume A (4 * A) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hAA).mpr (hHTail.mono_set hsub)
  have hB : 0 ≤ B := (abs_nonneg (E 0 + γ)).trans (by simpa using hGlobal 0)
  have hnonneg : 0 ≤ᵐ[volume.restrict (Ioi A)] (fun y => H y * (B + y)) := by
    apply (ae_restrict_iff' measurableSet_Ioi).mpr
    exact ae_of_all volume fun y hy => mul_nonneg (hHnonneg y hy)
      (by have hy' : A < y := hy; linarith)
  have htail : (∫ y in A..4 * A, H y * (B + y)) ≤
      ∫ y in Ioi A, H y * (B + y) := by
    rw [intervalIntegral.integral_of_le hAA]
    exact setIntegral_mono_set hHTail hnonneg hsub.eventuallyLE
  exact (boundary_discrepancy_bound hA hc hMain hGlobal hEnvelope
    hLeft hRight hHLeft hi hMass).trans (add_le_add le_rfl htail)

end ContinuousResearch.NormalizedDiscrepancy

#print axioms ContinuousResearch.NormalizedDiscrepancy.discrepancy_on_main_window
#print axioms ContinuousResearch.NormalizedDiscrepancy.discrepancy_on_tail_window
#print axioms ContinuousResearch.NormalizedDiscrepancy.boundary_discrepancy_bound
#print axioms ContinuousResearch.NormalizedDiscrepancy.boundary_discrepancy_bound_with_tail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variant3f1c306fe038765ade939b0e06ff65b67179003b242f9ec039ad7134d0a0e6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variant3f1c306fe038765ade939b0e06ff65b67179003b242f9ec039ad7134d0a0e6d2.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceeaab0f42e24f9ff6acd368020b6a45a00eb4ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
