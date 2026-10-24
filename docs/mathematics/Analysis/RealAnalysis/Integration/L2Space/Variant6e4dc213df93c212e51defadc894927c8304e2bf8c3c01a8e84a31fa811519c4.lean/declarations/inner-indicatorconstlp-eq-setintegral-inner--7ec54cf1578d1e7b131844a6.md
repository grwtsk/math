# inner_indicatorConstLp_eq_setIntegral_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f74a7fd4d39c136e90feb59319688cf96b27daf1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f043864a-9144-ab8b-c50a-3c09461299d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19f5895f-15bb-fca8-0b1d-3cc8bf4a96ac",
  "kind": "theorem",
  "lexical_name": "inner_indicatorConstLp_eq_setIntegral_inner",
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
  "slug": "inner-indicatorconstlp-eq-setintegral-inner--7ec54cf1578d1e7b131844a6",
  "source": {
    "blob": "f74a7fd4d39c136e90feb59319688cf96b27daf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 217,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ec54cf1578d1e7b131844a6426de6558384ad63c530867a396305820ae1ae5c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19f5895f-15bb-fca8-0b1d-3cc8bf4a96ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_indicatorConstLp_eq_setIntegral_inner (f : Lp E 2 μ) (hs : MeasurableSet s) (c : E)
    (hμs : μ s ≠ ∞) : (⟪indicatorConstLp 2 hs hμs c, f⟫ : 𝕜) = ∫ x in s, ⟪c, f x⟫ ∂μ := by
  rw [inner_def, ← integral_add_compl hs (L2.integrable_inner _ f)]
  have h_left : (∫ x in s, ⟪(indicatorConstLp 2 hs hμs c) x, f x⟫ ∂μ) = ∫ x in s, ⟪c, f x⟫ ∂μ := by
    suffices h_ae_eq : ∀ᵐ x ∂μ, x ∈ s → ⟪indicatorConstLp 2 hs hμs c x, f x⟫ = ⟪c, f x⟫ from
      setIntegral_congr_ae hs h_ae_eq
    have h_indicator : ∀ᵐ x : α ∂μ, x ∈ s → indicatorConstLp 2 hs hμs c x = c :=
      indicatorConstLp_coeFn_mem
    refine h_indicator.mono fun x hx hxs => ?_
    congr
    exact hx hxs
  have h_right : (∫ x in sᶜ, ⟪(indicatorConstLp 2 hs hμs c) x, f x⟫ ∂μ) = 0 := by
    suffices h_ae_eq : ∀ᵐ x ∂μ, x ∉ s → ⟪indicatorConstLp 2 hs hμs c x, f x⟫ = 0 by
      simp_rw [← Set.mem_compl_iff] at h_ae_eq
      suffices h_int_zero :
          (∫ x in sᶜ, ⟪indicatorConstLp 2 hs hμs c x, f x⟫ ∂μ) = ∫ _ in sᶜ, 0 ∂μ by
        rw [h_int_zero]
        simp
      exact setIntegral_congr_ae hs.compl h_ae_eq
    have h_indicator : ∀ᵐ x : α ∂μ, x ∉ s → indicatorConstLp 2 hs hμs c x = 0 :=
      indicatorConstLp_coeFn_notMem
    refine h_indicator.mono fun x hx hxs => ?_
    rw [hx hxs]
    exact inner_zero_left _
  rw [h_left, h_right, add_zero]

/-- The inner product in `L2` of the indicator of a set `indicatorConstLp 2 hs hμs c` and `f` is
equal to the inner product of the constant `c` and the integral of `f` over `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f74a7fd4d39c136e90feb59319688cf96b27daf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
