# tendsTo_eulerProduct_of_tendsTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3954cc1d-fc4d-c168-15ac-67222de719ed",
  "kind": "theorem",
  "lexical_name": "tendsTo_eulerProduct_of_tendsTo",
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
  "slug": "tendsto-eulerproduct-of-tendsto--9c7fbe3dbf9275b493a04c43",
  "source": {
    "blob": "2dbd6be26a7b8e76ea0aab63b3194c8949571b66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 275,
    "path": "GRWTSK/Topology/GeneralTopology/LFunction/Variante65eb398e03e799a3c77f04ceacf4f080c35845b6823962ab0ee36cc7c984263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c7fbe3dbf9275b493a04c43ad4c6b6be312b70ec25b2af4ba1ffacdab9908aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LFunction/Variante65eb398e03e799a3c77f04ceacf4f080c35845b6823962ab0ee36cc7c984263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3954cc1d-fc4d-c168-15ac-67222de719ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsTo_eulerProduct_of_tendsTo (f : ι → ArithmeticFunction R)
    (hf : ∀ n, ∀ᶠ i in cofinite, f i n = (1 : ArithmeticFunction R) n) :
    ∀ n, ∀ᶠ s in atTop, (∏ i ∈ s, f i) n = eulerProduct f n := by
  let : UniformSpace R := ⊥
  have : IsUniformInducing ((↑) : ArithmeticFunction R → (ℕ → R)) := ⟨rfl⟩
  classical
  suffices Multipliable f from tendsto_iff.mp this.hasProd
  simp_rw [multipliable_iff_cauchySeq_finset, CauchySeq, ← this.cauchy_map_iff,
    Filter.map_map, cauchy_map_iff', Pi.uniformity, DiscreteUniformity.eq_principal_setRelId,
    tendsto_iInf, tendsto_comap_iff, tendsto_principal, Function.comp_apply, prod_atTop_atTop_eq,
    eventually_atTop_prod_self, SetRel.mem_id]
  intro n
  replace hf : ∀ k ∈ Set.Iic n, ∀ᶠ (x : ι) in cofinite, (f x) k = (1 : ArithmeticFunction R) k :=
    fun k hk ↦ hf k
  rw [← eventually_all_finite (Set.finite_Iic n), eventually_iff_exists_mem] at hf
  obtain ⟨s, hs, hs'⟩ := hf
  let t := (mem_cofinite.mp hs).toFinset
  refine ⟨t, fun u v hu hv ↦ ?_⟩
  rw [← Finset.prod_sdiff hu, ← Finset.prod_sdiff hv]
  replace hu : ∀ i ∈ u \ t, i ∈ s := by
    intro i hi
    rw [Finset.mem_sdiff, Set.Finite.mem_toFinset, Set.notMem_compl_iff] at hi
    exact hi.2
  replace hv : ∀ i ∈ v \ t, i ∈ s := by
    intro i hi
    rw [Finset.mem_sdiff, Set.Finite.mem_toFinset, Set.notMem_compl_iff] at hi
    exact hi.2
  suffices ∀ k ≤ n, (∏ x ∈ u \ t, f x) k = (∏ x ∈ v \ t, f x) k by
    rw [mul_apply, mul_apply]
    refine Finset.sum_congr rfl fun k hk ↦ ?_
    rw [this k.1 (Nat.divisor_le (Nat.fst_mem_divisors_of_mem_antidiagonal hk))]
  suffices ∀ w, (∀ i ∈ w, i ∈ s) → ∀ k ≤ n, (∏ x ∈ w, f x) k = (1 : ArithmeticFunction R) k by
    intro k hk
    rw [this (u \ t) hu k hk, this (v \ t) hv k hk]
  intro w hw
  induction w using Finset.induction_on
  case empty => simp
  case insert i w hi hw' =>
    intro k hk
    rw [← one_mul (1 : ArithmeticFunction R), Finset.prod_insert hi, mul_apply, mul_apply]
    refine Finset.sum_congr rfl fun j hj ↦ ?_
    have h1 := hs' i (hw i (Finset.mem_insert_self i w)) j.1
      ((Nat.divisor_le (Nat.fst_mem_divisors_of_mem_antidiagonal hj)).trans hk)
    have h2 := hw' (fun i hi ↦ hw i (Finset.mem_insert_of_mem hi)) j.2
      ((Nat.divisor_le (Nat.snd_mem_divisors_of_mem_antidiagonal hj)).trans hk)
    rw [h1, h2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LFunction/Variante65eb398e03e799a3c77f04ceacf4f080c35845b6823962ab0ee36cc7c984263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LFunction/Variante65eb398e03e799a3c77f04ceacf4f080c35845b6823962ab0ee36cc7c984263.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dbd6be26a7b8e76ea0aab63b3194c8949571b66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
