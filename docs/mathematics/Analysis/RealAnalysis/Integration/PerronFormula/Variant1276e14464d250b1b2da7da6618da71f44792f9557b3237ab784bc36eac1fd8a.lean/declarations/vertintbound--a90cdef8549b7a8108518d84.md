# vertIntBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d3885ee-a6ad-bcd0-5ff9-d9d382be4d49",
  "kind": "lemma",
  "lexical_name": "vertIntBound",
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
  "slug": "vertintbound--a90cdef8549b7a8108518d84",
  "source": {
    "blob": "37ebc097b2f05a955e08b89d04b4afa1b77f2ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 408,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a90cdef8549b7a8108518d84d2751ab70c834dbeb78aebe9cf2adf355c82e32e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d3885ee-a6ad-bcd0-5ff9-d9d382be4d49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma vertIntBound (xpos : 0 < x) (σ_gt_one : 1 < σ) :
    ‖VerticalIntegral (f x) σ‖ ≤
      x ^ σ * ∫ (t : ℝ), 1 / ((1 + t ^ 2).sqrt * (2 + t ^ 2).sqrt) := by
  calc
    _ = ‖∫ (t : ℝ), x ^ (σ + t * I) / ((σ + t * I) * (σ + t * I + 1))‖ := ?_
    _ ≤ ∫ (t : ℝ), ‖x ^ (σ + t * I) / ((σ + t * I) * (σ + t * I + 1))‖ :=
        norm_integral_le_integral_norm _
    _ = ∫ (t : ℝ), x ^ σ / ‖((σ + t * I) * (σ + t * I + 1))‖ := ?_
    _ = x ^ σ * ∫ (t : ℝ), 1 / (‖σ + t * I‖ * ‖σ + t * I + 1‖) := ?_
    _ ≤ x ^ σ * ∫ (t : ℝ), 1 / ((1 + t ^ 2).sqrt * (2 + t ^ 2).sqrt) :=
        mul_le_mul_of_nonneg_left ?_ (rpow_nonneg xpos.le _)
  · simp [VerticalIntegral]
  · simp [Complex.norm_cpow_eq_rpow_re_of_pos xpos]
  · simp [integral_const_mul, div_eq_mul_inv]
  · by_cases hint : Integrable fun (a : ℝ) ↦ 1 / (‖σ + a * I‖ * ‖σ + a * I + 1‖)
    swap
    · rw [integral_undef hint]; exact integral_nonneg <| fun t ↦ by positivity
    conv => rhs; rhs; intro a; rhs
    apply integral_mono hint
    · have := integralPosAux
      contrapose! this
      simp_rw [integral_undef this, le_rfl]
    rw [Pi.le_def]
    intro t
    gcongr <;> apply sqrt_le_sqrt
    · simp_rw [normSq_add_mul_I, add_le_add_iff_right, one_le_pow₀ σ_gt_one.le]
    · rw [add_right_comm, ← ofReal_one, ← ofReal_add, normSq_add_mul_I, add_le_add_iff_right]
      nlinarith
  rfl




@[blueprint
  "vertIntBoundLeft"
  (title := "vertIntBoundLeft")
  (statement := /--
  Let $x>1$ and $\sigma<-3/2$. Then
  $$\left|
  \int_{(\sigma)}\frac{x^s}{s(s+1)}ds\right| \leq
    x^\sigma \int_\R\frac{1}{|(1/4+t ^ 2)(2+t ^ 2)|^{1/2}}dt.$$
  -/)
  (proof := /-- Triangle inequality and pointwise estimate. -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ebc097b2f05a955e08b89d04b4afa1b77f2ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
