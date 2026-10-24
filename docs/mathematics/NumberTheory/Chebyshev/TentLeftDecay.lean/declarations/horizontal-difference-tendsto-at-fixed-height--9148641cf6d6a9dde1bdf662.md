# horizontal_difference_tendsto_at_fixed_height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bd371b2-b4a5-7938-654c-1b96d47468bf",
  "kind": "theorem",
  "lexical_name": "horizontal_difference_tendsto_at_fixed_height",
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
  "slug": "horizontal-difference-tendsto-at-fixed-height--9148641cf6d6a9dde1bdf662",
  "source": {
    "blob": "199e8ec0815fdcc435a005b0c69bad3836909245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 120,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentLeftDecay.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9148641cf6d6a9dde1bdf66208dd0475059e072f9ff68671bb3f836c4b7753dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentLeftDecay.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bd371b2-b4a5-7938-654c-1b96d47468bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem horizontal_difference_tendsto_at_fixed_height (x h T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hT : 0 < T)
    (havoid : ∀ z : ZeroPoint, height z ≠ T) :
    Tendsto (fun N : ℕ =>
      (horizontal (integrand x h) (leftEdge N) 2 T -
        horizontal (integrand x h) (leftEdge N) 2 (-T)) /
          (((2 * Real.pi : ℝ) : ℂ) * Complex.I)) atTop
      (𝓝 (vertical (integrand x h) 2 T / ((2 * Real.pi : ℝ) : ℂ) -
        ((h : ℂ) - (∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) +
          (rationalTentCorrection x h : ℂ)))) := by
  have hc : Tendsto (fun N : ℕ => (correctionPrefix N x h : ℂ)) atTop
      (𝓝 (rationalTentCorrection x h : ℂ)) :=
    Complex.continuous_ofReal.continuousAt.tendsto.comp (correctionPrefix_tendsto x h hh ha)
  have he (N : ℕ) :
      (horizontal (integrand x h) (leftEdge N) 2 T -
        horizontal (integrand x h) (leftEdge N) 2 (-T)) /
          (((2 * Real.pi : ℝ) : ℂ) * Complex.I) =
      vertical (integrand x h) 2 T / ((2 * Real.pi : ℝ) : ℂ) -
        ((h : ℂ) - (∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) +
          (correctionPrefix N x h : ℂ)) -
        vertical (integrand x h) (leftEdge N) T / ((2 * Real.pi : ℝ) : ℂ) := by
    have hf := right_residue_at_height x h hh ha N T hT havoid
    unfold edgeRemainder at hf
    linear_combination -hf
  simp_rw [he]
  simpa only [sub_zero] using
    (tendsto_const_nhds.sub (tendsto_const_nhds.add hc)).sub
      (normalized_left_tendsto_zero x h T hh ha hT.le)

end
end GRWTSK.NumberTheory.Chebyshev.TentLeftDecay
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentLeftDecay.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentLeftDecay.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `199e8ec0815fdcc435a005b0c69bad3836909245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
