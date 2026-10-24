# measure_univ_of_isMulLeftInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db071fbd-5956-0ac0-b865-1b1b7bebf3ca",
  "kind": "theorem",
  "lexical_name": "measure_univ_of_isMulLeftInvariant",
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
  "slug": "measure-univ-of-ismulleftinvariant--e2f3ae294a0c87cca05abdc4",
  "source": {
    "blob": "c08d50da36d7f6b84232d58537b55d6e13b88e26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 676,
    "path": "GRWTSK/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2f3ae294a0c87cca05abdc450a75a42410eec248b17b2762fa96d815e0a47b2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db071fbd-5956-0ac0-b865-1b1b7bebf3ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_univ_of_isMulLeftInvariant [WeaklyLocallyCompactSpace G] [NoncompactSpace G]
    (μ : Measure G) [IsOpenPosMeasure μ] [μ.IsMulLeftInvariant] : μ univ = ∞ := by
  /- Consider a closed compact set `K` with nonempty interior. For any compact set `L`, one may
    find `g = g (L)` such that `L` is disjoint from `g • K`. Iterating this, one finds
    infinitely many translates of `K` which are disjoint from each other. As they all have the
    same positive mass, it follows that the space has infinite measure. -/
  obtain ⟨K, K1, hK, Kclosed⟩ : ∃ K ∈ 𝓝 (1 : G), IsCompact K ∧ IsClosed K :=
    exists_mem_nhds_isCompact_isClosed 1
  have K_pos : 0 < μ K := measure_pos_of_mem_nhds μ K1
  have A : ∀ L : Set G, IsCompact L → ∃ g : G, Disjoint L (g • K) := fun L hL =>
    exists_disjoint_smul_of_isCompact hL hK
  choose! g hg using A
  set L : ℕ → Set G := fun n => (fun T => T ∪ g T • K)^[n] K
  have Lcompact : ∀ n, IsCompact (L n) := fun n ↦ by
    induction n with
    | zero => exact hK
    | succ n IH =>
      simp_rw [L, iterate_succ']
      apply IsCompact.union IH (hK.smul (g (L n)))
  have Lclosed : ∀ n, IsClosed (L n) := fun n ↦ by
    induction n with
    | zero => exact Kclosed
    | succ n IH =>
      simp_rw [L, iterate_succ']
      apply IsClosed.union IH (Kclosed.smul (g (L n)))
  have M : ∀ n, μ (L n) = (n + 1 : ℕ) * μ K := fun n ↦ by
    induction n with
    | zero => simp only [L, one_mul, Nat.cast_one, iterate_zero, id, Nat.zero_add]
    | succ n IH =>
      calc
        μ (L (n + 1)) = μ (L n) + μ (g (L n) • K) := by
          simp_rw [L, iterate_succ']
          exact measure_union' (hg _ (Lcompact _)) (Lclosed _).measurableSet
        _ = (n + 1 + 1 : ℕ) * μ K := by
          simp only [IH, measure_smul, add_mul, Nat.cast_add, Nat.cast_one, one_mul]
  have N : Tendsto (fun n => μ (L n)) atTop (𝓝 (∞ * μ K)) := by
    simp_rw [M]
    apply ENNReal.Tendsto.mul_const _ (Or.inl ENNReal.top_ne_zero)
    exact ENNReal.tendsto_nat_nhds_top.comp (tendsto_add_atTop_nat _)
  simp only [ENNReal.top_mul', K_pos.ne', ite_false] at N
  apply top_le_iff.1
  exact le_of_tendsto' N fun n => measure_mono (subset_univ _)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c08d50da36d7f6b84232d58537b55d6e13b88e26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
