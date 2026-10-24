# periodic_gcd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7442c5cc17b4a22e942fc342a85cec7c1fffd759",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:999d1faf-bb3f-a957-5899-da136a606613",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eda414fe-b17c-6a74-a4c2-2c82932bdd8c",
  "kind": "theorem",
  "lexical_name": "periodic_gcd",
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
  "slug": "periodic-gcd--fb97c5a21f587bb9fc25bacc",
  "source": {
    "blob": "7442c5cc17b4a22e942fc342a85cec7c1fffd759",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 24,
    "path": "GRWTSK/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb97c5a21f587bb9fc25baccedeef345533f1d9e9e21b74f94428994fe4928cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eda414fe-b17c-6a74-a4c2-2c82932bdd8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem periodic_gcd (a : ℕ) : Periodic (gcd a) a := by
  simp only [forall_const, gcd_add_self_right, eq_self_iff_true, Periodic]
#align nat.periodic_gcd Nat.periodic_gcd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7442c5cc17b4a22e942fc342a85cec7c1fffd759` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
