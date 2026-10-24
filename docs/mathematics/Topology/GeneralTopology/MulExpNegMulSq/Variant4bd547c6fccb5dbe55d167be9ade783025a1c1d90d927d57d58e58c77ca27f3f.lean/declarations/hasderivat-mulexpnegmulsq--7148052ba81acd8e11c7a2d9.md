# hasDerivAt_mulExpNegMulSq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4873e363c7da3da79fa83e1b7b22a55fd1f67ef4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0cd1dbe-132f-d9af-cf07-f5e2bfc87ed1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91e6c390-b2bb-e2da-64c4-e8c19ea9fe1e",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_mulExpNegMulSq",
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
  "slug": "hasderivat-mulexpnegmulsq--7148052ba81acd8e11c7a2d9",
  "source": {
    "blob": "4873e363c7da3da79fa83e1b7b22a55fd1f67ef4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7148052ba81acd8e11c7a2d9489752311dbc38ce464deb9a21b8f41c4bf477a3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91e6c390-b2bb-e2da-64c4-e8c19ea9fe1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_mulExpNegMulSq (y : ℝ) :
    HasDerivAt (mulExpNegMulSq ε)
    (exp (- (ε * y * y)) + y * (exp (- (ε * y * y)) * (-2 * ε * y))) y := by
  nth_rw 1 [← one_mul (exp (- (ε * y * y)))]
  apply HasDerivAt.mul (hasDerivAt_id' y)
  apply HasDerivAt.exp (HasDerivAt.congr_deriv (HasDerivAt.neg
    (HasDerivAt.mul (HasDerivAt.const_mul ε (hasDerivAt_id' y)) (hasDerivAt_id' y))) (by ring))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4873e363c7da3da79fa83e1b7b22a55fd1f67ef4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
