# mulEtransformLeft.fst_mul_snd_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "982333021fad4fd93f11e3400384f519f7dfeac5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:789d0a91-e50f-1451-064c-5429e582edb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a4b4b6d-a2ba-e93e-8456-d3d8036b6649",
  "kind": "theorem",
  "lexical_name": "mulEtransformLeft.fst_mul_snd_subset",
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
  "slug": "muletransformleft-fst-mul-snd-subset--b3ebf22798d454e4ba7cbdc2",
  "source": {
    "blob": "982333021fad4fd93f11e3400384f519f7dfeac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3ebf22798d454e4ba7cbdc258c059bce2e4387dcead2c2759daa4010d6ac85c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a4b4b6d-a2ba-e93e-8456-d3d8036b6649`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulEtransformLeft.fst_mul_snd_subset :
    (mulEtransformLeft e x).1 * (mulEtransformLeft e x).2 ⊆ x.1 * x.2 := by
  refine' inter_mul_union_subset_union.trans (union_subset Subset.rfl _)
  rw [op_smul_finset_mul_eq_mul_smul_finset, smul_inv_smul]
#align finset.mul_e_transform_left.fst_mul_snd_subset Finset.mulEtransformLeft.fst_mul_snd_subset
#align finset.add_e_transform_left.fst_add_snd_subset Finset.addEtransformLeft.fst_add_snd_subset

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `982333021fad4fd93f11e3400384f519f7dfeac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
