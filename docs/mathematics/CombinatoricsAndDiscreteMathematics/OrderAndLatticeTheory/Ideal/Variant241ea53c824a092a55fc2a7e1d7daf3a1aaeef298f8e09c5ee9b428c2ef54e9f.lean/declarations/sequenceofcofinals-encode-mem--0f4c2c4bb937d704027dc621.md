# sequenceOfCofinals.encode_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "522292c25bdcc7bebdb43f2a81fad2ccca0038b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 535,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/241ea53c824a092a55fc2a7e1d7daf3a1aaeef298f8e09c5ee9b428c2ef54e9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf51cfe7-fc0f-b027-ffe7-6f48e516df27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3391881-2fd1-d4fd-6b3a-137025bf0a37",
  "kind": "theorem",
  "lexical_name": "sequenceOfCofinals.encode_mem",
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
  "slug": "sequenceofcofinals-encode-mem--0f4c2c4bb937d704027dc621",
  "source": {
    "blob": "522292c25bdcc7bebdb43f2a81fad2ccca0038b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 535,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ideal/Variant241ea53c824a092a55fc2a7e1d7daf3a1aaeef298f8e09c5ee9b428c2ef54e9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f4c2c4bb937d704027dc6212c78b90e89e8b51c0d2d29f098612fbcbf3f450f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ideal/Variant241ea53c824a092a55fc2a7e1d7daf3a1aaeef298f8e09c5ee9b428c2ef54e9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3391881-2fd1-d4fd-6b3a-137025bf0a37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sequenceOfCofinals.encode_mem (i : ι) :
    sequenceOfCofinals p 𝒟 (Encodable.encode i + 1) ∈ 𝒟 i := by
  dsimp only [sequenceOfCofinals, Nat.add]
  rw [Encodable.encodek]
  apply Cofinal.above_mem

/-- Given an element `p : P` and a family `𝒟` of cofinal subsets of a preorder `P`,
  indexed by a countable type, `idealOfCofinals p 𝒟` is an ideal in `P` which
  - contains `p`, according to `mem_idealOfCofinals p 𝒟`, and
  - intersects every set in `𝒟`, according to `cofinal_meets_idealOfCofinals p 𝒟`.

  This proves the Rasiowa–Sikorski lemma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ideal/Variant241ea53c824a092a55fc2a7e1d7daf3a1aaeef298f8e09c5ee9b428c2ef54e9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ideal/Variant241ea53c824a092a55fc2a7e1d7daf3a1aaeef298f8e09c5ee9b428c2ef54e9f.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522292c25bdcc7bebdb43f2a81fad2ccca0038b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
