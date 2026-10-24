# Topology.IsInducing.multipliable_iff_tprod_comp_mem_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05d24f2c6408866a80625bf444417750aa84d5cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/094ff4ec7f2d9bf9771423a60b18c521a2eae76cccb07dde114c14e4a2de3a73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bcce1cee-af39-eb65-12ea-8e2381571f17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80ac4d72-1517-5809-a40e-838377516c1f",
  "kind": "lemma",
  "lexical_name": "Topology.IsInducing.multipliable_iff_tprod_comp_mem_range",
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
  "slug": "topology-isinducing-multipliable-iff-tprod-comp-mem-range--30b868e8860615851355cee2",
  "source": {
    "blob": "05d24f2c6408866a80625bf444417750aa84d5cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 288,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant094ff4ec7f2d9bf9771423a60b18c521a2eae76cccb07dde114c14e4a2de3a73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30b868e8860615851355cee284bc6d3fc9fc5731eead0880debffe4a79f10f71",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant094ff4ec7f2d9bf9771423a60b18c521a2eae76cccb07dde114c14e4a2de3a73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80ac4d72-1517-5809-a40e-838377516c1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Topology.IsInducing.multipliable_iff_tprod_comp_mem_range [CommMonoid γ] [TopologicalSpace γ]
    [T2Space γ] {G} [FunLike G α γ] [MonoidHomClass G α γ] {g : G} (hg : IsInducing g) (f : β → α) :
    Multipliable f L ↔ Multipliable (g ∘ f) L ∧ ∏'[L] i, g (f i) ∈ Set.range g := by
  constructor
  · intro hf
    constructor
    · exact hf.map g hg.continuous
    · by_cases hL : L.NeBot
      · exact ⟨_, hf.map_tprod g hg.continuous⟩
      · by_cases hfs : (mulSupport fun x ↦ g (f x)).Finite
        · simp [tprod_bot hL, finprod_eq_prod _ hfs, ← _root_.map_prod]
        · exact ⟨1, by simp [tprod_bot hL, finprod_of_infinite_mulSupport hfs]⟩
  · rintro ⟨hgf, a, ha⟩
    use a
    have := hgf.hasProd
    simp_rw [comp_apply, ← ha] at this
    exact (hg.hasProd_iff f a).mp this

/-- "A special case of `Multipliable.map_iff_of_leftInverse` for convenience" -/
@[to_additive /-- A special case of `Summable.map_iff_of_leftInverse` for convenience -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant094ff4ec7f2d9bf9771423a60b18c521a2eae76cccb07dde114c14e4a2de3a73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant094ff4ec7f2d9bf9771423a60b18c521a2eae76cccb07dde114c14e4a2de3a73.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05d24f2c6408866a80625bf444417750aa84d5cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
