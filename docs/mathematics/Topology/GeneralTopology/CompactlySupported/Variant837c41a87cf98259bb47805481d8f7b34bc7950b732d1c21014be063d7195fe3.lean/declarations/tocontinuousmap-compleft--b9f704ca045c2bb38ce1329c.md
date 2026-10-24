# toContinuousMap_compLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb0fa679-e1a6-f2cd-3c54-bb73f901b57a",
  "kind": "lemma",
  "lexical_name": "toContinuousMap_compLeft",
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
  "slug": "tocontinuousmap-compleft--b9f704ca045c2bb38ce1329c",
  "source": {
    "blob": "756663c8d2496bfcef23a2d7e7545579bcc4bdf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 152,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9f704ca045c2bb38ce1329c756d2284f9f57a91fce492a66586101291025199",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb0fa679-e1a6-f2cd-3c54-bb73f901b57a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toContinuousMap_compLeft {g : C(β, γ)} (hg : g 0 = 0) (f : C_c(α, β)) :
    (f.compLeft g).toContinuousMap = g.comp f := ite_eq_left hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `756663c8d2496bfcef23a2d7e7545579bcc4bdf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
