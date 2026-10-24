# mul_measure_le_of_subset_lt_limRatioMeas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8abbcaf9-eb1f-c600-7bb5-6b4b9d7d4fab",
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
  "slug": "mul-measure-le-of-subset-lt-limratiomeas--7ef6bfa93c1cd38df72d464e",
  "source": {
    "blob": "08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 462,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ef6bfa93c1cd38df72d464eb82e4111e3479a9d955928cb95015b06d9ab6749",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8abbcaf9-eb1f-c600-7bb5-6b4b9d7d4fab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_measure_le_of_subset_lt_limRatioMeas {q : ℝ≥0} {s : Set α}
    (h : s ⊆ {x | (q : ℝ≥0∞) < v.limRatioMeas hρ x}) : (q : ℝ≥0∞) * μ s ≤ ρ s := by
  let t := {x : α | Tendsto (fun a => ρ a / μ a) (v.filterAt x) (𝓝 (v.limRatioMeas hρ x))}
  have A : μ tᶜ = 0 := v.ae_tendsto_limRatioMeas hρ
  suffices H : (q • μ) (s ∩ t) ≤ ρ (s ∩ t) by calc
    (q • μ) s = (q • μ) (s ∩ t ∪ s ∩ tᶜ) := by rw [inter_union_compl]
    _ ≤ (q • μ) (s ∩ t) + (q • μ) (s ∩ tᶜ) := measure_union_le _ _
    _ ≤ ρ (s ∩ t) + (q • μ) tᶜ := by gcongr; apply inter_subset_right
    _ = ρ (s ∩ t) := by simp [A]
    _ ≤ ρ s := by gcongr; apply inter_subset_left
  refine v.measure_le_of_frequently_le _ (.smul_left .rfl _) _ ?_
  intro x hx
  have I : ∀ᶠ a in v.filterAt x, (q : ℝ≥0∞) < ρ a / μ a := (tendsto_order.1 hx.2).1 _ (h hx.1)
  apply I.frequently.mono fun a ha => ?_
  rw [coe_nnreal_smul_apply]
  exact ENNReal.mul_le_of_le_div ha.le

/-- The points with `v.limRatioMeas hρ x = ∞` have measure `0` for `μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
