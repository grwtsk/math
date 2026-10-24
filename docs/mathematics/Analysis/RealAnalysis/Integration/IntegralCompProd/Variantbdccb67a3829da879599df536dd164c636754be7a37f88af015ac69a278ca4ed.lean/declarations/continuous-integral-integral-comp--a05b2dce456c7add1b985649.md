# continuous_integral_integral_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:062bace2-34ac-0ba0-d60e-c09ea8e93fce",
  "kind": "theorem",
  "lexical_name": "continuous_integral_integral_comp",
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
  "slug": "continuous-integral-integral-comp--a05b2dce456c7add1b985649",
  "source": {
    "blob": "59633ddb4f5a97672a82a8e6d27d0282e35ad12c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 410,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantbdccb67a3829da879599df536dd164c636754be7a37f88af015ac69a278ca4ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a05b2dce456c7add1b985649e2c1a313f859b654ae7632696df145788a923b84",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantbdccb67a3829da879599df536dd164c636754be7a37f88af015ac69a278ca4ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:062bace2-34ac-0ba0-d60e-c09ea8e93fce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_integral_integral_comp :
    Continuous fun f : γ →₁[(η ∘ₖ κ) a] E ↦ ∫ x, ∫ y, f y ∂η x ∂κ a := by
  refine continuous_iff_continuousAt.2 fun g ↦ ?_
  refine tendsto_integral_of_L1 _ (L1.integrable_coeFn g).integral_comp
      (Eventually.of_forall fun h ↦ (L1.integrable_coeFn h).integral_comp) ?_
  simp_rw [← lintegral_fn_integral_sub_comp (‖·‖ₑ) (L1.integrable_coeFn _) (L1.integrable_coeFn g)]
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le
    (h := fun i ↦ ∫⁻ x, ∫⁻ y, ‖i y - g y‖ₑ ∂η x ∂κ a)
    tendsto_const_nhds ?_ (fun _ ↦ zero_le _) ?_
  swap; · exact fun _ ↦ lintegral_mono fun _ ↦ enorm_integral_le_lintegral_enorm _
  have (i : γ →₁[(η ∘ₖ κ) a] E) : Measurable fun z ↦ ‖i z - g z‖ₑ :=
    ((Lp.stronglyMeasurable i).sub (Lp.stronglyMeasurable g)).enorm
  simp_rw [← lintegral_comp _ _ _ (this _), ← L1.ofReal_norm_sub_eq_lintegral, ← ofReal_zero]
  exact (continuous_ofReal.tendsto 0).comp (tendsto_iff_norm_sub_tendsto_zero.1 tendsto_id)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantbdccb67a3829da879599df536dd164c636754be7a37f88af015ac69a278ca4ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantbdccb67a3829da879599df536dd164c636754be7a37f88af015ac69a278ca4ed.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59633ddb4f5a97672a82a8e6d27d0282e35ad12c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
