# _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.PointsWithCircumcenterIndex.Variant9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.AffineIndependent.existsUnique_dist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a7b8a92-67e1-f9c2-9534-92bb8a4390b9",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.PointsWithCircumcenterIndex.Variant9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.AffineIndependent.existsUnique_dist_eq",
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
  "slug": "root-grwtsk-geometry-classicalgeometry-euclideangeometry-pointswithcircu--d9950b3328bc63b8292a2325",
  "source": {
    "blob": "9dcc3bda2862df36e284732fd248cbc9a318d657",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 153,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantdc2ee781d30e77280da41a25113868e4241771d1c5a7a0381670b43691b04cd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9950b3328bc63b8292a2325ba3b337b8ddbc0ab9be666433a8b94d8d3690586",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantdc2ee781d30e77280da41a25113868e4241771d1c5a7a0381670b43691b04cd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a7b8a92-67e1-f9c2-9534-92bb8a4390b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.PointsWithCircumcenterIndex.Variant9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.AffineIndependent.existsUnique_dist_eq {ι : Type*} [hne : Nonempty ι] [Finite ι]
    {p : ι → P} (ha : AffineIndependent ℝ p) :
    ∃! cs : Sphere P, cs.center ∈ affineSpan ℝ (Set.range p) ∧ Set.range p ⊆ (cs : Set P) := by
  cases nonempty_fintype ι
  induction hn : Fintype.card ι generalizing ι with
  | zero =>
    exfalso
    have h := Fintype.card_pos_iff.2 hne
    rw [hn] at h
    exact lt_irrefl 0 h
  | succ m hm =>
    rcases m with - | m
    · rw [Fintype.card_eq_one_iff] at hn
      obtain ⟨i, hi⟩ := hn
      haveI : Unique ι := ⟨⟨i⟩, hi⟩
      use ⟨p i, 0⟩
      simp only [Set.range_unique, AffineSubspace.mem_affineSpan_singleton]
      constructor
      · simp_rw [hi default, Set.singleton_subset_iff]
        exact ⟨⟨⟩, by simp only [Metric.sphere_zero, Set.mem_singleton_iff]⟩
      · rintro ⟨cc, cr⟩
        simp only
        rintro ⟨rfl, hdist⟩
        simp? [Set.singleton_subset_iff] at hdist says
          simp only [Set.singleton_subset_iff, Metric.mem_sphere, dist_self] at hdist
        rw [hi default, hdist]
    · have i := hne.some
      let ι2 := { x // x ≠ i }
      classical
      have hc : Fintype.card ι2 = m + 1 := by
        rw [Fintype.card_of_subtype {x | x ≠ i}]
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
      refine existsUnique_dist_eq_of_insert (Set.range_nonempty _) (subset_affineSpan ℝ _) ?_ hm
      convert ha.notMem_affineSpan_diff i Set.univ
      change (Set.range fun i2 : { x | x ≠ i } => p i2) = _
      rw [← Set.image_eq_range]
      congr with j
      simp

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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantdc2ee781d30e77280da41a25113868e4241771d1c5a7a0381670b43691b04cd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variantdc2ee781d30e77280da41a25113868e4241771d1c5a7a0381670b43691b04cd4.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dcc3bda2862df36e284732fd248cbc9a318d657` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
