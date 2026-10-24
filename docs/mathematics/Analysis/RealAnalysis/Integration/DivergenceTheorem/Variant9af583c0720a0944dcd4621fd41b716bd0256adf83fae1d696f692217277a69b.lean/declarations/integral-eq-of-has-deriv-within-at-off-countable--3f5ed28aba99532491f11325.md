# integral_eq_of_has_deriv_within_at_off_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58ec17365a5e7ed878f9f72700ae7154a0ae6054",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 418,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7cbbe62-10cd-bdb9-bb93-41a2145ec4b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6be3819-64fe-f6e8-4f69-c0bf06f32a4b",
  "kind": "theorem",
  "lexical_name": "integral_eq_of_has_deriv_within_at_off_countable",
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
  "slug": "integral-eq-of-has-deriv-within-at-off-countable--3f5ed28aba99532491f11325",
  "source": {
    "blob": "58ec17365a5e7ed878f9f72700ae7154a0ae6054",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 418,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f5ed28aba99532491f11325641dca399d18477b1404b3847ec746fa9abbea6a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6be3819-64fe-f6e8-4f69-c0bf06f32a4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_eq_of_has_deriv_within_at_off_countable (f f' : ℝ → E) {a b : ℝ} {s : Set ℝ}
    (hs : s.Countable) (Hc : ContinuousOn f [[a, b]])
    (Hd : ∀ x ∈ Ioo (min a b) (max a b) \ s, HasDerivAt f (f' x) x)
    (Hi : IntervalIntegrable f' volume a b) : ∫ x in a..b, f' x = f b - f a := by
  cases' le_total a b with hab hab
  · simp only [uIcc_of_le hab, min_eq_left hab, max_eq_right hab] at *
    exact integral_eq_of_hasDerivWithinAt_off_countable_of_le f f' hab hs Hc Hd Hi
  · simp only [uIcc_of_ge hab, min_eq_right hab, max_eq_left hab] at *
    rw [intervalIntegral.integral_symm, neg_eq_iff_eq_neg, neg_sub]
    exact integral_eq_of_hasDerivWithinAt_off_countable_of_le f f' hab hs Hc Hd Hi.symm
#align measure_theory.integral_eq_of_has_deriv_within_at_off_countable MeasureTheory.integral_eq_of_has_deriv_within_at_off_countable

/-- **Divergence theorem** for functions on the plane along rectangles. It is formulated in terms of
two functions `f g : ℝ × ℝ → E` and an integral over `Icc a b = [a.1, b.1] × [a.2, b.2]`, where
`a b : ℝ × ℝ`, `a ≤ b`. When thinking of `f` and `g` as the two coordinates of a single function
`F : ℝ × ℝ → E × E` and when `E = ℝ`, this is the usual statement that the integral of the
divergence of `F` inside the rectangle equals the integral of the normal derivative of `F` along the
boundary.

See also `MeasureTheory.integral2_divergence_prod_of_hasFDerivWithinAt_off_countable` for a
version that does not assume `a ≤ b` and uses iterated interval integral instead of the integral
over `Icc a b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ec17365a5e7ed878f9f72700ae7154a0ae6054` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
