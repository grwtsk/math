# not_disjoint_imp_le_of_subset_of_mem_splitMany

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72d58a53-25d4-6804-ebd3-99d8742e5b59",
  "kind": "theorem",
  "lexical_name": "not_disjoint_imp_le_of_subset_of_mem_splitMany",
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
  "slug": "not-disjoint-imp-le-of-subset-of-mem-splitmany--5681c9ad15c94688863e3568",
  "source": {
    "blob": "c6797b4068735b75a0d033c627995fe25d26d24b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 270,
    "path": "GRWTSK/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5681c9ad15c94688863e3568a4628d3d7d7d324cd01d5ad7fbae14c563a48c02",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72d58a53-25d4-6804-ebd3-99d8742e5b59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_disjoint_imp_le_of_subset_of_mem_splitMany {I J Js : Box ι} {s : Finset (ι × ℝ)}
    (H : ∀ i, {(i, J.lower i), (i, J.upper i)} ⊆ s) (HJs : Js ∈ splitMany I s)
    (Hn : ¬Disjoint (J : WithBot (Box ι)) Js) : Js ≤ J := by
  simp only [Finset.insert_subset_iff, Finset.singleton_subset_iff] at H
  rcases Box.not_disjoint_coe_iff_nonempty_inter.mp Hn with ⟨x, hx, hxs⟩
  refine fun y hy i => ⟨?_, ?_⟩
  · rcases splitMany_le_split I (H i).1 HJs with ⟨Jl, Hmem : Jl ∈ split I i (J.lower i), Hle⟩
    have := Hle hxs
    rw [← Box.coe_subset_coe, coe_eq_of_mem_split_of_lt_mem Hmem this (hx i).1] at Hle
    exact (Hle hy).2
  · rcases splitMany_le_split I (H i).2 HJs with ⟨Jl, Hmem : Jl ∈ split I i (J.upper i), Hle⟩
    have := Hle hxs
    rw [← Box.coe_subset_coe, coe_eq_of_mem_split_of_mem_le Hmem this (hx i).2] at Hle
    exact (Hle hy).2

section Finite

variable [Finite ι]

/-- Let `s` be a finite set of boxes in `ℝⁿ = ι → ℝ`. Then there exists a finite set `t₀` of
hyperplanes (namely, the set of all hyperfaces of boxes in `s`) such that for any `t ⊇ t₀`
and any box `I` in `ℝⁿ` the following holds. The hyperplanes from `t` split `I` into subboxes.
Let `J'` be one of them, and let `J` be one of the boxes in `s`. If these boxes have a nonempty
intersection, then `J' ≤ J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6797b4068735b75a0d033c627995fe25d26d24b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
