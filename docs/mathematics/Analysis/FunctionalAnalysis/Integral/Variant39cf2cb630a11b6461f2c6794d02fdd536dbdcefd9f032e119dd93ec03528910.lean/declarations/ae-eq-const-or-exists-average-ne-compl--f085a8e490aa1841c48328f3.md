# ae_eq_const_or_exists_average_ne_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "420e844d167c2de565c57c154c88446a3f7ba8d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:643d927b-85b2-c7a8-e8bd-56668385ddc1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:249a7bbf-e477-3f11-bc57-15f6531127b5",
  "kind": "theorem",
  "lexical_name": "ae_eq_const_or_exists_average_ne_compl",
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
  "slug": "ae-eq-const-or-exists-average-ne-compl--f085a8e490aa1841c48328f3",
  "source": {
    "blob": "420e844d167c2de565c57c154c88446a3f7ba8d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 234,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f085a8e490aa1841c48328f37a7c0a4a0a2dcdc28b604e8db35924a03dc8f6f3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:249a7bbf-e477-3f11-bc57-15f6531127b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_eq_const_or_exists_average_ne_compl [IsFiniteMeasure μ] (hfi : Integrable f μ) :
    f =ᵐ[μ] const α (⨍ x, f x ∂μ) ∨
      ∃ t, MeasurableSet t ∧ μ t ≠ 0 ∧ μ tᶜ ≠ 0 ∧ (⨍ x in t, f x ∂μ) ≠ ⨍ x in tᶜ, f x ∂μ := by
  refine' or_iff_not_imp_right.mpr fun H => _; push_neg at H
  refine' hfi.ae_eq_of_forall_set_integral_eq _ _ (integrable_const _) fun t ht ht' => _; clear ht'
  simp only [const_apply, set_integral_const]
  by_cases h₀ : μ t = 0
  · rw [restrict_eq_zero.2 h₀, integral_zero_measure, h₀, ENNReal.zero_toReal, zero_smul]
  by_cases h₀' : μ tᶜ = 0
  · rw [← ae_eq_univ] at h₀'
    rw [restrict_congr_set h₀', restrict_univ, measure_congr h₀', measure_smul_average]
  have := average_mem_openSegment_compl_self ht.nullMeasurableSet h₀ h₀' hfi
  rw [← H t ht h₀ h₀', openSegment_same, mem_singleton_iff] at this
  rw [this, measure_smul_setAverage _ (measure_ne_top μ _)]
#align ae_eq_const_or_exists_average_ne_compl ae_eq_const_or_exists_average_ne_compl

/-- If an integrable function `f : α → E` takes values in a convex set `s` and for some set `t` of
positive measure, the average value of `f` over `t` belongs to the interior of `s`, then the average
of `f` over the whole space belongs to the interior of `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `420e844d167c2de565c57c154c88446a3f7ba8d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
