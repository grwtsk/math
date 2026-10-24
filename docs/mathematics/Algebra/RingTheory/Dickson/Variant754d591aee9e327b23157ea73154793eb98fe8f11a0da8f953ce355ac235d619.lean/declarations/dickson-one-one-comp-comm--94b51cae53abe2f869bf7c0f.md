# dickson_one_one_comp_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34bff047db3c38d4ab7eb79628f6b70d5cda46f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4222951a-5546-3b09-c7b2-fb6b3217e848",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33e6c209-393c-dd5d-6d4f-f9c4c8eaabdd",
  "kind": "theorem",
  "lexical_name": "dickson_one_one_comp_comm",
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
  "slug": "dickson-one-one-comp-comm--94b51cae53abe2f869bf7c0f",
  "source": {
    "blob": "34bff047db3c38d4ab7eb79628f6b70d5cda46f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 194,
    "path": "GRWTSK/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94b51cae53abe2f869bf7c0f5a66fd3005a0206e544a04a7505612ca8ce18f83",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33e6c209-393c-dd5d-6d4f-f9c4c8eaabdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dickson_one_one_comp_comm (m n : ℕ) :
    (dickson 1 (1 : R) m).comp (dickson 1 1 n) = (dickson 1 1 n).comp (dickson 1 1 m) := by
  rw [← dickson_one_one_mul, mul_comm, dickson_one_one_mul]
#align polynomial.dickson_one_one_comp_comm Polynomial.dickson_one_one_comp_comm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34bff047db3c38d4ab7eb79628f6b70d5cda46f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
