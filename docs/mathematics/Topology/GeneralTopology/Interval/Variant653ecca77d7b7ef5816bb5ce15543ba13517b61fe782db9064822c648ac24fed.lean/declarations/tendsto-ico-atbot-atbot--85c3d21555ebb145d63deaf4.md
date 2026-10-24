# tendsto_Ico_atBot_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5eec189197fc6e98b2142009e2b47b8c84665689591ccd67a98751dadbb8e086",
  "kind": "instance",
  "lexical_name": "tendsto_Ico_atBot_atBot",
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
  "slug": "tendsto-ico-atbot-atbot--85c3d21555ebb145d63deaf4",
  "source": {
    "blob": "c210c9e40148a29029e7f1668ed843f576322921",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85c3d21555ebb145d63deaf48cb0c4979c869261684fd67b8e42ccd2e9d52d96",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5eec189197fc6e98b2142009e2b47b8c84665689591ccd67a98751dadbb8e086`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance tendsto_Ico_atBot_atBot : TendstoIxxClass Ico (atBot : Filter α) atBot :=
  tendstoIxxClass_of_subset fun _ _ => Ico_subset_Icc_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c210c9e40148a29029e7f1668ed843f576322921` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
