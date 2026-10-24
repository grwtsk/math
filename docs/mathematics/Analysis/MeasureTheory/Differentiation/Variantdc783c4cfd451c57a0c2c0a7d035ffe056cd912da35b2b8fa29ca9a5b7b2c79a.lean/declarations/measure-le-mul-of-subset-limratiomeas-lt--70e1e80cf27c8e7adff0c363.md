# measure_le_mul_of_subset_limRatioMeas_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cc0b0d6f3e14289a7a145ef32564803b339a108",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 445,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfad9a0c-cfba-9747-5f88-db8bfa52583f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:290c145b-ef1f-3145-e5a6-d99fdad7b82e",
  "kind": "theorem",
  "lexical_name": "measure_le_mul_of_subset_limRatioMeas_lt",
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
  "slug": "measure-le-mul-of-subset-limratiomeas-lt--70e1e80cf27c8e7adff0c363",
  "source": {
    "blob": "8cc0b0d6f3e14289a7a145ef32564803b339a108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 445,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70e1e80cf27c8e7adff0c3630dd329a0027dbac670497dccbc5e9a192d590fce",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:290c145b-ef1f-3145-e5a6-d99fdad7b82e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_le_mul_of_subset_limRatioMeas_lt {p : ℝ≥0} {s : Set α}
    (h : s ⊆ {x | v.limRatioMeas hρ x < p}) : ρ s ≤ p * μ s := by
  let t := {x : α | Tendsto (fun a => ρ a / μ a) (v.filterAt x) (𝓝 (v.limRatioMeas hρ x))}
  have A : μ tᶜ = 0 := v.ae_tendsto_limRatioMeas hρ
  suffices H : ρ (s ∩ t) ≤ (p • μ) (s ∩ t);
  exact
    calc
      ρ s = ρ (s ∩ t ∪ s ∩ tᶜ) := by rw [inter_union_compl]
      _ ≤ ρ (s ∩ t) + ρ (s ∩ tᶜ) := (measure_union_le _ _)
      _ ≤ p * μ (s ∩ t) + 0 :=
        (add_le_add H ((measure_mono (inter_subset_right _ _)).trans (hρ A).le))
      _ ≤ p * μ s := by
        rw [add_zero]; exact mul_le_mul_left' (measure_mono (inter_subset_left _ _)) _
  refine' v.measure_le_of_frequently_le (p • μ) hρ _ fun x hx => _
  have I : ∀ᶠ b : Set α in v.filterAt x, ρ b / μ b < p := (tendsto_order.1 hx.2).2 _ (h hx.1)
  apply I.frequently.mono fun a ha => ?_
  rw [coe_nnreal_smul_apply]
  refine' (ENNReal.div_le_iff_le_mul _ (Or.inr (bot_le.trans_lt ha).ne')).1 ha.le
  simp only [ENNReal.coe_ne_top, Ne.def, or_true_iff, not_false_iff]
#align vitali_family.measure_le_mul_of_subset_lim_ratio_meas_lt VitaliFamily.measure_le_mul_of_subset_limRatioMeas_lt

/-- If, for all `x` in a set `s`, one has frequently `q < ρ a / μ a`, then `q * μ s ≤ ρ s`, as
proved in `measure_le_of_frequently_le`. Since `ρ a / μ a` tends almost everywhere to
`v.limRatioMeas hρ x`, the same property holds for sets `s` on which `q < v.limRatioMeas hρ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cc0b0d6f3e14289a7a145ef32564803b339a108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
