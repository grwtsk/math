# ContinuousSMul.topology_eq_of_nhds_inf_principal_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d024339-4b37-6343-2ce7-1b1519947314",
  "kind": "lemma",
  "lexical_name": "ContinuousSMul.topology_eq_of_nhds_inf_principal_eq",
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
  "slug": "continuoussmul-topology-eq-of-nhds-inf-principal-eq--ae50dc9bc1161658de27c629",
  "source": {
    "blob": "f41f63c573f952eaf4c222df2553fa19a538b854",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 86,
    "path": "GRWTSK/Algebra/LinearAlgebra/EmbeddingOfLocal/Variant784a4bf7dff54798858f0272edb986c4d99ddf066ec45a124dfa78e6dd842b56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae50dc9bc1161658de27c62907e67c7049655f8b84f4edbce443e1a159808025",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EmbeddingOfLocal/Variant784a4bf7dff54798858f0272edb986c4d99ddf066ec45a124dfa78e6dd842b56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d024339-4b37-6343-2ce7-1b1519947314`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousSMul.topology_eq_of_nhds_inf_principal_eq (t₁ t₂ : TopologicalSpace E)
    [@IsTopologicalAddGroup E t₁ _] [@IsTopologicalAddGroup E t₂ _]
    [@ContinuousSMul 𝕜₁ E _ _ t₁] [@ContinuousSMul 𝕜₁ E _ _ t₂]
    {V : Set E} (V_mem : V ∈ @nhds E t₁ 0) (H : @nhds E t₁ 0 ⊓ 𝓟 V = @nhds E t₂ 0 ⊓ 𝓟 V) :
    t₁ = t₂ := by
  classical
  -- For `i = 1, 2`, denote by `𝓕ᵢ` the filter of neighborhoods of `0` for the topology `tᵢ`.
  set 𝓕₁ := @nhds E t₁ 0
  set 𝓕₂ := @nhds E t₂ 0
  -- Note that, because `V ∈ 𝓕₁`, `H` may be rewritten as `𝓕₁ = 𝓕₂ ⊓ 𝓟 V`.
  replace H : 𝓕₁ = 𝓕₂ ⊓ 𝓟 V := by simpa [← H]
  -- Because both `t₁` and `t₂` are additive group topologies, it is enough to show `𝓕₁ = 𝓕₂`.
  suffices 𝓕₁ = 𝓕₂ by rwa [IsTopologicalAddGroup.ext_iff] <;> infer_instance
  -- If we can show that `V ∈ 𝓕₂` we are done, because then `𝓕₁ = 𝓕₂ ⊓ 𝓟 V = 𝓕₂`.
  suffices V ∈ 𝓕₂ by simpa [H]
  -- Hence, let us show that `V ∈ 𝓕₂`. Fix a scalar `c` with `0 < ‖c‖ < 1`.
  obtain ⟨c, hc₀, hc₁⟩ := NormedField.exists_norm_lt_one 𝕜₁
  have c_ne : c ≠ 0 := norm_pos_iff.mp hc₀
  -- We know that `c • V ∈ 𝓕₁ = 𝓕₂ ⊓ 𝓟 V`.
  have cV_mem : c • V ∈ 𝓕₂ ⊓ 𝓟 V := by
    simpa [← H, 𝓕₁, set_smul_mem_nhds_zero_iff c_ne]
  -- Furthermore, we know that `𝓕₂` has a basis of balanced sets
  have basis_𝓕₂ : HasBasis 𝓕₂ (fun (s : Set E) ↦ s ∈ 𝓕₂ ∧ Balanced 𝕜₁ s) id :=
    let := t₂; nhds_basis_balanced 𝕜₁ E
  -- Hence, we get a balanced set `W ∈ 𝓕₂` such that `W ∩ V ⊆ c • V`.
  obtain ⟨W, ⟨W_mem_𝓕₂, W_bal⟩, hW⟩ := basis_𝓕₂.inf_principal V |>.mem_iff.mp cV_mem
  -- We claim that `W ⊆ V`. This will conclude the proof, since `W ∈ 𝓕₂`.
  suffices W ⊆ V from mem_of_superset W_mem_𝓕₂ this
  -- Let `w ∈ W` be arbitrary.
  intro w w_in_W
  -- Because `V` is a `t₁`-neighborhood of `0`, we have `c ^ n • w ∈ V` for some natural number `n`.
  obtain ⟨n, hn⟩ : ∃ n : ℕ, c ^ n • w ∈ V :=
    let := t₁
    tendsto_pow_atTop_nhds_zero_of_norm_lt_one hc₁ |>.zero_smul_const w
      |>.eventually_mem V_mem |>.exists
  -- We will conclude by reducing `c ^ n • w ∈ V` to `w = c ^ 0 • w ∈ V` inductively.
  suffices c ^ 0 • w ∈ V by simpa
  apply Nat.decreasingInduction (motive := fun (k : ℕ) _ ↦ c^k • w ∈ V) ?_ hn n.zero_le
  -- To do so, we show that if `k : ℕ` is such that `c ^ (k + 1) • w ∈ V` then `c ^ k • w ∈ V`.
  intro k _ (hk : c ^ (k + 1) • w ∈ V)
  -- Indeed, because `W` is balanced, we have `c ^ (k + 1) • w ∈ W ∩ V ⊆ c • V`
  have : c ^ (k + 1) • w ∈ c • V :=
    hW ⟨W_bal.smul_mem (by grw [norm_pow, hc₁.le, one_pow]) w_in_W, hk⟩
  -- Cancelling `c`, we get `c ^ k • w ∈ V` as we claimed.
  rwa [pow_add, pow_one, mul_comm, mul_smul, smul_mem_smul_set_iff₀ c_ne V] at this

variable (𝕜₁) in
/-- Consider a vector space `E` over a `NontriviallyNormedField` `𝕜`, and `t₁`, `t₂` two topologies
on `E` which are compatible with the vector space structure.

Assume that there is a `t₁`-neighborhood of zero `V` such that the two topogies induce the
same topology *on the subspace `V`*. Then `t₁ = t₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EmbeddingOfLocal/Variant784a4bf7dff54798858f0272edb986c4d99ddf066ec45a124dfa78e6dd842b56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EmbeddingOfLocal/Variant784a4bf7dff54798858f0272edb986c4d99ddf066ec45a124dfa78e6dd842b56.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f41f63c573f952eaf4c222df2553fa19a538b854` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
