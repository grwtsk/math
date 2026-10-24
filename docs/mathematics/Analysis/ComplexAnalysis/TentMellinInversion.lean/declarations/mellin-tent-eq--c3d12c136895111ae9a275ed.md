# mellin_tent_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc23bb41-870e-0dd3-88ef-d88722e66385",
  "kind": "theorem",
  "lexical_name": "mellin_tent_eq",
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
  "slug": "mellin-tent-eq--c3d12c136895111ae9a275ed",
  "source": {
    "blob": "c338b95981bd643fc48488ccd539e00ecfa30c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 95,
    "path": "GRWTSK/Analysis/Complex/TentMellinInversion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3d12c136895111ae9a275ed95e02ffee87105f6226766936d61db05202af703",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentMellinInversion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc23bb41-870e-0dd3-88ef-d88722e66385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellin_tent_eq (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) (s : ℂ) :
    mellin (fun t : ℝ => (tent x h t : ℂ)) s = tentKernel x h s := by
  let f : ℝ → ℂ := fun t => (tent x h t : ℂ) * density s t
  have hsupp : Function.support f ⊆ Ioc (x - h) (x + h) :=
    weightedDensity_support x h hh s
  have hsupp0 : Function.support f ⊆ Ioi 0 := by
    intro t ht
    have ht' := hsupp ht
    exact lt_trans (by linarith : 0 < x - h) ht'.1
  have hi : Integrable f := weightedDensity_integrable x h hh ha s
  calc
    _ = ∫ t in Ioi (0 : ℝ), f t := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      change (t : ℂ) ^ (s - 1) • (tent x h t : ℂ) =
        (tent x h t : ℂ) * density s t
      rw [density_eq_cpow ht]
      simp only [smul_eq_mul, mul_comm]
    _ = ∫ t, f t := by
      rw [← integral_indicator measurableSet_Ioi, Set.indicator_eq_self.mpr hsupp0]
    _ = ∫ t in (x - h)..(x + h), f t :=
      (intervalIntegral.integral_eq_integral_of_support_subset hsupp).symm
    _ = (∫ t in (x - h)..x, f t) + (∫ t in x..(x + h), f t) :=
      (intervalIntegral.integral_add_adjacent_intervals hi.intervalIntegrable
        hi.intervalIntegrable).symm
    _ = tentKernel x h s := (tentKernel_eq_split_integral x h hh ha s).symm

/-- Continuity follows from the unchanged four compact-interval kernels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentMellinInversion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentMellinInversion.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c338b95981bd643fc48488ccd539e00ecfa30c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
