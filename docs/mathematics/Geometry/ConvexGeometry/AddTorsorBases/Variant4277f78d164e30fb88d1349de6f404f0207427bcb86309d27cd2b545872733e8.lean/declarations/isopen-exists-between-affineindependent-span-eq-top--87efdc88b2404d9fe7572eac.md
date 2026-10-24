# IsOpen.exists_between_affineIndependent_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8559407-bc35-e67b-66ab-810dbb4d2e86",
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
  "slug": "isopen-exists-between-affineindependent-span-eq-top--87efdc88b2404d9fe7572eac",
  "source": {
    "blob": "773f51dba62388939314ee7f4964e90ef202f9c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 86,
    "path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant4277f78d164e30fb88d1349de6f404f0207427bcb86309d27cd2b545872733e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87efdc88b2404d9fe7572eac25893a51bbbdbb9ccb88460ab97f83d288c5f897",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AddTorsorBases/Variant4277f78d164e30fb88d1349de6f404f0207427bcb86309d27cd2b545872733e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8559407-bc35-e67b-66ab-810dbb4d2e86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–112.

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
    refine fun y => hεu ?_
    simp only [f]
    rw [Metric.mem_closedBall, lineMap_apply, dist_vadd_left, norm_smul, Real.norm_eq_abs,
      dist_eq_norm_vsub V y q, abs_div, abs_of_pos ε0, abs_of_nonneg (norm_nonneg _), div_mul_comm]
    exact mul_le_of_le_one_left ε0.le (div_self_le_one _)
  have hεyq : ∀ y ∉ s, ε / dist y q ≠ 0 := fun y hy =>
    div_ne_zero ε0.ne' (dist_ne_zero.2 (ne_of_mem_of_not_mem hq hy).symm)
  classical
  let w : t → ℝˣ := fun p => if hp : (p : P) ∈ s then 1 else Units.mk0 _ (hεyq (↑p) hp)
  refine ⟨Set.range fun p : t => lineMap q p (w p : ℝ), ?_, ?_, ?_, ?_⟩
  · intro p hp; use ⟨p, ht₁ hp⟩; simp [w, hp]
  · rintro y ⟨⟨p, hp⟩, rfl⟩
    by_cases hps : p ∈ s <;>
    simp only [w, hps, lineMap_apply_one, Units.val_mk0, dif_neg, dif_pos, not_false_iff,
      Units.val_one, Subtype.coe_mk] <;>
    [exact hsu hps; exact hf p]
  · exact (ht₂.units_lineMap ⟨q, ht₁ hq⟩ w).range
  · rw [affineSpan_eq_affineSpan_lineMap_units (ht₁ hq) w, ht₃]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AddTorsorBases/Variant4277f78d164e30fb88d1349de6f404f0207427bcb86309d27cd2b545872733e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant4277f78d164e30fb88d1349de6f404f0207427bcb86309d27cd2b545872733e8.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `773f51dba62388939314ee7f4964e90ef202f9c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
