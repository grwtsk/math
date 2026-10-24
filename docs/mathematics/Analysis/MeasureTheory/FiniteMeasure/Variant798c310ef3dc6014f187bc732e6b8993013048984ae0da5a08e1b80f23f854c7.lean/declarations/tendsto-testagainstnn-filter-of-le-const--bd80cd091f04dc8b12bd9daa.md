# tendsto_testAgainstNN_filter_of_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec4a5e9b-e4b1-211c-da84-a170f12b1ef4",
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
  "slug": "tendsto-testagainstnn-filter-of-le-const--bd80cd091f04dc8b12bd9daa",
  "source": {
    "blob": "013855ee43b7e9d7dcc9303bc0854d86cc182fff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 632,
    "line": 614,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant798c310ef3dc6014f187bc732e6b8993013048984ae0da5a08e1b80f23f854c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd80cd091f04dc8b12bd9daac25dd10b8287259614803261334c2cbd49010ac0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasure/Variant798c310ef3dc6014f187bc732e6b8993013048984ae0da5a08e1b80f23f854c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec4a5e9b-e4b1-211c-da84-a170f12b1ef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_testAgainstNN_filter_of_le_const {ι : Type*} {L : Filter ι}
    [L.IsCountablyGenerated] {μ : FiniteMeasure Ω} {fs : ι → Ω →ᵇ ℝ≥0} {c : ℝ≥0}
    (fs_le_const : ∀ᶠ i in L, ∀ᵐ ω : Ω ∂(μ : Measure Ω), fs i ω ≤ c) {f : Ω →ᵇ ℝ≥0}
    (fs_lim : ∀ᵐ ω : Ω ∂(μ : Measure Ω), Tendsto (fun i ↦ fs i ω) L (𝓝 (f ω))) :
    Tendsto (fun i ↦ μ.testAgainstNN (fs i)) L (𝓝 (μ.testAgainstNN f)) := by
  apply (ENNReal.tendsto_toNNReal (f.lintegral_lt_top_of_nnreal (μ : Measure Ω)).ne).comp
  exact tendsto_lintegral_nn_filter_of_le_const (Ω := Ω) μ fs_le_const fs_lim

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasure/Variant798c310ef3dc6014f187bc732e6b8993013048984ae0da5a08e1b80f23f854c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant798c310ef3dc6014f187bc732e6b8993013048984ae0da5a08e1b80f23f854c7.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `013855ee43b7e9d7dcc9303bc0854d86cc182fff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
