# addHaar_ball_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34e6b3be1d28a98a0f1568d8ecf76f36ee2fc2d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 440,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da3edfca-b7ac-9474-5071-1b54ac0f59f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5087751f-2ef5-c5d9-4f72-149e33e48849",
  "kind": "theorem",
  "lexical_name": "addHaar_ball_of_pos",
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
  "slug": "addhaar-ball-of-pos--d4e4f9344996c13483d01664",
  "source": {
    "blob": "34e6b3be1d28a98a0f1568d8ecf76f36ee2fc2d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 440,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4e4f9344996c13483d016647b27cf78d6c66738ca72af70f51bb7734837affb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5087751f-2ef5-c5d9-4f72-149e33e48849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_ball_of_pos (x : E) {r : ℝ} (hr : 0 < r) :
    μ (ball x r) = ENNReal.ofReal (r ^ finrank ℝ E) * μ (ball 0 1) := by
  rw [← addHaar_ball_mul_of_pos μ x hr, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e6b3be1d28a98a0f1568d8ecf76f36ee2fc2d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
