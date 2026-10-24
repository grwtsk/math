# tendsto_testAgainstNN_filter_of_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea6d5d22-099d-1ff1-d372-c200f8315f6e",
  "kind": "theorem",
  "lexical_name": "tendsto_testAgainstNN_filter_of_le_const",
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
  "slug": "tendsto-testagainstnn-filter-of-le-const--a3859daa5d1db8faa8891558",
  "source": {
    "blob": "f5405a22a971e968ce8d9812ee76cf9654c04e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 648,
    "line": 627,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant4fe91d74fcbe4d82e9858b16042a100bdcbccc57595245c64cffe60c6dce0b2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3859daa5d1db8faa88915580ee28e8c3471e6798f5d36deec4830ecd1b339e7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasure/Variant4fe91d74fcbe4d82e9858b16042a100bdcbccc57595245c64cffe60c6dce0b2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea6d5d22-099d-1ff1-d372-c200f8315f6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–648.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_testAgainstNN_filter_of_le_const {ι : Type*} {L : Filter ι}
    [L.IsCountablyGenerated] {μ : FiniteMeasure Ω} {fs : ι → Ω →ᵇ ℝ≥0} {c : ℝ≥0}
    (fs_le_const : ∀ᶠ i in L, ∀ᵐ ω : Ω ∂(μ : Measure Ω), fs i ω ≤ c) {f : Ω →ᵇ ℝ≥0}
    (fs_lim : ∀ᵐ ω : Ω ∂(μ : Measure Ω), Tendsto (fun i => fs i ω) L (𝓝 (f ω))) :
    Tendsto (fun i => μ.testAgainstNN (fs i)) L (𝓝 (μ.testAgainstNN f)) := by
  apply
    (ENNReal.tendsto_toNNReal
        (lintegral_lt_top_of_boundedContinuous_to_nnreal (μ : Measure Ω) f).ne).comp
  exact tendsto_lintegral_nn_filter_of_le_const μ fs_le_const fs_lim
#align measure_theory.finite_measure.tendsto_test_against_nn_filter_of_le_const MeasureTheory.FiniteMeasure.tendsto_testAgainstNN_filter_of_le_const

/-- A bounded convergence theorem for a finite measure:
If a sequence of bounded continuous non-negative functions are uniformly bounded by a constant and
tend pointwise to a limit, then their integrals (`MeasureTheory.FiniteMeasure.testAgainstNN`)
against the finite measure tend to the integral of the limit.

Related results:
 * `MeasureTheory.FiniteMeasure.tendsto_testAgainstNN_filter_of_le_const`:
   more general assumptions
 * `MeasureTheory.FiniteMeasure.tendsto_lintegral_nn_of_le_const`:
   using `MeasureTheory.lintegral` for integration.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasure/Variant4fe91d74fcbe4d82e9858b16042a100bdcbccc57595245c64cffe60c6dce0b2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant4fe91d74fcbe4d82e9858b16042a100bdcbccc57595245c64cffe60c6dce0b2d.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5405a22a971e968ce8d9812ee76cf9654c04e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
