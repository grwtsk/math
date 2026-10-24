# mem_convexHull_erase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10c3edf1-a690-bdd9-901c-3f7d135a0256",
  "kind": "theorem",
  "lexical_name": "mem_convexHull_erase",
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
  "slug": "mem-convexhull-erase--7b155a83d8458a0f0b930c62",
  "source": {
    "blob": "a90175b9be6086d75d1c4d887394967f5d464621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 59,
    "path": "GRWTSK/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b155a83d8458a0f0b930c62d6e1353bc92310063e1485561b722b87452f9796",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10c3edf1-a690-bdd9-901c-3f7d135a0256`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_convexHull_erase [DecidableEq E] {t : Finset E} (h : ¬AffineIndependent 𝕜 ((↑) : t → E))
    {x : E} (m : x ∈ convexHull 𝕜 (↑t : Set E)) :
    ∃ y : (↑t : Set E), x ∈ convexHull 𝕜 (↑(t.erase y) : Set E) := by
  simp only [Finset.convexHull_eq, mem_setOf_eq] at m ⊢
  obtain ⟨f, fpos, fsum, rfl⟩ := m
  obtain ⟨g, gcombo, gsum, gpos⟩ := exists_nontrivial_relation_sum_zero_of_not_affine_ind h
  replace gpos := exists_pos_of_sum_zero_of_exists_nonzero g gsum gpos
  clear h
  let s := {z ∈ t | 0 < g z}
  obtain ⟨i₀, mem, w⟩ : ∃ i₀ ∈ s, ∀ i ∈ s, f i₀ / g i₀ ≤ f i / g i := by
    apply s.exists_min_image fun z => f z / g z
    obtain ⟨x, hx, hgx⟩ : ∃ x ∈ t, 0 < g x := gpos
    exact ⟨x, mem_filter.mpr ⟨hx, hgx⟩⟩
  have hg : 0 < g i₀ := by
    rw [mem_filter] at mem
    exact mem.2
  have hi₀ : i₀ ∈ t := filter_subset _ _ mem
  let k : E → 𝕜 := fun z => f z - f i₀ / g i₀ * g z
  have hk : k i₀ = 0 := by field_simp [k, ne_of_gt hg]
  have ksum : ∑ e ∈ t.erase i₀, k e = 1 := by
    calc
      ∑ e ∈ t.erase i₀, k e = ∑ e ∈ t, k e := by
        conv_rhs => rw [← insert_erase hi₀, sum_insert (notMem_erase i₀ t), hk, zero_add]
      _ = ∑ e ∈ t, (f e - f i₀ / g i₀ * g e) := rfl
      _ = 1 := by rw [sum_sub_distrib, fsum, ← mul_sum, gsum, mul_zero, sub_zero]
  refine ⟨⟨i₀, hi₀⟩, k, ?_, by convert ksum, ?_⟩
  · simp only [k, and_imp, sub_nonneg, mem_erase, Ne, Subtype.coe_mk]
    intro e _ het
    by_cases hes : e ∈ s
    · have hge : 0 < g e := by
        rw [mem_filter] at hes
        exact hes.2
      rw [← le_div_iff₀ hge]
      exact w _ hes
    · calc
        _ ≤ 0 := by
          apply mul_nonpos_of_nonneg_of_nonpos
          · apply div_nonneg (fpos i₀ (mem_of_subset (filter_subset _ t) mem)) (le_of_lt hg)
          · simpa only [s, mem_filter, het, true_and, not_lt] using hes
        _ ≤ f e := fpos e het
  · rw [Subtype.coe_mk, centerMass_eq_of_sum_1 _ id ksum]
    calc
      ∑ e ∈ t.erase i₀, k e • e = ∑ e ∈ t, k e • e := sum_erase _ (by rw [hk, zero_smul])
      _ = ∑ e ∈ t, (f e - f i₀ / g i₀ * g e) • e := rfl
      _ = t.centerMass f id := by
        simp only [sub_smul, mul_smul, sum_sub_distrib, ← smul_sum, gcombo, smul_zero, sub_zero,
          centerMass, fsum, inv_one, one_smul, id]

variable {s : Set E} {x : E}

/-- Given a point `x` in the convex hull of a set `s`, this is a finite subset of `s` of minimum
cardinality, whose convex hull contains `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90175b9be6086d75d1c4d887394967f5d464621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
