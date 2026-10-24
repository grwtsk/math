# has_deriv_at_fixed_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43b0b49c-e31e-191f-a6a0-04bd1dbcd542",
  "kind": "theorem",
  "lexical_name": "has_deriv_at_fixed_kernel",
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
  "slug": "has-deriv-at-fixed-kernel--d2c55ef32d117aa4af8e01bf",
  "source": {
    "blob": "2575e1cc2b12c8fa14871fbd697a556dea3f1805",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant471861ea511f67edf717ae2ae3a512eb71d45e20de6f00d71a4c1a899f2ae166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2c55ef32d117aa4af8e01bf683ea45040de3ad15b1975c4222574e493c84c66",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant471861ea511f67edf717ae2ae3a512eb71d45e20de6f00d71a4c1a899f2ae166.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43b0b49c-e31e-191f-a6a0-04bd1dbcd542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_deriv_at_fixed_kernel (k : ℕ) (hk : k ≤ 1) (s : ℝ) :
    HasDerivAt (fixedKernel k) (-sineMoment k s) s := by
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (F := fun s u : ℝ ↦ Real.cos (u * s) * bumpMomentDensity k u)
    (F' := fun s u : ℝ ↦ -Real.sin (u * s) * oddMomentDensity k u)
    (bound := fun u ↦ ‖oddMomentDensity k u‖) (s := univ) (by simp)
    (Eventually.of_forall (fun r ↦ (fixed_kernel_integrable k (by omega) r).aestronglyMeasurable))
    (fixed_kernel_integrable k (by omega) s)
    (by
      convert (sine_moment_integrable k hk s).neg.aestronglyMeasurable using 1
      funext u
      simp only [Pi.neg_apply, neg_mul])
    (by
      filter_upwards [] with u
      intro r _
      rw [Real.norm_eq_abs, abs_mul, abs_neg]
      simpa only [Real.norm_eq_abs] using
        mul_le_of_le_one_left (abs_nonneg (oddMomentDensity k u)) (Real.abs_sin_le_one _))
    (odd_moment_density_integrable k hk).norm
    (by
      filter_upwards [] with u
      intro r _
      convert (((hasDerivAt_id r).const_mul u).cos).mul_const
        (bumpMomentDensity k u) using 1 <;> try rfl
      simp only [oddMomentDensity, mul_one, id_eq]
      ring)
  convert h.2 using 1 <;> try rfl
  unfold sineMoment
  rw [← integral_neg]
  congr 1
  funext u
  ring

/-- The odd sine moment differentiates to the next admitted cosine kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant471861ea511f67edf717ae2ae3a512eb71d45e20de6f00d71a4c1a899f2ae166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant471861ea511f67edf717ae2ae3a512eb71d45e20de6f00d71a4c1a899f2ae166.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2575e1cc2b12c8fa14871fbd697a556dea3f1805` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
