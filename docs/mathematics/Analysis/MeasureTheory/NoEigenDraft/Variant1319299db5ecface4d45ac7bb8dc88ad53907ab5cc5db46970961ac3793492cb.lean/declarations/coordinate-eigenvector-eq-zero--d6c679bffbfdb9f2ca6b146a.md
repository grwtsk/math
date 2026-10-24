# coordinate_eigenvector_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b6c6ff0-7a6c-10ba-f4a5-23b5aa6f790f",
  "kind": "theorem",
  "lexical_name": "coordinate_eigenvector_eq_zero",
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
  "slug": "coordinate-eigenvector-eq-zero--d6c679bffbfdb9f2ca6b146a",
  "source": {
    "blob": "8abe07c8db048ddfe38a04470f57d6545d933aa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 43,
    "path": "GRWTSK/Analysis/MeasureTheory/NoEigenDraft/Variant1319299db5ecface4d45ac7bb8dc88ad53907ab5cc5db46970961ac3793492cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6c679bffbfdb9f2ca6b146ab07a7480d40411239c60a0bac5abc7d260b9fb97",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NoEigenDraft/Variant1319299db5ecface4d45ac7bb8dc88ad53907ab5cc5db46970961ac3793492cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b6c6ff0-7a6c-10ba-f4a5-23b5aa6f790f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinate_eigenvector_eq_zero (μ : Measure ℝ) [NullSingletonClass μ]
    (z : ℂ) (f : coordinateDomain μ)
    (h : coordinateMultiplication μ f = z • (f : Lp ℂ 2 μ)) :
    (f : Lp ℂ 2 μ) = 0 := by
  have hne : ∀ᵐ (x : ℝ) ∂μ, (x : ℂ) ≠ z := by
    filter_upwards [μ.ae_ne z.re] with x hx
    intro he
    have he' := congrArg Complex.re he
    simpa using hx he'
  apply Lp.ext
  filter_upwards [coordinateMultiplication_apply_ae μ f,
    Lp.coeFn_smul z (f : Lp ℂ 2 μ), Lp.coeFn_zero ℂ 2 μ, hne]
    with x ha hs hz hn
  rw [h, hs] at ha
  simp only [Pi.smul_apply, smul_eq_mul] at ha
  rw [hz]
  have hm : ((x : ℂ) - z) * (f : Lp ℂ 2 μ) x = 0 := by
    rw [sub_mul]
    exact sub_eq_zero.mpr (by simpa only [smul_eq_mul] using ha.symm)
  exact (mul_eq_zero.mp hm).resolve_left (sub_ne_zero.mpr hn)

/-- Specialization to the exact shifted-density template uses no eigen assumption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NoEigenDraft/Variant1319299db5ecface4d45ac7bb8dc88ad53907ab5cc5db46970961ac3793492cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NoEigenDraft/Variant1319299db5ecface4d45ac7bb8dc88ad53907ab5cc5db46970961ac3793492cb.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8abe07c8db048ddfe38a04470f57d6545d933aa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
