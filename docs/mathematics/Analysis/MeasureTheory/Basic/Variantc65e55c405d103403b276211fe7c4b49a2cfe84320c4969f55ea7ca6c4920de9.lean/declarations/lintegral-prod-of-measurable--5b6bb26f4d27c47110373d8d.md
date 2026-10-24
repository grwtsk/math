# lintegral_prod_of_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99587e8f-bd20-db9c-65ef-af294c8c6800",
  "kind": "theorem",
  "lexical_name": "lintegral_prod_of_measurable",
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
  "slug": "lintegral-prod-of-measurable--5b6bb26f4d27c47110373d8d",
  "source": {
    "blob": "7c2531ac0ab1b69ddc59f9602824950bb600e6e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 731,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantc65e55c405d103403b276211fe7c4b49a2cfe84320c4969f55ea7ca6c4920de9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b6bb26f4d27c47110373d8dd3ca6a380cb49c134ee0da0c6d9b178cd03d0903",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantc65e55c405d103403b276211fe7c4b49a2cfe84320c4969f55ea7ca6c4920de9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99587e8f-bd20-db9c-65ef-af294c8c6800`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 731–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_prod_of_measurable :
    ∀ (f : α × β → ℝ≥0∞), Measurable f → ∫⁻ z, f z ∂μ.prod ν = ∫⁻ x, ∫⁻ y, f (x, y) ∂ν ∂μ := by
  have m := @measurable_prod_mk_left
  refine' Measurable.ennreal_induction
    (P := fun f => ∫⁻ z, f z ∂μ.prod ν = ∫⁻ x, ∫⁻ y, f (x, y) ∂ν ∂μ) _ _ _
  · intro c s hs
    conv_rhs =>
      enter [2, x, 2, y]
      rw [← indicator_comp_right, const_def, const_comp, ← const_def]
    conv_rhs =>
      enter [2, x]
      rw [lintegral_indicator _ (m (x := x) hs), lintegral_const,
        Measure.restrict_apply MeasurableSet.univ, univ_inter]
    simp [hs, lintegral_const_mul, measurable_measure_prod_mk_left (ν := ν) hs, prod_apply]
  · rintro f g - hf _ h2f h2g
    simp only [Pi.add_apply]
    conv_lhs => rw [lintegral_add_left hf]
    conv_rhs => enter [2, x]; erw [lintegral_add_left (hf.comp (m (x := x)))]
    simp [lintegral_add_left, Measurable.lintegral_prod_right', hf, h2f, h2g]
  · intro f hf h2f h3f
    have kf : ∀ x n, Measurable fun y => f n (x, y) := fun x n => (hf n).comp m
    have k2f : ∀ x, Monotone fun n y => f n (x, y) := fun x i j hij y => h2f hij (x, y)
    have lf : ∀ n, Measurable fun x => ∫⁻ y, f n (x, y) ∂ν := fun n => (hf n).lintegral_prod_right'
    have l2f : Monotone fun n x => ∫⁻ y, f n (x, y) ∂ν := fun i j hij x =>
      lintegral_mono (k2f x hij)
    simp only [lintegral_iSup hf h2f, lintegral_iSup (kf _), k2f, lintegral_iSup lf l2f, h3f]
#align measure_theory.lintegral_prod_of_measurable MeasureTheory.lintegral_prod_of_measurable

/-- **Tonelli's Theorem**: For `ℝ≥0∞`-valued almost everywhere measurable functions on `α × β`,
  the integral of `f` is equal to the iterated integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantc65e55c405d103403b276211fe7c4b49a2cfe84320c4969f55ea7ca6c4920de9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantc65e55c405d103403b276211fe7c4b49a2cfe84320c4969f55ea7ca6c4920de9.lean#L731).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c2531ac0ab1b69ddc59f9602824950bb600e6e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
