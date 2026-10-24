# iUnion_finset_rightRel_eq_univ_of_rightRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fd4761a-48bb-234b-6e18-94c9c73de5b5",
  "kind": "lemma",
  "lexical_name": "iUnion_finset_rightRel_eq_univ_of_rightRel",
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
  "slug": "iunion-finset-rightrel-eq-univ-of-rightrel--be7b12b8403f76322cb20880",
  "source": {
    "blob": "be51245644a7c71975194b4e1f3035026be4d98c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 278,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be7b12b8403f76322cb2088044c0f4cdc1586102d067ff91e8f3b5e2103db8a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fd4761a-48bb-234b-6e18-94c9c73de5b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iUnion_finset_rightRel_eq_univ_of_rightRel {H K : Subgroup G} {t : Finset (Quotient H K)}
    (ht : Set.univ ⊆ ⋃ i ∈ t, Quot.mk (rightRel H) '' doubleCoset (out i) H K) :
    ⋃ q ∈ t, doubleCoset (out q) H K = Set.univ := by
  contrapose ht
  simp only [Set.univ_subset_iff, ← ne_eq] at ⊢ ht
  obtain ⟨x, hx⟩ := (Set.ne_univ_iff_exists_notMem _).mp ht
  refine (Set.ne_univ_iff_exists_notMem _).mpr ⟨Quot.mk (rightRel H) x, ?_⟩
  simp only [Set.mem_iUnion, Set.mem_image, exists_prop, not_exists, not_and]
  intro y hy q hq
  contrapose hx
  simp only [Set.mem_iUnion, exists_prop]
  refine ⟨y, hy, ?_⟩
  rw [← doubleCoset_eq_of_mem hq, mem_doubleCoset]
  obtain ⟨a, ha⟩ : ∃ a : H, x = a * q := by
    obtain ⟨a, ha⟩ : ∃ a : H, a * x = q := Quotient.eq.mp hx
    exact ⟨⟨a⁻¹, by simp⟩, eq_inv_mul_of_mul_eq ha⟩
  exact ⟨a.1, a.2, ⟨1, Subgroup.one_mem K, by simpa using ha⟩⟩

end DoubleCoset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be51245644a7c71975194b4e1f3035026be4d98c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
