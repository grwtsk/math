# cfcHom_real_eq_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0cbdf1ff20c30af0073cf851a2f0988e8c522e45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 346,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f67b4ed5dbc93ff6225493d906cf5c5a58e65fc497879de7ad680a24663e592.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2bc861f-f378-5ddd-93cf-96f2d8a910a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17cb8ddb-50e8-23d1-dc69-4f63d8e14e64",
  "kind": "lemma",
  "lexical_name": "cfcHom_real_eq_restrict",
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
  "slug": "cfchom-real-eq-restrict--5e51b86f343cd77d14bbe10f",
  "source": {
    "blob": "0cbdf1ff20c30af0073cf851a2f0988e8c522e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 346,
    "path": "GRWTSK/Topology/GeneralTopology/Instances/Variant3f67b4ed5dbc93ff6225493d906cf5c5a58e65fc497879de7ad680a24663e592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e51b86f343cd77d14bbe10f824b22232910285d18f45e7c01f3e039af4b2252",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Instances/Variant3f67b4ed5dbc93ff6225493d906cf5c5a58e65fc497879de7ad680a24663e592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17cb8ddb-50e8-23d1-dc69-4f63d8e14e64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcHom_real_eq_restrict {a : A} (ha : IsSelfAdjoint a) :
    cfcHom ha =
      ha.spectrumRestricts.starAlgHom (R := ℝ) (S := ℂ)
        (cfcHom ha.isStarNormal) (f := Complex.reCLM) :=
  ha.spectrumRestricts.cfcHom_eq_restrict _ ha ha.isStarNormal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Instances/Variant3f67b4ed5dbc93ff6225493d906cf5c5a58e65fc497879de7ad680a24663e592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Instances/Variant3f67b4ed5dbc93ff6225493d906cf5c5a58e65fc497879de7ad680a24663e592.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cbdf1ff20c30af0073cf851a2f0988e8c522e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
