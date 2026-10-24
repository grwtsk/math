# lpMeas.ae_eq_zero_of_forall_setIntegral_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:454c2131-5834-f371-8273-0b977df6931b",
  "kind": "theorem",
  "lexical_name": "lpMeas.ae_eq_zero_of_forall_setIntegral_eq_zero",
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
  "slug": "lpmeas-ae-eq-zero-of-forall-setintegral-eq-zero--8ef126a3fe62d45d86c0ee36",
  "source": {
    "blob": "a9cfb16dedc566f92326d19f506216f1481d5cc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ef126a3fe62d45d86c0ee36ca942eb9084877a4489c1c5d855eca6749aad447",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:454c2131-5834-f371-8273-0b977df6931b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lpMeas.ae_eq_zero_of_forall_setIntegral_eq_zero (hm : m ≤ m0) (f : lpMeas E' 𝕜 m p μ)
    (hp_ne_zero : p ≠ 0) (hp_ne_top : p ≠ ∞)
    (hf_int_finite : ∀ s, MeasurableSet[m] s → μ s < ∞ → IntegrableOn (f : Lp E' p μ) s μ)
    (hf_zero : ∀ s : Set α, MeasurableSet[m] s → μ s < ∞ → ∫ x in s, (f : Lp E' p μ) x ∂μ = 0) :
    f =ᵐ[μ] (0 : α → E') := by
  obtain ⟨g, hg_sm, hfg⟩ := lpMeas.ae_fin_strongly_measurable' hm f hp_ne_zero hp_ne_top
  refine hfg.trans ?_
  refine ae_eq_zero_of_forall_setIntegral_eq_of_finStronglyMeasurable_trim hm ?_ ?_ hg_sm
  · intro s hs hμs
    have hfg_restrict : f =ᵐ[μ.restrict s] g := ae_restrict_of_ae hfg
    rw [IntegrableOn, integrable_congr hfg_restrict.symm]
    exact hf_int_finite s hs hμs
  · intro s hs hμs
    have hfg_restrict : f =ᵐ[μ.restrict s] g := ae_restrict_of_ae hfg
    rw [integral_congr_ae hfg_restrict.symm]
    exact hf_zero s hs hμs

variable (𝕜)

include 𝕜 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9cfb16dedc566f92326d19f506216f1481d5cc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
