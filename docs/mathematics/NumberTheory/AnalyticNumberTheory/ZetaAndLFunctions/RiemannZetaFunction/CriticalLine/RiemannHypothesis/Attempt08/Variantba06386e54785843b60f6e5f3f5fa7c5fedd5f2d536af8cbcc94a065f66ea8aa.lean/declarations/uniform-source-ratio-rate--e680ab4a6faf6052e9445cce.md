# uniform_source_ratio_rate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97681a2f-7670-d4ac-46e2-7dcfa3e9e8b7",
  "kind": "theorem",
  "lexical_name": "uniform_source_ratio_rate",
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
  "slug": "uniform-source-ratio-rate--e680ab4a6faf6052e9445cce",
  "source": {
    "blob": "76ab7a326ba68ca9105a493dcb5d2d1c237dba32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 250,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt08/Variantba06386e54785843b60f6e5f3f5fa7c5fedd5f2d536af8cbcc94a065f66ea8aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e680ab4a6faf6052e9445cce22e17718787bdf382de07a7665557f32c864158e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt08/Variantba06386e54785843b60f6e5f3f5fa7c5fedd5f2d536af8cbcc94a065f66ea8aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97681a2f-7670-d4ac-46e2-7dcfa3e9e8b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_source_ratio_rate {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (hf : z^2-1/4 ≠ 0) :
    ‖scaledAmplitude A z/leadingCoefficient z-1‖ ≤ rateConstant delta/A := by
  have hp : 0 < A := by linarith
  have hnz := half_plane_ne_zero (lt_of_lt_of_le hdelta hz)
  have hr := normalizationRatio_bounds hA
  have hE := errorPolynomial_nonneg hdelta
  have he : (normalizationRatio A : ℂ)*(positiveEndpoint A z-
      Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)-1 =
      (normalizationRatio A : ℂ)*((positiveEndpoint A z-1)-
        Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)+
        ((normalizationRatio A : ℂ)-1) := by ring
  have hrnorm : ‖(normalizationRatio A : ℂ)‖ ≤ 1 := by
    rw [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg hr.1]
    exact hr.2
  rw [source_ratio_exact hA hnz hf,he]
  calc
    _ ≤ ‖(normalizationRatio A : ℂ)‖*
        ‖(positiveEndpoint A z-1)-Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z‖+
        ‖(normalizationRatio A : ℂ)-1‖ := by
      simpa only [norm_mul] using norm_add_le
        ((normalizationRatio A : ℂ)*((positiveEndpoint A z-1)-
          Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z))
        ((normalizationRatio A : ℂ)-1)
    _ ≤ ‖(positiveEndpoint A z-1)-Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z‖+
        (1-normalizationRatio A) := by
      rw [normalizationRatio_norm_deficit hA]
      nlinarith [norm_nonneg ((positiveEndpoint A z-1)-
        Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)]
    _ ≤ ‖positiveEndpoint A z-1‖+
        ‖Complex.exp (-2*(A : ℂ)*z)‖*‖reflectedEndpoint A z‖+
        (1-normalizationRatio A) := by
      have ht := norm_sub_le (positiveEndpoint A z-1)
        (Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)
      rw [norm_mul] at ht
      linarith
    _ ≤ errorPolynomial delta/A+(1/(2*delta*A))*(1+errorPolynomial delta)+
        (65536/45045+196608/5005)/(2*(4096/109395)*A^2) := by
      gcongr
      · exact positiveEndpoint_error hA hdelta hz
      · exact negative_endpoint_rate hA hdelta hz
      · exact reflectedEndpoint_bound hA hdelta hz
      · exact normalizationRatio_deficit hA
    _ ≤ errorPolynomial delta/A+(1/(2*delta*A))*(1+errorPolynomial delta)+
        (65536/45045+196608/5005)/(2*(4096/109395)*A) := by
      gcongr
      nlinarith [sq_nonneg (A-1)]
    _ = _ := by unfold rateConstant; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt08/Variantba06386e54785843b60f6e5f3f5fa7c5fedd5f2d536af8cbcc94a065f66ea8aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt08/Variantba06386e54785843b60f6e5f3f5fa7c5fedd5f2d536af8cbcc94a065f66ea8aa.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76ab7a326ba68ca9105a493dcb5d2d1c237dba32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
