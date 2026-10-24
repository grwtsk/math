# hasFiniteIntegral_prod_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aba69b84-00c7-1b32-68d8-a396dcbe48ad",
  "kind": "theorem",
  "lexical_name": "hasFiniteIntegral_prod_iff",
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
  "slug": "hasfiniteintegral-prod-iff--c295c91ad5b41330a108d230",
  "source": {
    "blob": "7b19aac2a6d9a12221b5f6a581db723e4e4de211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 242,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c295c91ad5b41330a108d230777b5be6218f8fa4c390e70dfc5d23a1bff929f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aba69b84-00c7-1b32-68d8-a396dcbe48ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFiniteIntegral_prod_iff ⦃f : α × β → E⦄ (h1f : StronglyMeasurable f) :
    HasFiniteIntegral f (μ.prod ν) ↔
      (∀ᵐ x ∂μ, HasFiniteIntegral (fun y => f (x, y)) ν) ∧
        HasFiniteIntegral (fun x => ∫ y, ‖f (x, y)‖ ∂ν) μ := by
  simp only [HasFiniteIntegral]
  -- Porting note: was `simp`
  rw [lintegral_prod_of_measurable _ h1f.ennnorm]
  have : ∀ x, ∀ᵐ y ∂ν, 0 ≤ ‖f (x, y)‖ := fun x => eventually_of_forall fun y => norm_nonneg _
  simp_rw [integral_eq_lintegral_of_nonneg_ae (this _)
      (h1f.norm.comp_measurable measurable_prod_mk_left).aestronglyMeasurable,
    ennnorm_eq_ofReal toReal_nonneg, ofReal_norm_eq_coe_nnnorm]
  -- this fact is probably too specialized to be its own lemma
  have : ∀ {p q r : Prop} (_ : r → p), (r ↔ p ∧ q) ↔ p → (r ↔ q) := fun {p q r} h1 => by
    rw [← and_congr_right_iff, and_iff_right_of_imp h1]
  rw [this]
  · intro h2f; rw [lintegral_congr_ae]
    refine' h2f.mp _; apply eventually_of_forall; intro x hx; dsimp only
    rw [ofReal_toReal]; rw [← lt_top_iff_ne_top]; exact hx
  · intro h2f; refine' ae_lt_top _ h2f.ne; exact h1f.ennnorm.lintegral_prod_right'
#align measure_theory.has_finite_integral_prod_iff MeasureTheory.hasFiniteIntegral_prod_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b19aac2a6d9a12221b5f6a581db723e4e4de211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
