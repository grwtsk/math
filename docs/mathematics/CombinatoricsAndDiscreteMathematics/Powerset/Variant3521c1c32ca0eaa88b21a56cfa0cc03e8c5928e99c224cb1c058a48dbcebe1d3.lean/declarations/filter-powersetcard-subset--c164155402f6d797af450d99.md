# filter_powersetCard_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5717a89-e1a3-3618-21eb-18eae41d2826",
  "kind": "theorem",
  "lexical_name": "filter_powersetCard_subset",
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
  "slug": "filter-powersetcard-subset--c164155402f6d797af450d99",
  "source": {
    "blob": "ca4b40f0b5490c0fe0f133e8a2d98455d7935648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 226,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant3521c1c32ca0eaa88b21a56cfa0cc03e8c5928e99c224cb1c058a48dbcebe1d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c164155402f6d797af450d99a27ff16e6f65bd63e5c1c7d13ca6f5ee157d3b8d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Powerset/Variant3521c1c32ca0eaa88b21a56cfa0cc03e8c5928e99c224cb1c058a48dbcebe1d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5717a89-e1a3-3618-21eb-18eae41d2826`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_powersetCard_subset [DecidableEq α] (s t : Finset α) (n : ℕ)
    (hst : s ⊆ t) (hsn : #s ≤ n) :
    (t.powersetCard n).filter (s ⊆ ·) = ((t \ s).powersetCard (n - #s)).image (· ∪ s) := by
  ext x
  simp only [mem_filter, mem_powersetCard, mem_image]
  constructor
  · intro ⟨⟨hxt, hxn⟩, hsx⟩
    exact ⟨x \ s, ⟨fun y hy => mem_sdiff.mpr ⟨hxt (mem_sdiff.mp hy).1, (mem_sdiff.mp hy).2⟩,
           by rw [card_sdiff_of_subset hsx, hxn]⟩, sdiff_union_of_subset hsx⟩
  · rintro ⟨y, ⟨hyt, hyn⟩, rfl⟩
    refine ⟨⟨union_subset (hyt.trans sdiff_subset) hst, ?_⟩, subset_union_right⟩
    rw [card_union_of_disjoint (disjoint_of_subset_left hyt disjoint_sdiff_self_left), hyn]
    lia

/-- The number of `n`-element subsets of `t` containing `s` equals
`Nat.choose (#t - #s) (n - #s)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Powerset/Variant3521c1c32ca0eaa88b21a56cfa0cc03e8c5928e99c224cb1c058a48dbcebe1d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant3521c1c32ca0eaa88b21a56cfa0cc03e8c5928e99c224cb1c058a48dbcebe1d3.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca4b40f0b5490c0fe0f133e8a2d98455d7935648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
