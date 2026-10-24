# tendsto_finset_sums_of_summable_of_eventually_contains_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15b7a06d-ec0d-c3fc-466f-b8cb37d18b08",
  "kind": "theorem",
  "lexical_name": "tendsto_finset_sums_of_summable_of_eventually_contains_Icc",
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
  "slug": "tendsto-finset-sums-of-summable-of-eventually-contains-icc--5d2e33dbc86a0eebfd530271",
  "source": {
    "blob": "7baba381aec4fc590920a78a7c33c97520c875e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 25,
    "path": "GRWTSK/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d2e33dbc86a0eebfd53027187ab3481d37ad5beeda75ee87762cdcd7dedfa0f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15b7a06d-ec0d-c3fc-466f-b8cb37d18b08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_finset_sums_of_summable_of_eventually_contains_Icc
    {f : Nat → Complex}
    (hf : Summable f)
    (F : Nat → Finset Nat)
    (hF : ∀ M : Nat, ∃ N₀ : Nat, ∀ N ≥ N₀, Finset.Icc 1 M ⊆ F N)
    (hzero : f 0 = 0) :
    Filter.Tendsto
      (fun N : Nat => ∑ n ∈ F N, f n)
      Filter.atTop
      (nhds (∑' n : Nat, f n)) := by
  let G : Nat → Finset Nat := fun N => insert 0 (F N)
  have hG : Filter.Tendsto G Filter.atTop Filter.atTop := by
    exact Filter.tendsto_atTop_atTop.mpr (fun S : Finset Nat => by
      obtain ⟨N₀, hN₀⟩ := hF (S.sup fun y => y)
      refine ⟨N₀, ?_⟩
      intro N hN x hxS
      by_cases hx0 : x = 0
      · simp [G, hx0]
      · have hpos : 1 ≤ x := Nat.succ_le_of_lt (Nat.pos_of_ne_zero hx0)
        have hxle : x ≤ S.sup (fun y => y) :=
          Finset.le_sup (f := fun y => y) hxS
        have hxIcc : x ∈ Finset.Icc 1 (S.sup fun y => y) :=
          Finset.mem_Icc.mpr ⟨hpos, hxle⟩
        have hxF : x ∈ F N := hN₀ N hN hxIcc
        simp [G, hxF])
  have hhas : HasSum f (∑' n : Nat, f n) := hf.hasSum
  have ht :
      Filter.Tendsto
        (fun N : Nat => ∑ n ∈ G N, f n)
        Filter.atTop
        (nhds (∑' n : Nat, f n)) :=
    hhas.comp hG
  have heq :
      (fun N : Nat => ∑ n ∈ G N, f n) =
        fun N : Nat => ∑ n ∈ F N, f n := by
    funext N
    by_cases h0 : 0 ∈ F N
    · rw [show G N = F N by simp [G, h0]]
    · rw [show G N = insert 0 (F N) by rfl]
      rw [Finset.sum_insert h0, hzero, zero_add]
  rw [← heq]
  exact ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7baba381aec4fc590920a78a7c33c97520c875e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
