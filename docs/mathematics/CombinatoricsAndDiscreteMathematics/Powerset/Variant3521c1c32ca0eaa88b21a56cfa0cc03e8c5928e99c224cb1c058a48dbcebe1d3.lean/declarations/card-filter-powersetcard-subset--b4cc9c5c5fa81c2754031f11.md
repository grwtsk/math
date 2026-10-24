# card_filter_powersetCard_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96b8e807-caaf-bb05-7ee1-f368e69c54b7",
  "kind": "lemma",
  "lexical_name": "card_filter_powersetCard_subset",
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
  "slug": "card-filter-powersetcard-subset--b4cc9c5c5fa81c2754031f11",
  "source": {
    "blob": "ca4b40f0b5490c0fe0f133e8a2d98455d7935648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant3521c1c32ca0eaa88b21a56cfa0cc03e8c5928e99c224cb1c058a48dbcebe1d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4cc9c5c5fa81c2754031f11da36eef41adddf770a90a542f566f8b5e5277e27",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Powerset/Variant3521c1c32ca0eaa88b21a56cfa0cc03e8c5928e99c224cb1c058a48dbcebe1d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96b8e807-caaf-bb05-7ee1-f368e69c54b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_filter_powersetCard_subset [DecidableEq α] (s t : Finset α) (n : ℕ)
    (hst : s ⊆ t) (hsn : #s ≤ n) :
    #((t.powersetCard n).filter (s ⊆ ·)) = Nat.choose (#t - #s) (n - #s) := by
  have hinj : Set.InjOn (· ∪ s) ↑((t \ s).powersetCard (n - #s)) := fun a ha b hb hab =>
    (union_sdiff_cancel_right
      (disjoint_of_subset_left (mem_powersetCard.mp ha).1 disjoint_sdiff_self_left)).symm.trans
    ((congrArg (· \ s) hab).trans
      (union_sdiff_cancel_right
        (disjoint_of_subset_left (mem_powersetCard.mp hb).1 disjoint_sdiff_self_left)))
  simp only [filter_powersetCard_subset s t n hst hsn, card_image_of_injOn hinj,
             card_powersetCard, card_sdiff_of_subset hst]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Powerset/Variant3521c1c32ca0eaa88b21a56cfa0cc03e8c5928e99c224cb1c058a48dbcebe1d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant3521c1c32ca0eaa88b21a56cfa0cc03e8c5928e99c224cb1c058a48dbcebe1d3.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca4b40f0b5490c0fe0f133e8a2d98455d7935648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
