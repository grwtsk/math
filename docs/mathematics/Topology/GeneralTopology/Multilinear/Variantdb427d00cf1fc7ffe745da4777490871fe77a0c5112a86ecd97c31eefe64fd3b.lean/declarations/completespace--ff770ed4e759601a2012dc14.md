# completeSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd17c47b06d80d3d60c3af915a16b2b16a6650cf43014c911e90749b31d49498",
  "kind": "instance",
  "lexical_name": "completeSpace",
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
  "slug": "completespace--ff770ed4e759601a2012dc14",
  "source": {
    "blob": "c9ea4c907ee19bb86bfb8a13880dbb434356eeee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 777,
    "line": 704,
    "path": "GRWTSK/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff770ed4e759601a2012dc147ff88589a58ec9ca26024536eb0a1e6aac3168e3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd17c47b06d80d3d60c3af915a16b2b16a6650cf43014c911e90749b31d49498`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–777.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance completeSpace [CompleteSpace G] : CompleteSpace (ContinuousMultilinearMap 𝕜 E G) := by
  have nonneg : ∀ v : ∀ i, E i, 0 ≤ ∏ i, ‖v i‖ := fun v =>
    Finset.prod_nonneg fun i _ => norm_nonneg _
  -- We show that every Cauchy sequence converges.
  refine' Metric.complete_of_cauchySeq_tendsto fun f hf => _
  -- We now expand out the definition of a Cauchy sequence,
  rcases cauchySeq_iff_le_tendsto_0.1 hf with ⟨b, b0, b_bound, b_lim⟩
  -- and establish that the evaluation at any point `v : Π i, E i` is Cauchy.
  have cau : ∀ v, CauchySeq fun n => f n v := by
    intro v
    apply cauchySeq_iff_le_tendsto_0.2 ⟨fun n => b n * ∏ i, ‖v i‖, _, _, _⟩
    · intro
      exact mul_nonneg (b0 _) (nonneg v)
    · intro n m N hn hm
      rw [dist_eq_norm]
      apply le_trans ((f n - f m).le_op_norm v) _
      exact mul_le_mul_of_nonneg_right (b_bound n m N hn hm) (nonneg v)
    · simpa using b_lim.mul tendsto_const_nhds
  -- We assemble the limits points of those Cauchy sequences
  -- (which exist as `G` is complete)
  -- into a function which we call `F`.
  choose F hF using fun v => cauchySeq_tendsto_of_complete (cau v)
  -- Next, we show that this `F` is multilinear,
  let Fmult : MultilinearMap 𝕜 E G :=
    { toFun := F
      map_add' := fun v i x y => by
        skip
        have A := hF (Function.update v i (x + y))
        have B := (hF (Function.update v i x)).add (hF (Function.update v i y))
        simp at A B
        exact tendsto_nhds_unique A B
      map_smul' := fun v i c x => by
        skip
        have A := hF (Function.update v i (c • x))
        have B := Filter.Tendsto.smul (@tendsto_const_nhds _ ℕ _ c _) (hF (Function.update v i x))
        simp at A B
        exact tendsto_nhds_unique A B }
  -- and that `F` has norm at most `(b 0 + ‖f 0‖)`.
  have Fnorm : ∀ v, ‖F v‖ ≤ (b 0 + ‖f 0‖) * ∏ i, ‖v i‖ := by
    intro v
    have A : ∀ n, ‖f n v‖ ≤ (b 0 + ‖f 0‖) * ∏ i, ‖v i‖ := by
      intro n
      apply le_trans ((f n).le_op_norm _) _
      apply mul_le_mul_of_nonneg_right _ (nonneg v)
      calc
        ‖f n‖ = ‖f n - f 0 + f 0‖ := by
          congr 1
          abel
        _ ≤ ‖f n - f 0‖ + ‖f 0‖ := (norm_add_le _ _)
        _ ≤ b 0 + ‖f 0‖ := by
          apply add_le_add_right
          simpa [dist_eq_norm] using b_bound n 0 0 (zero_le _) (zero_le _)
    exact le_of_tendsto (hF v).norm (eventually_of_forall A)
  -- Thus `F` is continuous, and we propose that as the limit point of our original Cauchy sequence.
  let Fcont := Fmult.mkContinuous _ Fnorm
  use Fcont
  -- Our last task is to establish convergence to `F` in norm.
  have : ∀ n, ‖f n - Fcont‖ ≤ b n := by
    intro n
    apply op_norm_le_bound _ (b0 n) fun v => ?_
    have A : ∀ᶠ m in atTop, ‖(f n - f m) v‖ ≤ b n * ∏ i, ‖v i‖ := by
      refine' eventually_atTop.2 ⟨n, fun m hm => _⟩
      apply le_trans ((f n - f m).le_op_norm _) _
      exact mul_le_mul_of_nonneg_right (b_bound n m n le_rfl hm) (nonneg v)
    have B : Tendsto (fun m => ‖(f n - f m) v‖) atTop (𝓝 ‖(f n - Fcont) v‖) :=
      Tendsto.norm (tendsto_const_nhds.sub (hF v))
    exact le_of_tendsto B A
  erw [tendsto_iff_norm_tendsto_zero]
  exact squeeze_zero (fun n => norm_nonneg _) this b_lim
end ContinuousMultilinearMap

/-- If a continuous multilinear map is constructed from a multilinear map via the constructor
`mkContinuous`, then its norm is bounded by the bound given to the constructor if it is
nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9ea4c907ee19bb86bfb8a13880dbb434356eeee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
