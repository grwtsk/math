# erdos_ko_rado

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b6e1219-4981-6a4f-6b40-8f38ee70be8c",
  "kind": "theorem",
  "lexical_name": "erdos_ko_rado",
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
  "slug": "erdos-ko-rado--308560ac952435471d9cde4c",
  "source": {
    "blob": "08dfb3532f0b77b4454d0354a84f98f7de6d331f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 355,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:308560ac952435471d9cde4c18975856e396b52a79614e61e5fdf2807f8b20ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b6e1219-4981-6a4f-6b40-8f38ee70be8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erdos_ko_rado {𝒜 : Finset (Finset (Fin n))} {r : ℕ}
    (h𝒜 : (𝒜 : Set (Finset (Fin n))).Intersecting) (h₂ : (𝒜 : Set (Finset (Fin n))).Sized r)
    (h₃ : r ≤ n / 2) :
    #𝒜 ≤ (n - 1).choose (r - 1) := by
  -- Take care of the r=0 case first: it's not very interesting.
  rcases Nat.eq_zero_or_pos r with b | h1r
  · convert! Nat.zero_le _
    rw [Finset.card_eq_zero, eq_empty_iff_forall_notMem]
    refine fun A HA ↦ h𝒜 HA HA ?_
    rw [disjoint_self_iff_empty, ← Finset.card_eq_zero, ← b]
    exact h₂ HA
  refine le_of_not_gt fun size ↦ ?_
  -- Consider 𝒜ᶜˢ = {sᶜ | s ∈ 𝒜}
  -- Its iterated shadow (∂^[n-2k] 𝒜ᶜˢ) is disjoint from 𝒜 by intersecting-ness
  have : Disjoint 𝒜 (∂^[n - 2 * r] 𝒜ᶜˢ) := disjoint_right.2 fun A hAbar hA ↦ by
    simp only [mem_shadow_iterate_iff_exists_sdiff, mem_compls] at hAbar
    obtain ⟨C, hC, hAC, _⟩ := hAbar
    exact h𝒜 hA hC (disjoint_of_subset_left hAC disjoint_compl_right)
  have : r ≤ n := h₃.trans (Nat.div_le_self n 2)
  have : 1 ≤ n := ‹1 ≤ r›.trans ‹r ≤ n›
  -- We know the size of 𝒜ᶜˢ since it's the same size as 𝒜
  have z : (n - 1).choose (n - r) < #𝒜ᶜˢ := by
    rwa [card_compls, choose_symm_of_eq_add (tsub_add_tsub_cancel ‹r ≤ n› ‹1 ≤ r›).symm]
  -- and everything in 𝒜ᶜˢ has size n-r.
  have h𝒜bar : (𝒜ᶜˢ : Set (Finset (Fin n))).Sized (n - r) := by simpa using h₂.compls
  -- We can use the Lovasz form of Kruskal-Katona to get |∂^[n-2k] 𝒜ᶜˢ| ≥ (n-1) choose r
  have kk := kruskal_katona_lovasz_form (i := n - 2 * r) (by lia)
    ((tsub_le_tsub_iff_left ‹1 ≤ n›).2 h1r) tsub_le_self h𝒜bar z.le
  have : n - r - (n - 2 * r) = r := by lia
  rw [this] at kk
  -- But this gives a contradiction: `n choose r < |𝒜| + |∂^[n-2k] 𝒜ᶜˢ|`
  have := calc
    n.choose r = (n - 1).choose (r - 1) + (n - 1).choose r := by
      convert! Nat.choose_succ_succ _ _ using 3 <;> rwa [Nat.sub_one, Nat.succ_pred_eq_of_pos]
    _ < #𝒜 + #(∂^[n - 2 * r] 𝒜ᶜˢ) := add_lt_add_of_lt_of_le size kk
    _ = #(𝒜 ∪ ∂^[n - 2 * r] 𝒜ᶜˢ) := by rw [card_union_of_disjoint ‹_›]
  apply this.not_ge
  convert! Set.Sized.card_le _
  · rw [Fintype.card_fin]
  rw [coe_union, Set.sized_union]
  refine ⟨‹_›, ?_⟩
  convert! h𝒜bar.shadow_iterate
  lia

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08dfb3532f0b77b4454d0354a84f98f7de6d331f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
