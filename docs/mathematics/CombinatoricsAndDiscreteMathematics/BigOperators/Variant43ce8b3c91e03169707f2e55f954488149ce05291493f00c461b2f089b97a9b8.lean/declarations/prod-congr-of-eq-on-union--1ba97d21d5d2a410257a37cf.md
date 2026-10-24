# prod_congr_of_eq_on_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83981a2bb064075fa2feeba970b0e7221c8485a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43ce8b3c91e03169707f2e55f954488149ce05291493f00c461b2f089b97a9b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87026445-c4f7-ff4d-2ab2-64bdf5ef4295",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:634ee1c0-22f4-1de2-a19d-6d27030a535a",
  "kind": "theorem",
  "lexical_name": "prod_congr_of_eq_on_union",
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
  "slug": "prod-congr-of-eq-on-union--1ba97d21d5d2a410257a37cf",
  "source": {
    "blob": "83981a2bb064075fa2feeba970b0e7221c8485a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant43ce8b3c91e03169707f2e55f954488149ce05291493f00c461b2f089b97a9b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ba97d21d5d2a410257a37cfc0088fe1a9080c67f44c236999c24cd409953a89",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant43ce8b3c91e03169707f2e55f954488149ce05291493f00c461b2f089b97a9b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:634ee1c0-22f4-1de2-a19d-6d27030a535a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_congr_of_eq_on_union
    [∀ i, Zero (β i)] [∀ (i) (x : β i), Decidable (x ≠ 0)] [CommMonoid γ]
    {f1 f2 : Π₀ i, β i} {g1 g2 : (i : ι) → β i → γ}
    (h : ∀ x ∈ f1.support ∪ f2.support, g1 x (f1 x) = g2 x (f2 x))
    (h1 : ∀ x ∈ f1.support ∪ f2.support, g1 x 0 = 1)
    (h2 : ∀ x ∈ f1.support ∪ f2.support, g2 x 0 = 1) :
    f1.prod g1 = f2.prod g2 := by
  rw [prod_of_support_subset Finset.subset_union_left h1,
    prod_of_support_subset Finset.subset_union_right h2]
  exact Finset.prod_congr rfl h

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant43ce8b3c91e03169707f2e55f954488149ce05291493f00c461b2f089b97a9b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant43ce8b3c91e03169707f2e55f954488149ce05291493f00c461b2f089b97a9b8.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83981a2bb064075fa2feeba970b0e7221c8485a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
