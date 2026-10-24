# smul_mem_pointwise_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f867af3f7197b3ab4e73ed9fd8e962de31033208",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 450,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afd6df1ee002a89109353507b1f1fa83e40b4dbcf1523050be4407733689268e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ba67f8a-c93b-657e-3c91-5d5e00f82d01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b6ed53d-2a6c-d2d8-24b9-4722eabc72c0",
  "kind": "theorem",
  "lexical_name": "smul_mem_pointwise_smul",
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
  "slug": "smul-mem-pointwise-smul--ed9109ef657d7c9bf9a445d3",
  "source": {
    "blob": "f867af3f7197b3ab4e73ed9fd8e962de31033208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 450,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantafd6df1ee002a89109353507b1f1fa83e40b4dbcf1523050be4407733689268e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed9109ef657d7c9bf9a445d3dfeed18f08e820558f30455f07e29191b1e1752a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variantafd6df1ee002a89109353507b1f1fa83e40b4dbcf1523050be4407733689268e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b6ed53d-2a6c-d2d8-24b9-4722eabc72c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_mem_pointwise_smul (m : G) (a : α) (S : Subgroup G) : m ∈ S → a • m ∈ a • S :=
  (Set.smul_mem_smul_set : _ → _ ∈ a • (S : Set G))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variantafd6df1ee002a89109353507b1f1fa83e40b4dbcf1523050be4407733689268e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variantafd6df1ee002a89109353507b1f1fa83e40b4dbcf1523050be4407733689268e.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f867af3f7197b3ab4e73ed9fd8e962de31033208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
