# not_separatedNhds_rat_irrational_antidiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cd355cf-9704-751f-5c1a-10a538f466bb",
  "kind": "theorem",
  "lexical_name": "not_separatedNhds_rat_irrational_antidiag",
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
  "slug": "not-separatednhds-rat-irrational-antidiag--561ea2e7adec013da4e99b8d",
  "source": {
    "blob": "1300fde046c04861f77d8b7dfab58510bcc62ae2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 268,
    "path": "GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant760aa540b4186494a68c5c053bb2bc28311f16165ba51b941ff1861ce9938fd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:561ea2e7adec013da4e99b8d083c5efcbda29186c366ffc8b6cc66849d7b7b7a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SorgenfreyLine/Variant760aa540b4186494a68c5c053bb2bc28311f16165ba51b941ff1861ce9938fd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cd355cf-9704-751f-5c1a-10a538f466bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_separatedNhds_rat_irrational_antidiag :
    ¬SeparatedNhds {x : ℝₗ × ℝₗ | x.1 + x.2 = 0 ∧ ∃ r : ℚ, ↑r = x.1}
    {x : ℝₗ × ℝₗ | x.1 + x.2 = 0 ∧ Irrational (toReal x.1)} := by
  have h₀ : ∀ {n : ℕ+}, 0 < (n : ℝ)⁻¹ := inv_pos.2 (Nat.cast_pos.2 (PNat.pos _))
  have h₀' : ∀ {n : ℕ+} {x : ℝ}, x < x + (n : ℝ)⁻¹ := lt_add_of_pos_right _ h₀
  /- Let `S` be the set of points `(x, y)` on the line `x + y = 0` such that `x` is rational.
    Let `T` be the set of points `(x, y)` on the line `x + y = 0` such that `x` is irrational.
    These sets are closed, see `SorgenfreyLine.isClosed_of_subset_antidiagonal`, and disjoint. -/
  set S := {x : ℝₗ × ℝₗ | x.1 + x.2 = 0 ∧ ∃ r : ℚ, ↑r = x.1}
  set T := {x : ℝₗ × ℝₗ | x.1 + x.2 = 0 ∧ Irrational (toReal x.1)}
  -- Consider disjoint open sets `U ⊇ S` and `V ⊇ T`.
  rintro ⟨U, V, Uo, Vo, SU, TV, UV⟩
  /- For each point `(x, -x) ∈ T`, choose a neighborhood
    `Ico x (x + k⁻¹) ×ˢ Ico (-x) (-x + k⁻¹) ⊆ V`. -/
  have : ∀ x : ℝₗ, Irrational (toReal x) →
      ∃ k : ℕ+, Ico x (x + (k : ℝₗ)⁻¹) ×ˢ Ico (-x) (-x + (k : ℝₗ)⁻¹) ⊆ V := fun x hx ↦ by
    have hV : V ∈ 𝓝 (x, -x) := Vo.mem_nhds (@TV (x, -x) ⟨add_neg_cancel x, hx⟩)
    exact (nhds_prod_antitone_basis_inv_pnat _ _).mem_iff.1 hV
  choose! k hkV using this
  /- Since the set of irrational numbers is a dense Gδ set in the usual topology of `ℝ`, there
    exists `N > 0` such that the set `C N = {x : ℝ | Irrational x ∧ k x = N}` is dense in a nonempty
    interval. In other words, the closure of this set has a nonempty interior. -/
  set C : ℕ+ → Set ℝ := fun n => closure {x | Irrational x ∧ k (toReal.symm x) = n}
  have H : {x : ℝ | Irrational x} ⊆ ⋃ n, C n := fun x hx =>
    mem_iUnion.2 ⟨_, subset_closure ⟨hx, rfl⟩⟩
  have Hd : Dense (⋃ n, interior (C n)) :=
    IsGδ.setOfPred_irrational.dense_iUnion_interior_of_closed dense_irrational
      (fun _ => isClosed_closure) H
  obtain ⟨N, hN⟩ : ∃ n : ℕ+, (interior <| C n).Nonempty := nonempty_iUnion.mp Hd.nonempty
  /- Choose a rational number `r` in the interior of the closure of `C N`, then choose `n ≥ N > 0`
    such that `Ico r (r + n⁻¹) × Ico (-r) (-r + n⁻¹) ⊆ U`. -/
  rcases Rat.denseRange_cast.exists_mem_open isOpen_interior hN with ⟨r, hr⟩
  have hrU : ((r, -r) : ℝₗ × ℝₗ) ∈ U := @SU (r, -r) ⟨add_neg_cancel _, r, rfl⟩
  obtain ⟨n, hnN, hn⟩ :
      ∃ n, N ≤ n ∧ Ico (r : ℝₗ) (r + (n : ℝₗ)⁻¹) ×ˢ Ico (-r : ℝₗ) (-r + (n : ℝₗ)⁻¹) ⊆ U :=
    ((nhds_prod_antitone_basis_inv_pnat _ _).hasBasis_ge N).mem_iff.1 (Uo.mem_nhds hrU)
  /- Finally, choose `x ∈ Ioo (r : ℝ) (r + n⁻¹) ∩ C N`. Then `(x, -r)` belongs both to `U` and `V`,
    so they are not disjoint. This contradiction completes the proof. -/
  obtain ⟨x, hxn, hx_irr, rfl⟩ :
      ∃ x : ℝ, x ∈ Ioo (r : ℝ) (r + (n : ℝ)⁻¹) ∧ Irrational x ∧ k (toReal.symm x) = N := by
    have : (r : ℝ) ∈ closure (Ioo (r : ℝ) (r + (n : ℝ)⁻¹)) := by
      rw [closure_Ioo h₀'.ne, left_mem_Icc]
      exact h₀'.le
    rcases mem_closure_iff_nhds.1 this _ (mem_interior_iff_mem_nhds.1 hr) with ⟨x', hx', hx'ε⟩
    exact mem_closure_iff.1 hx' _ isOpen_Ioo hx'ε
  refine UV.le_bot (?_ : (toReal.symm x, -(r : ℝₗ)) ∈ _)
  refine ⟨hn ⟨?_, ?_⟩, hkV (toReal.symm x) hx_irr ⟨?_, ?_⟩⟩
  · exact Ioo_subset_Ico_self hxn
  · exact left_mem_Ico.2 h₀'
  · exact left_mem_Ico.2 h₀'
  · refine (nhds_antitone_basis_Ico_inv_pnat (-x)).2 hnN ⟨neg_le_neg hxn.1.le, ?_⟩
    simp only [add_neg_lt_iff_le_add', lt_neg_add_iff_add_lt]
    exact hxn.2

/-- Topology on the Sorgenfrey line is not metrizable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SorgenfreyLine/Variant760aa540b4186494a68c5c053bb2bc28311f16165ba51b941ff1861ce9938fd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant760aa540b4186494a68c5c053bb2bc28311f16165ba51b941ff1861ce9938fd6.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1300fde046c04861f77d8b7dfab58510bcc62ae2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
