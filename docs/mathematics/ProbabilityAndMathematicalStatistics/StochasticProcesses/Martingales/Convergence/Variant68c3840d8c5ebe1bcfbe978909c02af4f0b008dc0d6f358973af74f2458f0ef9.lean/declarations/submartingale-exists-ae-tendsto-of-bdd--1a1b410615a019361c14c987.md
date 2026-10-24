# Submartingale.exists_ae_tendsto_of_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df3f52df-b3e8-817f-7cab-51c5f560d189",
  "kind": "theorem",
  "lexical_name": "Submartingale.exists_ae_tendsto_of_bdd",
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
  "slug": "submartingale-exists-ae-tendsto-of-bdd--1a1b410615a019361c14c987",
  "source": {
    "blob": "2b11d6d178c04ff0cf0a9d71511894b86008c39d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 204,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a1b410615a019361c14c98757a4171b42f7fd54c2505a6af9221d6a4ab5f5f3",
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

Occurrence: `result:df3f52df-b3e8-817f-7cab-51c5f560d189`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submartingale.exists_ae_tendsto_of_bdd [IsFiniteMeasure μ] (hf : Submartingale f ℱ μ)
    (hbdd : ∀ n, snorm (f n) 1 μ ≤ R) : ∀ᵐ ω ∂μ, ∃ c, Tendsto (fun n => f n ω) atTop (𝓝 c) := by
  filter_upwards [hf.upcrossings_ae_lt_top hbdd, ae_bdd_liminf_atTop_of_snorm_bdd one_ne_zero
    (fun n => (hf.stronglyMeasurable n).measurable.mono (ℱ.le n) le_rfl) hbdd] with ω h₁ h₂
  exact tendsto_of_uncrossing_lt_top h₂ h₁
#align measure_theory.submartingale.exists_ae_tendsto_of_bdd MeasureTheory.Submartingale.exists_ae_tendsto_of_bdd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b11d6d178c04ff0cf0a9d71511894b86008c39d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
