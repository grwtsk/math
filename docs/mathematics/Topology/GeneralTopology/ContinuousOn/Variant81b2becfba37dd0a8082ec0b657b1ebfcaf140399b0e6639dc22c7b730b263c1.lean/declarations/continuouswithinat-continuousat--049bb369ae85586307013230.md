# ContinuousWithinAt.continuousAt

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
      "line": 855,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81b2becfba37dd0a8082ec0b657b1ebfcaf140399b0e6639dc22c7b730b263c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61dd4113-31a8-ca9e-64c8-a2ed35fd0057",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6937c6e-10a7-5701-0e63-f83e0f7174e6",
  "kind": "theorem",
  "lexical_name": "ContinuousWithinAt.continuousAt",
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
  "slug": "continuouswithinat-continuousat--049bb369ae85586307013230",
  "source": {
    "blob": "636d4102d7aa6305beeff555b34cbca63f103113",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 859,
    "line": 855,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant81b2becfba37dd0a8082ec0b657b1ebfcaf140399b0e6639dc22c7b730b263c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:049bb369ae8558630701323091f4876074e2516462d2ddf7c5d6f9688e08db18",
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

Occurrence: `result:b6937c6e-10a7-5701-0e63-f83e0f7174e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 855–859.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousWithinAt.continuousAt {f : α → β} {s : Set α} {x : α}
    (h : ContinuousWithinAt f s x) (hs : s ∈ 𝓝 x) : ContinuousAt f x :=
  (continuousWithinAt_iff_continuousAt hs).mp h
#align continuous_within_at.continuous_at ContinuousWithinAt.continuousAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variant81b2becfba37dd0a8082ec0b657b1ebfcaf140399b0e6639dc22c7b730b263c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant81b2becfba37dd0a8082ec0b657b1ebfcaf140399b0e6639dc22c7b730b263c1.lean#L855).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `636d4102d7aa6305beeff555b34cbca63f103113` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
