# IsOpen.ae_eq_zero_of_integral_smooth_smul_eq_zero'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9251c9c8-7e34-163b-72a0-fe02584b595e",
  "kind": "theorem",
  "lexical_name": "IsOpen.ae_eq_zero_of_integral_smooth_smul_eq_zero'",
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
  "slug": "isopen-ae-eq-zero-of-integral-smooth-smul-eq-zero--ba5f68c61a7e515fd632b184",
  "source": {
    "blob": "505ffcd28914f509cd3472fef1bd3fc6b8d5534c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba5f68c61a7e515fd632b18457dbc42a5006dd4ac8432162d2492a1888c2eef2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9251c9c8-7e34-163b-72a0-fe02584b595e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem IsOpen.ae_eq_zero_of_integral_smooth_smul_eq_zero' {U : Set M} (hU : IsOpen U)
    (hSig : IsSigmaCompact U) (hf : LocallyIntegrableOn f U μ)
    (h : ∀ g : M → ℝ,
      ContMDiff I 𝓘(ℝ) ∞ g → HasCompactSupport g → tsupport g ⊆ U → ∫ x, g x • f x ∂μ = 0) :
    ∀ᵐ x ∂μ, x ∈ U → f x = 0 := by
  have meas_U := hU.measurableSet
  rw [← ae_restrict_iff' meas_U, ae_restrict_iff_subtype meas_U]
  let U : Opens M := ⟨U, hU⟩
  change ∀ᵐ (x : U) ∂_, _
  haveI : SigmaCompactSpace U := isSigmaCompact_iff_sigmaCompactSpace.mp hSig
  refine ae_eq_zero_of_integral_smooth_smul_eq_zero I ?_ fun g g_smth g_supp ↦ ?_
  · exact (locallyIntegrable_comap meas_U).mpr hf
  specialize h (Subtype.val.extend g 0) (g_smth.extend_zero g_supp)
    (g_supp.extend_zero continuous_subtype_val) ((g_supp.tsupport_extend_zero_subset
      continuous_subtype_val).trans <| Subtype.coe_image_subset _ _)
  rw [← setIntegral_eq_integral_of_forall_compl_eq_zero (s := U) fun x hx ↦ ?_] at h
  · rw [← integral_subtype_comap] at h
    · simp_rw [Subtype.val_injective.extend_apply] at h; exact h
    · exact meas_U
  rw [Function.extend_apply' _ _ _ (mt _ hx)]
  · apply zero_smul
  · rintro ⟨x, rfl⟩; exact x.2

variable [SigmaCompactSpace M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variant021cb0a882c23e4a777783158faa31d0f2a7833e716732574c5989bb6a3cdf47.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `505ffcd28914f509cd3472fef1bd3fc6b8d5534c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
