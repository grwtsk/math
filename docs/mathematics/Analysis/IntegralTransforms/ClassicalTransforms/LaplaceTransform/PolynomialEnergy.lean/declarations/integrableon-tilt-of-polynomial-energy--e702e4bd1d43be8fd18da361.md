# integrableOn_tilt_of_polynomial_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff3b1b98-7ae9-1ef6-642d-d427e628f0c3",
  "kind": "theorem",
  "lexical_name": "integrableOn_tilt_of_polynomial_energy",
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
  "slug": "integrableon-tilt-of-polynomial-energy--e702e4bd1d43be8fd18da361",
  "source": {
    "blob": "526a3d4795714d8b887cf33df827a148fa46649c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 100,
    "path": "GRWTSK/Analysis/LaplaceTransform/PolynomialEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e702e4bd1d43be8fd18da3612312ad79b0edaebfacb284c03b8bacdd7b27022d",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff3b1b98-7ae9-1ef6-642d-d427e628f0c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_tilt_of_polynomial_energy {f : ℝ → ℝ} (hf : Continuous f)
    {C q : ℝ} (_hC : 0 ≤ C)
    (henergy : ∀ T : ℝ, 0 ≤ T →
      (∫ u in (0 : ℝ)..T, f u ^ 2) ≤ C * (1 + T) ^ q)
    {σ : ℝ} (hσ : 0 < σ) :
    IntegrableOn (fun u ↦ Real.exp (-σ * u) * f u) (Ioi 0) := by
  have hgeom : Summable (fun n : ℕ ↦ Real.exp (-σ * n)) := by
    simpa only [Real.rpow_zero, mul_one] using summable_exp_neg_mul_nat_add_rpow σ 0 hσ
  have hbound : Summable (fun n : ℕ ↦
      Real.exp (-σ * n) * (1 + C * ((n : ℝ) + 2) ^ q)) := by
    simpa only [mul_add, mul_one, mul_left_comm, mul_assoc] using
      hgeom.add ((summable_exp_neg_mul_nat_add_rpow σ q hσ).mul_left C)
  have hs : Summable (fun n : ℕ ↦
      ∫ u in Icc (n : ℝ) ((n : ℝ) + 1), ‖Real.exp (-σ * u) * f u‖) :=
    Summable.of_nonneg_of_le (fun n ↦ integral_nonneg (fun u ↦ norm_nonneg _))
      (tilted_block_norm_bound hf hσ henergy) hbound
  have hi : IntegrableOn (fun u ↦ Real.exp (-σ * u) * f u)
      (⋃ n : ℕ, Icc (n : ℝ) ((n : ℝ) + 1)) := by
    apply integrableOn_iUnion_of_summable_integral_norm _ hs
    intro n
    exact ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul hf).integrableOn_Icc
  apply hi.mono_set
  intro u hu
  refine mem_iUnion.mpr ⟨⌊u⌋₊, ?_⟩
  exact ⟨Nat.floor_le hu.le, (Nat.lt_floor_add_one u).le⟩


end GRWTSK.RiemannHypothesis.CCC
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LaplaceTransform/PolynomialEnergy.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `526a3d4795714d8b887cf33df827a148fa46649c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
