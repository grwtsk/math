# tendsto_of_uncrossing_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01f3d4a3-6dfb-b802-6208-f61f1d742ce6",
  "kind": "theorem",
  "lexical_name": "tendsto_of_uncrossing_lt_top",
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
  "slug": "tendsto-of-uncrossing-lt-top--f199e37a15d5c4f3accda7f0",
  "source": {
    "blob": "2b11d6d178c04ff0cf0a9d71511894b86008c39d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 150,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f199e37a15d5c4f3accda7f09d099574f6ef3a3764d350f36c035f8a7e848855",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01f3d4a3-6dfb-b802-6208-f61f1d742ce6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_of_uncrossing_lt_top (hf₁ : liminf (fun n => (‖f n ω‖₊ : ℝ≥0∞)) atTop < ∞)
    (hf₂ : ∀ a b : ℚ, a < b → upcrossings a b f ω < ∞) :
    ∃ c, Tendsto (fun n => f n ω) atTop (𝓝 c) := by
  by_cases h : IsBoundedUnder (· ≤ ·) atTop fun n => |f n ω|
  · rw [isBoundedUnder_le_abs] at h
    refine' tendsto_of_no_upcrossings Rat.denseRange_cast _ h.1 h.2
    · intro a ha b hb hab
      obtain ⟨⟨a, rfl⟩, ⟨b, rfl⟩⟩ := ha, hb
      exact not_frequently_of_upcrossings_lt_top hab (hf₂ a b (Rat.cast_lt.1 hab)).ne
  · obtain ⟨a, b, hab, h₁, h₂⟩ := ENNReal.exists_upcrossings_of_not_bounded_under hf₁.ne h
    exact
      False.elim ((hf₂ a b hab).ne (upcrossings_eq_top_of_frequently_lt (Rat.cast_lt.2 hab) h₁ h₂))
#align measure_theory.tendsto_of_uncrossing_lt_top MeasureTheory.tendsto_of_uncrossing_lt_top

/-- An L¹-bounded submartingale has bounded upcrossings almost everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b11d6d178c04ff0cf0a9d71511894b86008c39d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
