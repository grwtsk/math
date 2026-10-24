# prototypeLocalReplacement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14200d11a86e5a407c02495c84d1b0b86d30e9d2f10564a6fc4e715dc6a57cfb",
  "kind": "def",
  "lexical_name": "prototypeLocalReplacement",
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
  "slug": "prototypelocalreplacement--a8981dce7770d9ff1c8a092e",
  "source": {
    "blob": "675e0cc8a34f3ca5dd6cbdda5a18aa82c7bc7a9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 135,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrototypeSurgery/Variant1bb74bb7bcdbe9468c46d71d70bd14949308e8aae14bbb3666b400ed1db86f4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8981dce7770d9ff1c8a092e7a7bf2259ac077ea85ecd1cb0b7aeb6507040ae4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrototypeSurgery/Variant1bb74bb7bcdbe9468c46d71d70bd14949308e8aae14bbb3666b400ed1db86f4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14200d11a86e5a407c02495c84d1b0b86d30e9d2f10564a6fc4e715dc6a57cfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prototypeLocalReplacement : LocalModelReplacement Bool Bool where
  replace := Bool.not
  identity := ⟨"prototype:surgery:replacement:false-to-true-v1"⟩
  sourceVersion := ⟨"prototype:section-version:1"⟩
  targetVersion := ⟨"prototype:section-version:2"⟩
  versionChanged := by decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrototypeSurgery/Variant1bb74bb7bcdbe9468c46d71d70bd14949308e8aae14bbb3666b400ed1db86f4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrototypeSurgery/Variant1bb74bb7bcdbe9468c46d71d70bd14949308e8aae14bbb3666b400ed1db86f4f.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `675e0cc8a34f3ca5dd6cbdda5a18aa82c7bc7a9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
