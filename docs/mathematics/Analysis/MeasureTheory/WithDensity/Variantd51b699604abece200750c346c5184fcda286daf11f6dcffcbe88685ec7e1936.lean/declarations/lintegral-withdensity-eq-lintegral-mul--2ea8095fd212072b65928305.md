# lintegral_withDensity_eq_lintegral_mul₀'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15f2d908441c8eadb070aec9ced73b7137e507a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 370,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5712b496-40e5-90af-d6b8-175be6f19d38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2eea0717-8217-f7b3-0886-4e294cde99f1",
  "kind": "theorem",
  "lexical_name": "lintegral_withDensity_eq_lintegral_mul₀'",
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
  "slug": "lintegral-withdensity-eq-lintegral-mul--2ea8095fd212072b65928305",
  "source": {
    "blob": "15f2d908441c8eadb070aec9ced73b7137e507a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 370,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensity/Variantd51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ea8095fd212072b659283055611dc54cabef5d96e026e94a2dad10eee3f4251",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensity/Variantd51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2eea0717-8217-f7b3-0886-4e294cde99f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_withDensity_eq_lintegral_mul₀' {μ : Measure α} {f : α → ℝ≥0∞}
    (hf : AEMeasurable f μ) {g : α → ℝ≥0∞} (hg : AEMeasurable g (μ.withDensity f)) :
    ∫⁻ a, g a ∂μ.withDensity f = ∫⁻ a, (f * g) a ∂μ := by
  let f' := hf.mk f
  have : μ.withDensity f = μ.withDensity f' := withDensity_congr_ae hf.ae_eq_mk
  rw [this] at hg ⊢
  let g' := hg.mk g
  calc
    ∫⁻ a, g a ∂μ.withDensity f' = ∫⁻ a, g' a ∂μ.withDensity f' := lintegral_congr_ae hg.ae_eq_mk
    _ = ∫⁻ a, (f' * g') a ∂μ :=
      (lintegral_withDensity_eq_lintegral_mul _ hf.measurable_mk hg.measurable_mk)
    _ = ∫⁻ a, (f' * g) a ∂μ := by
      apply lintegral_congr_ae
      apply ae_of_ae_restrict_of_ae_restrict_compl { x | f' x ≠ 0 }
      · have Z := hg.ae_eq_mk
        rw [EventuallyEq, ae_withDensity_iff_ae_restrict hf.measurable_mk] at Z
        filter_upwards [Z]
        intro x hx
        simp only [g', hx, Pi.mul_apply]
      · have M : MeasurableSet { x : α | f' x ≠ 0 }ᶜ :=
          (hf.measurable_mk (measurableSet_singleton 0).compl).compl
        filter_upwards [ae_restrict_mem M]
        intro x hx
        simp only [Classical.not_not, mem_setOf_eq, mem_compl_iff] at hx
        simp only [hx, zero_mul, Pi.mul_apply]
    _ = ∫⁻ a : α, (f * g) a ∂μ := by
      apply lintegral_congr_ae
      filter_upwards [hf.ae_eq_mk]
      intro x hx
      simp only [f', hx, Pi.mul_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensity/Variantd51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensity/Variantd51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15f2d908441c8eadb070aec9ced73b7137e507a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
