# continuousAt_codRestrict_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0fe73ce-1ac1-7e85-029a-8c80d8781675",
  "kind": "theorem",
  "lexical_name": "continuousAt_codRestrict_iff",
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
  "slug": "continuousat-codrestrict-iff--af7846b1211d18cbad580695",
  "source": {
    "blob": "2cb54758ec8ddec99a2bc28eff68d375f9ad1126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 529,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant6e9af76de04f0fcabf450a27b744f897be429e62cc7fc1527519fd095d88d2d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af7846b1211d18cbad5806956fee2f2d9ec7df30f61f3f5aa595a9095fcff724",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant6e9af76de04f0fcabf450a27b744f897be429e62cc7fc1527519fd095d88d2d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0fe73ce-1ac1-7e85-029a-8c80d8781675`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_codRestrict_iff {f : X → Y} {t : Set Y} (h1 : ∀ x, f x ∈ t) {x : X} :
    ContinuousAt (codRestrict f t h1) x ↔ ContinuousAt f x :=
  IsInducing.subtypeVal.continuousAt_iff

alias ⟨_, ContinuousAt.codRestrict⟩ := continuousAt_codRestrict_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant6e9af76de04f0fcabf450a27b744f897be429e62cc7fc1527519fd095d88d2d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant6e9af76de04f0fcabf450a27b744f897be429e62cc7fc1527519fd095d88d2d7.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cb54758ec8ddec99a2bc28eff68d375f9ad1126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
