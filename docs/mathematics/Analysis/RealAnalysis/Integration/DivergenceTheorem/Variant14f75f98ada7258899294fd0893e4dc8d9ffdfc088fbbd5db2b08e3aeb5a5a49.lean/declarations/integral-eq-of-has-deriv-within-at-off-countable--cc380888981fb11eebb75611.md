# integral_eq_of_has_deriv_within_at_off_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55331aff-559a-c831-c847-90570e5e27c3",
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
  "slug": "integral-eq-of-has-deriv-within-at-off-countable--cc380888981fb11eebb75611",
  "source": {
    "blob": "e0a63d7418cb2e445b084e44d95c32f5748ab07b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 426,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc380888981fb11eebb756111040b4e3d9e4158787e3710839be671e0e2db10e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55331aff-559a-c831-c847-90570e5e27c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–447.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0a63d7418cb2e445b084e44d95c32f5748ab07b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
