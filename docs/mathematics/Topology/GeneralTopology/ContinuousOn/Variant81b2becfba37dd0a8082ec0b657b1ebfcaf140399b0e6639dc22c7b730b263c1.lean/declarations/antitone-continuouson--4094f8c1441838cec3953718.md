# antitone_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "636d4102d7aa6305beeff555b34cbca63f103113",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 900,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81b2becfba37dd0a8082ec0b657b1ebfcaf140399b0e6639dc22c7b730b263c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d26546d6-30c5-6d95-6928-becd21641f02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47715c93-967c-e462-e290-bcd249e14127",
  "kind": "theorem",
  "lexical_name": "antitone_continuousOn",
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
  "slug": "antitone-continuouson--4094f8c1441838cec3953718",
  "source": {
    "blob": "636d4102d7aa6305beeff555b34cbca63f103113",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 903,
    "line": 900,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant81b2becfba37dd0a8082ec0b657b1ebfcaf140399b0e6639dc22c7b730b263c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4094f8c1441838cec3953718e151039e79008890dda17216ac4c6ab0d73a7204",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousOn/Variant81b2becfba37dd0a8082ec0b657b1ebfcaf140399b0e6639dc22c7b730b263c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47715c93-967c-e462-e290-bcd249e14127`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 900–903.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antitone_continuousOn {f : α → β} : Antitone (ContinuousOn f) := fun _s _t hst hf =>
  hf.mono hst
#align antitone_continuous_on antitone_continuousOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variant81b2becfba37dd0a8082ec0b657b1ebfcaf140399b0e6639dc22c7b730b263c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant81b2becfba37dd0a8082ec0b657b1ebfcaf140399b0e6639dc22c7b730b263c1.lean#L900).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `636d4102d7aa6305beeff555b34cbca63f103113` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
