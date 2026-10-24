# exists_extension_norm_eq_of_isClosedEmbedding'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81e31184-3e4d-0148-00dc-3bfb7b240692",
  "kind": "theorem",
  "lexical_name": "exists_extension_norm_eq_of_isClosedEmbedding'",
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
  "slug": "exists-extension-norm-eq-of-isclosedembedding--92f0be24b27e21f6059bb337",
  "source": {
    "blob": "0633efa8cd3de9cc199301dabd52fea3bcc6576e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 232,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant1aeef0c2aa837784214954b48fce471d6669bbc2afb689217d4d92113cb6b943.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92f0be24b27e21f6059bb3372e20fd37ea5e7553a5f82a5e4ed6a6cd3475e329",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variant1aeef0c2aa837784214954b48fce471d6669bbc2afb689217d4d92113cb6b943.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81e31184-3e4d-0148-00dc-3bfb7b240692`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_extension_norm_eq_of_isClosedEmbedding' (f : X →ᵇ ℝ) (e : C(X, Y))
    (he : IsClosedEmbedding e) : ∃ g : Y →ᵇ ℝ, ‖g‖ = ‖f‖ ∧ g.compContinuous e = f := by
  /- For the proof, we iterate `tietze_extension_step`. Each time we apply it to the difference
    between the previous approximation and `f`. -/
  choose F hF_norm hF_dist using fun f : X →ᵇ ℝ => tietze_extension_step f e he
  set g : ℕ → Y →ᵇ ℝ := fun n => (fun g => g + F (f - g.compContinuous e))^[n] 0
  have g0 : g 0 = 0 := rfl
  have g_succ : ∀ n, g (n + 1) = g n + F (f - (g n).compContinuous e) := fun n =>
    Function.iterate_succ_apply' _ _ _
  have hgf : ∀ n, dist ((g n).compContinuous e) f ≤ (2 / 3) ^ n * ‖f‖ := by
    intro n
    induction n with
    | zero => simp [g0]
    | succ n ihn =>
      rw [g_succ n, add_compContinuous, ← dist_sub_right, add_sub_cancel_left, pow_succ', mul_assoc]
      refine (hF_dist _).trans (mul_le_mul_of_nonneg_left ?_ (by norm_num1))
      rwa [← dist_eq_norm']
  have hg_dist : ∀ n, dist (g n) (g (n + 1)) ≤ 1 / 3 * ‖f‖ * (2 / 3) ^ n := by
    intro n
    calc
      dist (g n) (g (n + 1)) = ‖F (f - (g n).compContinuous e)‖ := by
        rw [g_succ, dist_eq_norm', add_sub_cancel_left]
      _ ≤ ‖f - (g n).compContinuous e‖ / 3 := hF_norm _
      _ = 1 / 3 * dist ((g n).compContinuous e) f := by rw [dist_eq_norm', one_div, div_eq_inv_mul]
      _ ≤ 1 / 3 * ((2 / 3) ^ n * ‖f‖) := mul_le_mul_of_nonneg_left (hgf n) (by norm_num1)
      _ = 1 / 3 * ‖f‖ * (2 / 3) ^ n := by ac_rfl
  have hg_cau : CauchySeq g := cauchySeq_of_le_geometric _ _ (by norm_num1) hg_dist
  have :
    Tendsto (fun n => (g n).compContinuous e) atTop
      (𝓝 <| (limUnder atTop g).compContinuous e) :=
    ((continuous_compContinuous e).tendsto _).comp hg_cau.tendsto_limUnder
  have hge : (limUnder atTop g).compContinuous e = f := by
    refine tendsto_nhds_unique this (tendsto_iff_dist_tendsto_zero.2 ?_)
    refine squeeze_zero (fun _ => dist_nonneg) hgf ?_
    rw [← zero_mul ‖f‖]
    refine (tendsto_pow_atTop_nhds_zero_of_lt_one ?_ ?_).mul tendsto_const_nhds <;> norm_num1
  refine ⟨limUnder atTop g, le_antisymm ?_ ?_, hge⟩
  · rw [← dist_zero_left, ← g0]
    refine
      (dist_le_of_le_geometric_of_tendsto₀ _ _ (by norm_num1)
        hg_dist hg_cau.tendsto_limUnder).trans_eq ?_
    ring
  · rw [← hge]
    exact norm_compContinuous_le _ _

/-- **Tietze extension theorem** for real-valued bounded continuous maps, a version with a closed
embedding and unbundled composition. If `e : C(X, Y)` is a closed embedding of a topological space
into a normal topological space and `f : X →ᵇ ℝ` is a bounded continuous function, then there exists
a bounded continuous function `g : Y →ᵇ ℝ` of the same norm such that `g ∘ e = f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variant1aeef0c2aa837784214954b48fce471d6669bbc2afb689217d4d92113cb6b943.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant1aeef0c2aa837784214954b48fce471d6669bbc2afb689217d4d92113cb6b943.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0633efa8cd3de9cc199301dabd52fea3bcc6576e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
