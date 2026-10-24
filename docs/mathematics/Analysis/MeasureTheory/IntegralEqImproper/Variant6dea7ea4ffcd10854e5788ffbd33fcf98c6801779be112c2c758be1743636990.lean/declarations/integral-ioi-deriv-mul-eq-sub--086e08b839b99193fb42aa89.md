# integral_Ioi_deriv_mul_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc141eb0-f7d6-1b2b-cf76-ec1a400622a4",
  "kind": "theorem",
  "lexical_name": "integral_Ioi_deriv_mul_eq_sub",
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
  "slug": "integral-ioi-deriv-mul-eq-sub--086e08b839b99193fb42aa89",
  "source": {
    "blob": "a228878c46fab1445c32059592ea0ad71528f2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1413,
    "line": 1393,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:086e08b839b99193fb42aa892d69c77cecf9fe592d708d35d6a6d8b2abfe2214",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc141eb0-f7d6-1b2b-cf76-ec1a400622a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1393–1413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_Ioi_deriv_mul_eq_sub
    (hu : ∀ x ∈ Ioi a, HasDerivAt u (u' x) x) (hv : ∀ x ∈ Ioi a, HasDerivAt v (v' x) x)
    (huv : IntegrableOn (u' * v + u * v') (Ioi a))
    (h_zero : Tendsto (u * v) (𝓝[>] a) (𝓝 a')) (h_infty : Tendsto (u * v) atTop (𝓝 b')) :
    ∫ (x : ℝ) in Ioi a, u' x * v x + u x * v' x = b' - a' := by
  rw [← Ici_sdiff_left] at h_zero
  let f := Function.update (u * v) a a'
  have hderiv : ∀ x ∈ Ioi a, HasDerivAt f (u' x * v x + u x * v' x) x := by
    intro x (hx : a < x)
    apply ((hu x hx).mul (hv x hx)).congr_of_eventuallyEq
    filter_upwards [eventually_ne_nhds hx.ne.symm] with y hy
    exact Function.update_of_ne hy a' (u * v)
  have htendsto : Tendsto f atTop (𝓝 b') := by
    apply h_infty.congr'
    filter_upwards [eventually_ne_atTop a] with x hx
    exact (Function.update_of_ne hx a' (u * v)).symm
  simpa using integral_Ioi_of_hasDerivAt_of_tendsto
    (continuousWithinAt_update_same.mpr h_zero) hderiv huv htendsto

/-- **Integration by parts on (a, ∞).**
For finite intervals, see: `intervalIntegral.integral_mul_deriv_eq_deriv_mul`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean#L1393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a228878c46fab1445c32059592ea0ad71528f2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
