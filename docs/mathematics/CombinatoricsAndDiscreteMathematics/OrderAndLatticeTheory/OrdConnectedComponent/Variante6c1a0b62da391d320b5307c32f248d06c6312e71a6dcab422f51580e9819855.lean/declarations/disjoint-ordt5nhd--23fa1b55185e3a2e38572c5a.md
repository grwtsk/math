# disjoint_ordT5Nhd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e36d4d067a6b81bb878f6edfc537eda4226f2c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6c1a0b62da391d320b5307c32f248d06c6312e71a6dcab422f51580e9819855.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47ca283b-b654-c328-38f0-64b2432c2ed2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08894ef8-5364-a583-9131-a71641873aad",
  "kind": "theorem",
  "lexical_name": "disjoint_ordT5Nhd",
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
  "slug": "disjoint-ordt5nhd--23fa1b55185e3a2e38572c5a",
  "source": {
    "blob": "2e36d4d067a6b81bb878f6edfc537eda4226f2c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 178,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variante6c1a0b62da391d320b5307c32f248d06c6312e71a6dcab422f51580e9819855.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23fa1b55185e3a2e38572c5a7a73e39a5a556a98d401dfad45598f3d15908a6c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variante6c1a0b62da391d320b5307c32f248d06c6312e71a6dcab422f51580e9819855.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08894ef8-5364-a583-9131-a71641873aad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_ordT5Nhd : Disjoint (ordT5Nhd s t) (ordT5Nhd t s) := by
  rw [disjoint_iff_inf_le]
  rintro x ⟨hx₁, hx₂⟩
  rcases mem_iUnion₂.1 hx₁ with ⟨a, has, ha⟩
  clear hx₁
  rcases mem_iUnion₂.1 hx₂ with ⟨b, hbt, hb⟩
  clear hx₂
  rw [mem_ordConnectedComponent, subset_inter_iff] at ha hb
  wlog hab : a ≤ b with H
  · exact H b hbt hb a has ha (le_of_not_ge hab)
  obtain ⟨ha, ha'⟩ := ha
  obtain ⟨hb, hb'⟩ := hb
  have hsub : [[a, b]] ⊆ (ordSeparatingSet s t).ordConnectedSectionᶜ := by
    rw [ordSeparatingSet_comm, uIcc_comm] at hb'
    calc
      [[a, b]] ⊆ [[a, x]] ∪ [[x, b]] := uIcc_subset_uIcc_union_uIcc
      _ ⊆ (ordSeparatingSet s t).ordConnectedSectionᶜ := union_subset ha' hb'
  clear ha' hb'
  rcases le_total x a with hxa | hax
  · exact hb (Icc_subset_uIcc' ⟨hxa, hab⟩) has
  rcases le_total b x with hbx | hxb
  · exact ha (Icc_subset_uIcc ⟨hab, hbx⟩) hbt
  have h' : x ∈ ordSeparatingSet s t := ⟨mem_iUnion₂.2 ⟨a, has, ha⟩, mem_iUnion₂.2 ⟨b, hbt, hb⟩⟩
  lift x to ordSeparatingSet s t using h'
  suffices ordConnectedComponent (ordSeparatingSet s t) x ⊆ [[a, b]] from
    hsub (this <| ordConnectedProj_mem_ordConnectedComponent _ x) (mem_range_self _)
  rintro y hy
  rw [uIcc_of_le hab, mem_Icc, ← not_lt, ← not_lt]
  have sol1 := fun (hya : y < a) =>
      (disjoint_left (t := ordSeparatingSet s t)).1 disjoint_left_ordSeparatingSet has
        (hy <| Icc_subset_uIcc' ⟨hya.le, hax⟩)
  have sol2 := fun (hby : b < y) =>
      (disjoint_left (t := ordSeparatingSet s t)).1 disjoint_right_ordSeparatingSet hbt
        (hy <| Icc_subset_uIcc ⟨hxb, hby.le⟩)
  exact ⟨sol1, sol2⟩

end Set
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variante6c1a0b62da391d320b5307c32f248d06c6312e71a6dcab422f51580e9819855.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variante6c1a0b62da391d320b5307c32f248d06c6312e71a6dcab422f51580e9819855.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e36d4d067a6b81bb878f6edfc537eda4226f2c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
