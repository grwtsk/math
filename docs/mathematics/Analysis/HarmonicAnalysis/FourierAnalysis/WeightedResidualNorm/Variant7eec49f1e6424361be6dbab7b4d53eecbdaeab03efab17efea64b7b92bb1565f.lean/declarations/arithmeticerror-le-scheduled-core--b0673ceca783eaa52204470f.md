# arithmeticError_le_scheduled_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0d4a43a-8c0f-b085-c204-e701c95e0ed1",
  "kind": "theorem",
  "lexical_name": "arithmeticError_le_scheduled_core",
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
  "slug": "arithmeticerror-le-scheduled-core--b0673ceca783eaa52204470f",
  "source": {
    "blob": "0331081ed484478ba3acddd4a04ce865afea82d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 92,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0673ceca783eaa52204470f1b56cbdd2db02af5c13b7ceaa11649bad5113dea",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0d4a43a-8c0f-b085-c204-e701c95e0ed1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticError_le_scheduled_core (X : ℕ) (hX : 2 ≤ X) (h : ℝ) (hh : 0 ≤ h) :
    Real.sqrt (arithmeticErrorSq X (SourceTailSchedule.epsilonSchedule X) h) ≤
      ‖sourceMultiplier (SourceTailSchedule.epsilonSchedule X) h
        (SourceTailSchedule.schedule_admissible X hX).1
        (SourceTailSchedule.schedule_admissible X hX).2.1 hh
        (coreResidualVector X (SourceTailSchedule.epsilonSchedule X) (by omega)
          (SourceTailSchedule.cutoffSchedule X))‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) / (4 * SourceTailSchedule.logScale X) +
        3 * ((4 / 3 : ℝ) * Real.exp (1 / 4)) / Real.sqrt (X : ℝ) := by
  obtain ⟨he, hes, hY⟩ := SourceTailSchedule.schedule_admissible X hX
  obtain ⟨hn, hp⟩ := SourceTailSchedule.scheduled_endpoint_bounds X hX
  have hB : 0 ≤ (4 / 3 : ℝ) * Real.exp (1 / 4) := by positivity
  have hn' := mul_le_mul_of_nonneg_left hn hB
  have hp' := mul_le_mul_of_nonneg_left hp hB
  have hb := arithmeticError_le_core_tails X (SourceTailSchedule.epsilonSchedule X)
    (by omega) h he hes hh (SourceTailSchedule.cutoffSchedule X) hY
  simp only [← mul_div_assoc, mul_one] at hn' hp'
  rw [mul_comm ((4 / 3 : ℝ) * Real.exp (1 / 4)) 3] at hp'
  exact hb.trans (add_le_add (add_le_add le_rfl hn') hp')

end
end WeightedResidualNormScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0331081ed484478ba3acddd4a04ce865afea82d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
