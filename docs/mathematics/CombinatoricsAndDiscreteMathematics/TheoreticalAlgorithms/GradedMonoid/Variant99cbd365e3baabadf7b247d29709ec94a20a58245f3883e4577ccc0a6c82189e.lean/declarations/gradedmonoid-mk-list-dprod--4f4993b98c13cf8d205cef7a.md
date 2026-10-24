# GradedMonoid.mk_list_dProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "743d80e81ca6cb34a12830e21e6a97478cccbb5d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 410,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99cbd365e3baabadf7b247d29709ec94a20a58245f3883e4577ccc0a6c82189e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33fa565f-1612-e049-a12a-0c5e62b9d29a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcf20d8f-c696-d974-4deb-461b85c3cfd9",
  "kind": "theorem",
  "lexical_name": "GradedMonoid.mk_list_dProd",
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
  "slug": "gradedmonoid-mk-list-dprod--4f4993b98c13cf8d205cef7a",
  "source": {
    "blob": "743d80e81ca6cb34a12830e21e6a97478cccbb5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 410,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant99cbd365e3baabadf7b247d29709ec94a20a58245f3883e4577ccc0a6c82189e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f4993b98c13cf8d205cef7ae6e4e9050ca8be34c9312fa3918dd6c52ea4feb5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant99cbd365e3baabadf7b247d29709ec94a20a58245f3883e4577ccc0a6c82189e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcf20d8f-c696-d974-4deb-461b85c3cfd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GradedMonoid.mk_list_dProd (l : List α) (fι : α → ι) (fA : ∀ a, A (fι a)) :
    GradedMonoid.mk _ (l.dProd fι fA) = (l.map fun a => GradedMonoid.mk (fι a) (fA a)).prod := by
  match l with
  | [] => simp only [List.dProdIndex_nil, List.dProd_nil, List.map_nil, List.prod_nil]; rfl
  | head::tail =>
    simp [← GradedMonoid.mk_list_dProd tail _ _, GradedMonoid.mk_mul_mk, List.prod_cons]

/-- A variant of `GradedMonoid.mk_list_dProd` for rewriting in the other direction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant99cbd365e3baabadf7b247d29709ec94a20a58245f3883e4577ccc0a6c82189e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant99cbd365e3baabadf7b247d29709ec94a20a58245f3883e4577ccc0a6c82189e.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `743d80e81ca6cb34a12830e21e6a97478cccbb5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
