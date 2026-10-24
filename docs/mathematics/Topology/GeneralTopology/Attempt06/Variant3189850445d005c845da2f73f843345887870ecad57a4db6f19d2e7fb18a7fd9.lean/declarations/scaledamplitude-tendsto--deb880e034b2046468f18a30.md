# scaledAmplitude_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e2e3c2c-3cce-0d9b-0c99-300cf656b565",
  "kind": "theorem",
  "lexical_name": "scaledAmplitude_tendsto",
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
  "slug": "scaledamplitude-tendsto--deb880e034b2046468f18a30",
  "source": {
    "blob": "00a15798822a50988ed99e8cd514ef65f41097c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 117,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt06/Variant3189850445d005c845da2f73f843345887870ecad57a4db6f19d2e7fb18a7fd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:deb880e034b2046468f18a309a8391374a911fb89360d1a770e458c5613663dd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt06/Variant3189850445d005c845da2f73f843345887870ecad57a4db6f19d2e7fb18a7fd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e2e3c2c-3cce-0d9b-0c99-300cf656b565`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledAmplitude_tendsto (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => scaledAmplitude A z) atTop (𝓝 (leadingCoefficient z)) := by
  have hnz := half_plane_ne_zero hz
  have hpos := transformPolynomial_ratio_tendsto z
  have hneg := transformPolynomial_ratio_tendsto (-z)
  have hex := negative_endpoint_exponential_tendsto z hz
  have hs : (Real.sqrt (4096/109395 : ℝ) : ℂ) ≠ 0 := by
    apply Complex.ofReal_ne_zero.mpr
    exact (Real.sqrt_pos.mpr (by norm_num : (0 : ℝ)<4096/109395)).ne'
  have ht := ((hpos.sub (hex.mul hneg)).const_mul
    (384*(z^2-1/4)/z^9)).div sqrt_normalization_tendsto hs
  have heq : (fun A : ℝ => scaledAmplitude A z) =ᶠ[atTop]
      (fun A : ℝ => (384*(z^2-1/4)/z^9)*
        (transformPolynomial ((A : ℂ)*z)/(A : ℂ)^4-
          Complex.exp (-2*(A : ℂ)*z)*
            (transformPolynomial ((A : ℂ)*(-z))/(A : ℂ)^4))/
        (Real.sqrt (sourceNormalization A) : ℂ)) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    rw [scaledAmplitude_exact hA z hnz,show (A : ℂ)*(-z) = -((A : ℂ)*z) by ring]
    ring
  apply Tendsto.congr' heq.symm
  have hv : (384*(z^2-1/4)/z^9)*(z^4-0*(-z)^4)/
      (Real.sqrt (4096/109395 : ℝ) : ℂ) = leadingCoefficient z := by
    unfold leadingCoefficient
    field_simp
    ring
  rw [← hv]
  exact ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt06/Variant3189850445d005c845da2f73f843345887870ecad57a4db6f19d2e7fb18a7fd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt06/Variant3189850445d005c845da2f73f843345887870ecad57a4db6f19d2e7fb18a7fd9.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00a15798822a50988ed99e8cd514ef65f41097c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
