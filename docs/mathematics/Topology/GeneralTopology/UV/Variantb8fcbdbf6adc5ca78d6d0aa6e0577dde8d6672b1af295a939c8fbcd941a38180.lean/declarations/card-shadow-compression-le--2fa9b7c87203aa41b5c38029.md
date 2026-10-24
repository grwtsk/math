# card_shadow_compression_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb8f8187-cb3a-f774-5774-a17b9d94c900",
  "kind": "theorem",
  "lexical_name": "card_shadow_compression_le",
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
  "slug": "card-shadow-compression-le--2fa9b7c87203aa41b5c38029",
  "source": {
    "blob": "bbe3ddf1b0aa54ab030f9c9e22e1187d93de6af2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 436,
    "path": "GRWTSK/Topology/GeneralTopology/UV/Variantb8fcbdbf6adc5ca78d6d0aa6e0577dde8d6672b1af295a939c8fbcd941a38180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fa9b7c87203aa41b5c3802961ad66222a70d6f5b0b38f0d9d486d8d4980190c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UV/Variantb8fcbdbf6adc5ca78d6d0aa6e0577dde8d6672b1af295a939c8fbcd941a38180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb8f8187-cb3a-f774-5774-a17b9d94c900`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_shadow_compression_le (u v : Finset α)
    (huv : ∀ x ∈ u, ∃ y ∈ v, IsCompressed (u.erase x) (v.erase y) 𝒜) :
    (∂ (𝓒 u v 𝒜)).card ≤ (∂ 𝒜).card :=
  (card_le_of_subset <| shadow_compression_subset_compression_shadow _ _ huv).trans
    (card_compression _ _ _).le
#align uv.card_shadow_compression_le UV.card_shadow_compression_le

end UV
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UV/Variantb8fcbdbf6adc5ca78d6d0aa6e0577dde8d6672b1af295a939c8fbcd941a38180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UV/Variantb8fcbdbf6adc5ca78d6d0aa6e0577dde8d6672b1af295a939c8fbcd941a38180.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe3ddf1b0aa54ab030f9c9e22e1187d93de6af2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
