# coverEntropyInf_image_le_of_uniformContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ef94afa7d2deb8a6ae9e02e1649663605718462",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d76a16c-d4e6-d13e-2ba7-4a41f0a9e71e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:627e7c1c-c176-cd2a-9826-8fa7c13959e0",
  "kind": "theorem",
  "lexical_name": "coverEntropyInf_image_le_of_uniformContinuous",
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
  "slug": "coverentropyinf-image-le-of-uniformcontinuous--f73cefece4ac5d5020f086f8",
  "source": {
    "blob": "4ef94afa7d2deb8a6ae9e02e1649663605718462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f73cefece4ac5d5020f086f86217343af6c011ec7545858a93df7f743684f208",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:627e7c1c-c176-cd2a-9826-8fa7c13959e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coverEntropyInf_image_le_of_uniformContinuous [UniformSpace X] [UniformSpace Y] {S : X → X}
    {T : Y → Y} {φ : X → Y} (h : Semiconj φ S T) (h' : UniformContinuous φ) (F : Set X) :
    coverEntropyInf T (φ '' F) ≤ coverEntropyInf S F := by
  rw [coverEntropyInf_image_of_comap _ h F]
  exact coverEntropyInf_antitone S F (uniformContinuous_iff.1 h')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ef94afa7d2deb8a6ae9e02e1649663605718462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
