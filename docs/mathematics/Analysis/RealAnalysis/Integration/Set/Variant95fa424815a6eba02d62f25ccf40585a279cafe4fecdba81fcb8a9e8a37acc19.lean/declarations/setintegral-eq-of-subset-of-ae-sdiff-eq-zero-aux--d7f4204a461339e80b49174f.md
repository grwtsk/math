# setIntegral_eq_of_subset_of_ae_sdiff_eq_zero_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78614125-4824-8dc9-66c4-0ac43e1c4fb6",
  "kind": "theorem",
  "lexical_name": "setIntegral_eq_of_subset_of_ae_sdiff_eq_zero_aux",
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
  "slug": "setintegral-eq-of-subset-of-ae-sdiff-eq-zero-aux--d7f4204a461339e80b49174f",
  "source": {
    "blob": "8afac6bc0a4af13c191249d1cdc05f5b21f607d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 421,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Set/Variant95fa424815a6eba02d62f25ccf40585a279cafe4fecdba81fcb8a9e8a37acc19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7f4204a461339e80b49174fcf0094561c1279b0be8a66c8b2ba96e6dbd1612a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Set/Variant95fa424815a6eba02d62f25ccf40585a279cafe4fecdba81fcb8a9e8a37acc19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78614125-4824-8dc9-66c4-0ac43e1c4fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setIntegral_eq_of_subset_of_ae_sdiff_eq_zero_aux (hts : s ⊆ t)
    (h't : ∀ᵐ x ∂μ, x ∈ t \ s → f x = 0) (haux : StronglyMeasurable f)
    (h'aux : IntegrableOn f t μ) : ∫ x in t, f x ∂μ = ∫ x in s, f x ∂μ := by
  let k := f ⁻¹' {0}
  have hk : MeasurableSet k := by borelize E; exact haux.measurable (measurableSet_singleton _)
  calc
    ∫ x in t, f x ∂μ = ∫ x in t ∩ k, f x ∂μ + ∫ x in t \ k, f x ∂μ := by
      rw [integral_inter_add_sdiff hk h'aux]
    _ = ∫ x in t \ k, f x ∂μ := by
      rw [setIntegral_eq_zero_of_forall_eq_zero fun x hx => ?_, zero_add]; exact hx.2
    _ = ∫ x in s \ k, f x ∂μ := by
      apply setIntegral_congr_set
      filter_upwards [h't] with x hx
      simp only [eq_iff_iff, and_congr_left_iff, Set.mem_sdiff]
      intro h'x
      by_cases xs : x ∈ s
      · simp only [xs, hts xs]
      · simp only [xs, iff_false]
        intro xt
        exact h'x (hx ⟨xt, xs⟩)
    _ = ∫ x in s ∩ k, f x ∂μ + ∫ x in s \ k, f x ∂μ := by
      have : ∀ x ∈ s ∩ k, f x = 0 := fun x hx => hx.2
      rw [setIntegral_eq_zero_of_forall_eq_zero this, zero_add]
    _ = ∫ x in s, f x ∂μ := by rw [integral_inter_add_sdiff hk (h'aux.mono hts le_rfl)]

@[deprecated (since := "2026-06-03")]
alias setIntegral_eq_of_subset_of_ae_diff_eq_zero_aux :=
  setIntegral_eq_of_subset_of_ae_sdiff_eq_zero_aux

/-- If a function vanishes almost everywhere on `t \ s` with `s ⊆ t`, then its integrals on `s`
and `t` coincide if `t` is null-measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Set/Variant95fa424815a6eba02d62f25ccf40585a279cafe4fecdba81fcb8a9e8a37acc19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Set/Variant95fa424815a6eba02d62f25ccf40585a279cafe4fecdba81fcb8a9e8a37acc19.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8afac6bc0a4af13c191249d1cdc05f5b21f607d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
