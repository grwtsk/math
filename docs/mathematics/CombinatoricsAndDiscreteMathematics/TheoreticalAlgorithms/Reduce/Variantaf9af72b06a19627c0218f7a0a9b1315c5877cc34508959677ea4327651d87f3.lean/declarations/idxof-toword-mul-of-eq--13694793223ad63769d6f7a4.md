# idxOf_toWord_mul_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e3a2ccaf5049b2f5f4abe751d2fc18f69e1751b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af9af72b06a19627c0218f7a0a9b1315c5877cc34508959677ea4327651d87f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ebebdca-ca85-0605-f83a-8b229bbeae20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:718c0b2a-0c78-a419-eccf-a6b98d2afe6f",
  "kind": "theorem",
  "lexical_name": "idxOf_toWord_mul_of_eq",
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
  "slug": "idxof-toword-mul-of-eq--13694793223ad63769d6f7a4",
  "source": {
    "blob": "2e3a2ccaf5049b2f5f4abe751d2fc18f69e1751b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 384,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantaf9af72b06a19627c0218f7a0a9b1315c5877cc34508959677ea4327651d87f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13694793223ad63769d6f7a4e7672ad6f55fd475dd3b169de3b3a76f880e7193",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantaf9af72b06a19627c0218f7a0a9b1315c5877cc34508959677ea4327651d87f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:718c0b2a-0c78-a419-eccf-a6b98d2afe6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem idxOf_toWord_mul_of_eq {a : α} (x : FreeGroup α) {b : α × Bool} (hb₁ : b.1 ≠ a)
    (hb₂ : b ∈ x.toWord) : (x * of a).toWord.idxOf b = x.toWord.idxOf b := by
  rw [of, toWord_mul_mk_eq]
  split_ifs
  · refine List.IsPrefix.idxOf_eq_of_mem (List.dropLast_prefix _) ?_
    exact List.mem_dropLast_of_mem_of_ne_getLast? hb₂ (by grind)
  · grind

end Reduce

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantaf9af72b06a19627c0218f7a0a9b1315c5877cc34508959677ea4327651d87f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantaf9af72b06a19627c0218f7a0a9b1315c5877cc34508959677ea4327651d87f3.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e3a2ccaf5049b2f5f4abe751d2fc18f69e1751b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
