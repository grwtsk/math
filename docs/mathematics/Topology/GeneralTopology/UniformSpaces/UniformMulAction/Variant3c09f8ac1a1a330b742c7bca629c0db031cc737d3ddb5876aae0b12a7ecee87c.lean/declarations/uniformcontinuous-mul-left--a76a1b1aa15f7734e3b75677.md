# uniformContinuous_mul_left'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ac397a06074e0502e7ee9fd38abf61cd7587e2e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2244b22d-b3df-a323-08e8-7f848e3a37bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee65f01c-b127-d812-a6f7-74e2199b829f",
  "kind": "theorem",
  "lexical_name": "uniformContinuous_mul_left'",
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
  "slug": "uniformcontinuous-mul-left--a76a1b1aa15f7734e3b75677",
  "source": {
    "blob": "4ac397a06074e0502e7ee9fd38abf61cd7587e2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 140,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a76a1b1aa15f7734e3b756776ef03cc09e4ba5e57166c906debac1f022ca5825",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee65f01c-b127-d812-a6f7-74e2199b829f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformContinuous_mul_left' [UniformContinuousConstSMul R R] (a : R) :
    UniformContinuous fun b : R => a * b :=
  uniformContinuous_id.const_mul' _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ac397a06074e0502e7ee9fd38abf61cd7587e2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
