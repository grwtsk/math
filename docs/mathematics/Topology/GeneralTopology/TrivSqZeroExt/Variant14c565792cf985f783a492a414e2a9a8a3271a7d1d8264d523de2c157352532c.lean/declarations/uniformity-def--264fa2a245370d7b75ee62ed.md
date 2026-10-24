# uniformity_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc4d7b20a3ca552490a942117118d98bdbca413b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36c2e261-91c5-7328-b497-378278dec9a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc9f1702-21e7-4b9b-e45b-9bd94b3d8efb",
  "kind": "theorem",
  "lexical_name": "uniformity_def",
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
  "slug": "uniformity-def--264fa2a245370d7b75ee62ed",
  "source": {
    "blob": "fc4d7b20a3ca552490a942117118d98bdbca413b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:264fa2a245370d7b75ee62edb3ff4e4bbaa17d25633df07f65cee4ff0b743d75",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc9f1702-21e7-4b9b-e45b-9bd94b3d8efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformity_def :
    𝓤 (tsze R M) =
      ((𝓤 R).comap fun p => (p.1.fst, p.2.fst)) ⊓ ((𝓤 M).comap fun p => (p.1.snd, p.2.snd)) :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc4d7b20a3ca552490a942117118d98bdbca413b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
