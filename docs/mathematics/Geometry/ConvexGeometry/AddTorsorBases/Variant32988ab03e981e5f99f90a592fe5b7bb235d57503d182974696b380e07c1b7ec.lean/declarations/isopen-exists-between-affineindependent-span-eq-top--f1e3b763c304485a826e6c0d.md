# IsOpen.exists_between_affineIndependent_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b70f42034fa02b8e527d33440c774974ded24b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:395e05aa-61c9-5abe-82ad-800f2fbe42f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09bf67cc-62c1-d252-7920-46075996bb90",
  "kind": "theorem",
  "lexical_name": "IsOpen.exists_between_affineIndependent_span_eq_top",
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
  "slug": "isopen-exists-between-affineindependent-span-eq-top--f1e3b763c304485a826e6c0d",
  "source": {
    "blob": "8b70f42034fa02b8e527d33440c774974ded24b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 90,
    "path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1e3b763c304485a826e6c0da0c69ae22efbe16d566e0d36d39cf0ae55d781b1",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09bf67cc-62c1-d252-7920-46075996bb90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpen.exists_between_affineIndependent_span_eq_top {s u : Set P} (hu : IsOpen u)
    (hsu : s ⊆ u) (hne : s.Nonempty) (h : AffineIndependent ℝ ((↑) : s → P)) :
    ∃ t : Set P, s ⊆ t ∧ t ⊆ u ∧ AffineIndependent ℝ ((↑) : t → P) ∧ affineSpan ℝ t = ⊤ := by
  obtain ⟨q, hq⟩ := hne
  obtain ⟨ε, ε0, hεu⟩ := Metric.nhds_basis_closedBall.mem_iff.1 (hu.mem_nhds <| hsu hq)
  obtain ⟨t, ht₁, ht₂, ht₃⟩ := exists_subset_affineIndependent_affineSpan_eq_top h
  let f : P → P := fun y => lineMap q y (ε / dist y q)
  have hf : ∀ y, f y ∈ u := by
    refine' fun y => hεu _
    simp only
    rw [Metric.mem_closedBall, lineMap_apply, dist_vadd_left, norm_smul, Real.norm_eq_abs,
      dist_eq_norm_vsub V y q, abs_div, abs_of_pos ε0, abs_of_nonneg (norm_nonneg _), div_mul_comm]
    exact mul_le_of_le_one_left ε0.le (div_self_le_one _)
  have hεyq : ∀ (y) (_ : y ∉ s), ε / dist y q ≠ 0 := fun y hy =>
    div_ne_zero ε0.ne' (dist_ne_zero.2 (ne_of_mem_of_not_mem hq hy).symm)
  classical
  let w : t → ℝˣ := fun p => if hp : (p : P) ∈ s then 1 else Units.mk0 _ (hεyq (↑p) hp)
  refine' ⟨Set.range fun p : t => lineMap q p (w p : ℝ), _, _, _, _⟩
  · intro p hp; use ⟨p, ht₁ hp⟩; simp [hp]
  · rintro y ⟨⟨p, hp⟩, rfl⟩
    by_cases hps : p ∈ s <;>
    simp only [hps, lineMap_apply_one, Units.val_mk0, dif_neg, dif_pos, not_false_iff,
      Units.val_one, Subtype.coe_mk] <;>
    [exact hsu hps; exact hf p]
  · exact (ht₂.units_lineMap ⟨q, ht₁ hq⟩ w).range
  · rw [affineSpan_eq_affineSpan_lineMap_units (ht₁ hq) w, ht₃]
#align is_open.exists_between_affine_independent_span_eq_top IsOpen.exists_between_affineIndependent_span_eq_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b70f42034fa02b8e527d33440c774974ded24b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
