# get!_inter_of_mem_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c95c5b0241a03ccd015e0c5bb19ac226cf0a6a5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2081,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6deafdc5e8b94756a7a2674a2e9cae8ef3b76b9ae3e3fa457e7d718c9cc2efa5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6249940-c199-855d-912d-54a0f47973c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb3df424-f880-6e97-71da-b42aec3010bd",
  "kind": "theorem",
  "lexical_name": "get!_inter_of_mem_right",
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
  "slug": "get-inter-of-mem-right--877a4ad3434ae0ea27b96808",
  "source": {
    "blob": "c95c5b0241a03ccd015e0c5bb19ac226cf0a6a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2086,
    "line": 2081,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6deafdc5e8b94756a7a2674a2e9cae8ef3b76b9ae3e3fa457e7d718c9cc2efa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:877a4ad3434ae0ea27b96808ad7a1717636151eab5969a7ce1ccd8e9e7074a17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6deafdc5e8b94756a7a2674a2e9cae8ef3b76b9ae3e3fa457e7d718c9cc2efa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb3df424-f880-6e97-71da-b42aec3010bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2081–2086.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get!_inter_of_mem_right [TransCmp cmp]
    {k : α} [Inhabited β] (mem : k ∈ t₂) :
    (t₁ ∩ t₂).get! k = t₁.get! k :=
  DTreeMap.Const.get!_inter_of_mem_right mem

@[deprecated getElem!_inter_of_not_mem_right (since := "2025-12-10")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6deafdc5e8b94756a7a2674a2e9cae8ef3b76b9ae3e3fa457e7d718c9cc2efa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6deafdc5e8b94756a7a2674a2e9cae8ef3b76b9ae3e3fa457e7d718c9cc2efa5.lean#L2081).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c95c5b0241a03ccd015e0c5bb19ac226cf0a6a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
