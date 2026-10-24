# moment_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e75abf8-f7cf-5a26-8bf6-60057468c8b9",
  "kind": "theorem",
  "lexical_name": "moment_tendsto",
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
  "slug": "moment-tendsto--d314572e8e3feb45de98cba3",
  "source": {
    "blob": "351391415cdb800d574168961b0b3bef1d55f53a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 486,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variantc2dd65e66cfdf5201a5a2d99427dd7e80055e75f903c5c2f6df4a8ae1054de08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d314572e8e3feb45de98cba3c53d92a1e2d3938ee081483dbe7ecbfb757f993b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variantc2dd65e66cfdf5201a5a2d99427dd7e80055e75f903c5c2f6df4a8ae1054de08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e75abf8-f7cf-5a26-8bf6-60057468c8b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem moment_tendsto {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) (σ : ℝ) :
    Tendsto (fun i ↦ ∫ x,
      Real.exp (σ * x) * smoothedTest A (ε i) (hε i) x) l
      (𝓝 (∫ x, Real.exp (σ * x) * actualTest A x)) := by
  obtain ⟨M, hM, _, hbound⟩ := common_norm_bound A hA
  let bound : ℝ → ℝ :=
    (Icc (-A - 1) (A + 1)).indicator
      (fun _ ↦ Real.exp (|σ| * (A + 1)) * M)
  have hi : Integrable bound volume :=
    continuous_const.integrableOn_Icc.integrable_indicator measurableSet_Icc
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  have hdom : ∀ᶠ i in l, ∀ᵐ x ∂volume,
      ‖Real.exp (σ * x) * smoothedTest A (ε i) (hε i) x‖ ≤ bound x := by
    filter_upwards [hsmall] with i hi
    exact Eventually.of_forall fun x ↦ by
      by_cases hx : x ∈ Icc (-A - 1) (A + 1)
      · have hxx : |x| ≤ A + 1 :=
          abs_le.mpr ⟨by linarith [hx.1], hx.2⟩
        have hs : σ * x ≤ |σ| * (A + 1) := by
          calc
            σ * x ≤ |σ * x| := le_abs_self _
            _ = |σ| * |x| := abs_mul _ _
            _ ≤ _ := mul_le_mul_of_nonneg_left hxx (abs_nonneg _)
        simp only [bound, indicator_of_mem hx, norm_mul,
          Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
        exact mul_le_mul (Real.exp_le_exp.mpr hs)
          (hbound (ε i) (hε i) x)
          (abs_nonneg _) (Real.exp_pos _).le
      · rw [smoothed_zero_outside_common A (ε i) hA (hε i) hi x hx]
        simp only [mul_zero, norm_zero, bound,
          indicator_of_notMem hx, le_refl]
  exact tendsto_integral_filter_of_dominated_convergence bound
    (Eventually.of_forall fun i ↦
      (smoothed_moment_integrable A (ε i) σ hA (hε i)).1)
    hdom hi
    (Eventually.of_forall fun x ↦
      (smoothedTest_tendsto A hA ε hε hlim x).const_mul (Real.exp (σ * x)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variantc2dd65e66cfdf5201a5a2d99427dd7e80055e75f903c5c2f6df4a8ae1054de08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variantc2dd65e66cfdf5201a5a2d99427dd7e80055e75f903c5c2f6df4a8ae1054de08.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `351391415cdb800d574168961b0b3bef1d55f53a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
