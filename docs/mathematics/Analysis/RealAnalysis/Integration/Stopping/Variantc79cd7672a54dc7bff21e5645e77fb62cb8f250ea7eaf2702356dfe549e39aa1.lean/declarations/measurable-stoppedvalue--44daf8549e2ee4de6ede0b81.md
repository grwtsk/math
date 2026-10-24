# measurable_stoppedValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00a5c033f38226401d2b83043ee33645bc887d0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 871,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d18e4b52-06c8-8eb9-155b-90de8acc451e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94b5b8ff-6227-8334-2e0b-6418d90625f8",
  "kind": "theorem",
  "lexical_name": "measurable_stoppedValue",
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
  "slug": "measurable-stoppedvalue--44daf8549e2ee4de6ede0b81",
  "source": {
    "blob": "00a5c033f38226401d2b83043ee33645bc887d0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 894,
    "line": 871,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44daf8549e2ee4de6ede0b812343e9c9e74e9660bb83b4b7ee6e2f6b655466ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94b5b8ff-6227-8334-2e0b-6418d90625f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 871–894.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_stoppedValue [MetrizableSpace β] [MeasurableSpace β] [BorelSpace β]
    (hf_prog : ProgMeasurable f u) (hτ : IsStoppingTime f τ) :
    Measurable[hτ.measurableSpace] (stoppedValue u τ) := by
  have h_str_meas : ∀ i, StronglyMeasurable[f i] (stoppedValue u fun ω => min (τ ω) i) := fun i =>
    stronglyMeasurable_stoppedValue_of_le hf_prog (hτ.min_const i) fun _ => min_le_right _ _
  intro t ht i
  suffices stoppedValue u τ ⁻¹' t ∩ {ω : Ω | τ ω ≤ i} =
      (stoppedValue u fun ω => min (τ ω) i) ⁻¹' t ∩ {ω : Ω | τ ω ≤ i} by
    rw [this]; exact ((h_str_meas i).measurable ht).inter (hτ.measurableSet_le i)
  ext1 ω
  simp only [stoppedValue, Set.mem_inter_iff, Set.mem_preimage, Set.mem_setOf_eq,
    and_congr_left_iff]
  intro h
  rw [min_eq_left h]
#align measure_theory.measurable_stopped_value MeasureTheory.measurable_stoppedValue

end ProgMeasurable

end LinearOrder

section StoppedValueOfMemFinset

variable {μ : Measure Ω} {τ σ : Ω → ι} {E : Type*} {p : ℝ≥0∞} {u : ι → Ω → E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean#L871).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00a5c033f38226401d2b83043ee33645bc887d0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
