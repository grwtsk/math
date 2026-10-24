# convexHull_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d089b907-961b-406c-ef03-84ae351c1c1e",
  "kind": "theorem",
  "lexical_name": "convexHull_eq",
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
  "slug": "convexhull-eq--defbc8b8afaadf3cd22b0385",
  "source": {
    "blob": "34df82812a2bb352a11a6900f202dd878c99807e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 310,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:defbc8b8afaadf3cd22b0385508259dad32259136efc240acdd7d3cebf12e552",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d089b907-961b-406c-ef03-84ae351c1c1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexHull_eq (s : Set E) : convexHull R s =
    { x : E | ∃ (ι : Type) (t : Finset ι) (w : ι → R) (z : ι → E) (_ : ∀ i ∈ t, 0 ≤ w i)
    (_ : ∑ i in t, w i = 1) (_ : ∀ i ∈ t, z i ∈ s), t.centerMass w z = x } := by
  refine' Subset.antisymm (convexHull_min _ _) _
  · intro x hx
    use PUnit, {PUnit.unit}, fun _ => 1, fun _ => x, fun _ _ => zero_le_one, Finset.sum_singleton,
      fun _ _ => hx
    simp only [Finset.centerMass, Finset.sum_singleton, inv_one, one_smul]
  · rintro x ⟨ι, sx, wx, zx, hwx₀, hwx₁, hzx, rfl⟩ y ⟨ι', sy, wy, zy, hwy₀, hwy₁, hzy, rfl⟩ a b ha
      hb hab
    rw [Finset.centerMass_segment' _ _ _ _ _ _ hwx₁ hwy₁ _ _ hab]
    refine' ⟨_, _, _, _, _, _, _, rfl⟩
    · rintro i hi
      rw [Finset.mem_disjSum] at hi
      rcases hi with (⟨j, hj, rfl⟩ | ⟨j, hj, rfl⟩) <;> simp only [Sum.elim_inl, Sum.elim_inr] <;>
        apply_rules [mul_nonneg, hwx₀, hwy₀]
    · simp [Finset.sum_sum_elim, Finset.mul_sum.symm, *]
    · intro i hi
      rw [Finset.mem_disjSum] at hi
      rcases hi with (⟨j, hj, rfl⟩ | ⟨j, hj, rfl⟩) <;> apply_rules [hzx, hzy]
  · rintro _ ⟨ι, t, w, z, hw₀, hw₁, hz, rfl⟩
    exact t.centerMass_mem_convexHull hw₀ (hw₁.symm ▸ zero_lt_one) hz
#align convex_hull_eq convexHull_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34df82812a2bb352a11a6900f202dd878c99807e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
