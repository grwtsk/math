# mul_measure_le_of_subset_lt_limRatioMeas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab40fcd8-962f-6abd-2898-aeb555db4f65",
  "kind": "theorem",
  "lexical_name": "mul_measure_le_of_subset_lt_limRatioMeas",
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
  "slug": "mul-measure-le-of-subset-lt-limratiomeas--f7ef7bc822cc9770b60259a8",
  "source": {
    "blob": "cc26e1e64d5bf06020ca5e385d7ee270325dc58b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 477,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7ef7bc822cc9770b60259a840a1a663b1b8476465f459bdbc25824e2af1f6a6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab40fcd8-962f-6abd-2898-aeb555db4f65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_measure_le_of_subset_lt_limRatioMeas {q : ℝ≥0} {s : Set α}
    (h : s ⊆ {x | (q : ℝ≥0∞) < v.limRatioMeas hρ x}) : (q : ℝ≥0∞) * μ s ≤ ρ s := by
  let t := {x : α | Tendsto (fun a => ρ a / μ a) (v.filterAt x) (𝓝 (v.limRatioMeas hρ x))}
  have A : μ tᶜ = 0 := v.ae_tendsto_limRatioMeas hρ
  suffices H : (q • μ) (s ∩ t) ≤ ρ (s ∩ t);
  exact
    calc
      (q • μ) s = (q • μ) (s ∩ t ∪ s ∩ tᶜ) := by rw [inter_union_compl]
      _ ≤ (q • μ) (s ∩ t) + (q • μ) (s ∩ tᶜ) := (measure_union_le _ _)
      _ ≤ ρ (s ∩ t) + q * μ tᶜ := by
        apply add_le_add H
        rw [coe_nnreal_smul_apply]
        exact mul_le_mul_left' (measure_mono (inter_subset_right _ _)) _
      _ ≤ ρ s := by
        rw [A, mul_zero, add_zero]; exact measure_mono (inter_subset_left _ _)
  refine' v.measure_le_of_frequently_le _ (AbsolutelyContinuous.rfl.smul _) _ _
  intro x hx
  have I : ∀ᶠ a in v.filterAt x, (q : ℝ≥0∞) < ρ a / μ a := (tendsto_order.1 hx.2).1 _ (h hx.1)
  apply I.frequently.mono fun a ha => ?_
  rw [coe_nnreal_smul_apply]
  exact ENNReal.mul_le_of_le_div ha.le
#align vitali_family.mul_measure_le_of_subset_lt_lim_ratio_meas VitaliFamily.mul_measure_le_of_subset_lt_limRatioMeas

/-- The points with `v.limRatioMeas hρ x = ∞` have measure `0` for `μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc26e1e64d5bf06020ca5e385d7ee270325dc58b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
