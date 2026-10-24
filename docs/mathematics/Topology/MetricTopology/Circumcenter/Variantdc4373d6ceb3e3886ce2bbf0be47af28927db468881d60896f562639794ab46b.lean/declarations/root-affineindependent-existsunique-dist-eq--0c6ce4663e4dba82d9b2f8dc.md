# _root_.AffineIndependent.existsUnique_dist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ba8c6dafdd8ef0c57d32577e2c52afe37fa3d86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09ab0548-5641-3771-a1fc-d1d6d67c4030",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28be8b6c-7f50-330a-fe91-1049b6768807",
  "kind": "theorem",
  "lexical_name": "_root_.AffineIndependent.existsUnique_dist_eq",
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
  "slug": "root-affineindependent-existsunique-dist-eq--0c6ce4663e4dba82d9b2f8dc",
  "source": {
    "blob": "7ba8c6dafdd8ef0c57d32577e2c52afe37fa3d86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 190,
    "path": "GRWTSK/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c6ce4663e4dba82d9b2f8dce54f0bc66693eb05426afaa982fbc5196831d5bf",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28be8b6c-7f50-330a-fe91-1049b6768807`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.AffineIndependent.existsUnique_dist_eq {ι : Type*} [hne : Nonempty ι] [Finite ι]
    {p : ι → P} (ha : AffineIndependent ℝ p) :
    ∃! cs : Sphere P, cs.center ∈ affineSpan ℝ (Set.range p) ∧ Set.range p ⊆ (cs : Set P) := by
  cases nonempty_fintype ι
  induction' hn : Fintype.card ι with m hm generalizing ι
  · exfalso
    have h := Fintype.card_pos_iff.2 hne
    rw [hn] at h
    exact lt_irrefl 0 h
  · cases' m with m
    · rw [Fintype.card_eq_one_iff] at hn
      cases' hn with i hi
      haveI : Unique ι := ⟨⟨i⟩, hi⟩
      use ⟨p i, 0⟩
      simp only [Set.range_unique, AffineSubspace.mem_affineSpan_singleton]
      constructor
      · simp_rw [hi default, Set.singleton_subset_iff]
        exact ⟨⟨⟩, by simp only [Metric.sphere_zero, Set.mem_singleton_iff]⟩
      · rintro ⟨cc, cr⟩
        simp only
        rintro ⟨rfl, hdist⟩
        simp [Set.singleton_subset_iff] at hdist
        rw [hi default, hdist]
    · have i := hne.some
      let ι2 := { x // x ≠ i }
      have hc : Fintype.card ι2 = m + 1 := by
        rw [Fintype.card_of_subtype (Finset.univ.filter fun x => x ≠ i)]
        · rw [Finset.filter_not]
          -- Porting note: removed `simp_rw [eq_comm]` and used `filter_eq'` instead of `filter_eq`
          rw [Finset.filter_eq' _ i, if_pos (Finset.mem_univ _),
            Finset.card_sdiff (Finset.subset_univ _), Finset.card_singleton, Finset.card_univ, hn]
          simp
        · simp
      haveI : Nonempty ι2 := Fintype.card_pos_iff.1 (hc.symm ▸ Nat.zero_lt_succ _)
      have ha2 : AffineIndependent ℝ fun i2 : ι2 => p i2 := ha.subtype _
      replace hm := hm ha2 _ hc
      have hr : Set.range p = insert (p i) (Set.range fun i2 : ι2 => p i2) := by
        change _ = insert _ (Set.range fun i2 : { x | x ≠ i } => p i2)
        rw [← Set.image_eq_range, ← Set.image_univ, ← Set.image_insert_eq]
        congr with j
        simp [Classical.em]
      rw [hr, ← affineSpan_insert_affineSpan]
      refine' existsUnique_dist_eq_of_insert (Set.range_nonempty _) (subset_spanPoints ℝ _) _ hm
      convert ha.not_mem_affineSpan_diff i Set.univ
      change (Set.range fun i2 : { x | x ≠ i } => p i2) = _
      rw [← Set.image_eq_range]
      congr with j
      simp
#align affine_independent.exists_unique_dist_eq AffineIndependent.existsUnique_dist_eq

end EuclideanGeometry

namespace Affine

namespace Simplex

open Finset AffineSubspace EuclideanGeometry

variable {V : Type*} {P : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MetricSpace P]
  [NormedAddTorsor V P]

/-- The circumsphere of a simplex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ba8c6dafdd8ef0c57d32577e2c52afe37fa3d86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
