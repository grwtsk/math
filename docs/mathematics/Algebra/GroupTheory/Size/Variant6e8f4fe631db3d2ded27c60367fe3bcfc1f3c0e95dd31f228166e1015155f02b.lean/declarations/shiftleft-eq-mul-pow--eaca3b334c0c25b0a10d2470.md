# shiftLeft_eq_mul_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0c36fc9c530774013bb16b1c48895e4c34b663a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f61e8c2-a457-55e8-45b0-f804cd6b5800",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc7c58ae-2cbc-b576-c7d1-c5b98128bf96",
  "kind": "theorem",
  "lexical_name": "shiftLeft_eq_mul_pow",
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
  "slug": "shiftleft-eq-mul-pow--eaca3b334c0c25b0a10d2470",
  "source": {
    "blob": "b0c36fc9c530774013bb16b1c48895e4c34b663a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 18,
    "path": "GRWTSK/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaca3b334c0c25b0a10d2470cfb6e59e042012cd213dc7417ebeec5eedb150f2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc7c58ae-2cbc-b576-c7d1-c5b98128bf96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftLeft_eq_mul_pow (m) : ∀ n, m <<< n = m * 2 ^ n := shiftLeft_eq _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0c36fc9c530774013bb16b1c48895e4c34b663a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
