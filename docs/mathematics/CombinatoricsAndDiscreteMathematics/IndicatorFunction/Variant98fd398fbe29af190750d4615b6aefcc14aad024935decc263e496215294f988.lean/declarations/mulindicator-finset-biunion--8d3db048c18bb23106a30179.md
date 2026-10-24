# mulIndicator_finset_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32544584-f1ca-8c20-87cd-d29a6e25e8de",
  "kind": "theorem",
  "lexical_name": "mulIndicator_finset_biUnion",
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
  "slug": "mulindicator-finset-biunion--8d3db048c18bb23106a30179",
  "source": {
    "blob": "0a7667e77700a8454497cf8d9e93f3d7684b2841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 677,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant98fd398fbe29af190750d4615b6aefcc14aad024935decc263e496215294f988.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d3db048c18bb23106a30179aa58f9355a360bbb4944c56aa556c7082f44bbc9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant98fd398fbe29af190750d4615b6aefcc14aad024935decc263e496215294f988.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32544584-f1ca-8c20-87cd-d29a6e25e8de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 677–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulIndicator_finset_biUnion (I : Finset ι) (s : ι → Set α) {f : α → M} :
    (∀ i ∈ I, ∀ j ∈ I, i ≠ j → Disjoint (s i) (s j)) →
      mulIndicator (⋃ i ∈ I, s i) f = fun a => ∏ i in I, mulIndicator (s i) f a := by
  classical
    refine' Finset.induction_on I _ _
    · intro
      funext
      simp
    intro a I haI ih hI
    funext
    rw [Finset.prod_insert haI, Finset.set_biUnion_insert, mulIndicator_union_of_not_mem_inter,
      ih _]
    · intro i hi j hj hij
      exact hI i (Finset.mem_insert_of_mem hi) j (Finset.mem_insert_of_mem hj) hij
    simp only [not_exists, exists_prop, mem_iUnion, mem_inter_iff, not_and]
    intro hx a' ha'
    refine'
      disjoint_left.1 (hI a (Finset.mem_insert_self _ _) a' (Finset.mem_insert_of_mem ha') _) hx
    exact (ne_of_mem_of_not_mem ha' haI).symm
#align set.mul_indicator_finset_bUnion Set.mulIndicator_finset_biUnion
#align set.indicator_finset_bUnion Set.indicator_finset_biUnion

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant98fd398fbe29af190750d4615b6aefcc14aad024935decc263e496215294f988.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant98fd398fbe29af190750d4615b6aefcc14aad024935decc263e496215294f988.lean#L677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a7667e77700a8454497cf8d9e93f3d7684b2841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
