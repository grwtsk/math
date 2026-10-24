# instPartialOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b04407018d75cd7054c127ebf838392fdba7f09b84634c92adc1a83f84d33dd6",
  "kind": "instance",
  "lexical_name": "instPartialOrder",
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
  "slug": "instpartialorder--82827b188d4b9121d6f5f3eb",
  "source": {
    "blob": "670f11ef2a2b65a9cf4b83e69be581f0b761b3d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 702,
    "line": 700,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0e5e41bde1a1f0bc5adce3796a9be07343649713d0c24d438ba13024428a631d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82827b188d4b9121d6f5f3eb5a4aee6e4e885b328ed914d522a7d4eddec10be2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0e5e41bde1a1f0bc5adce3796a9be07343649713d0c24d438ba13024428a631d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b04407018d75cd7054c127ebf838392fdba7f09b84634c92adc1a83f84d33dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 700–702.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instPartialOrder [PartialOrder β] : PartialOrder (Germ l β) where
  le_antisymm f g := inductionOn₂ f g fun _ _ h₁ h₂ ↦ (EventuallyLE.antisymm h₁ h₂).germ_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0e5e41bde1a1f0bc5adce3796a9be07343649713d0c24d438ba13024428a631d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0e5e41bde1a1f0bc5adce3796a9be07343649713d0c24d438ba13024428a631d.lean#L700).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `670f11ef2a2b65a9cf4b83e69be581f0b761b3d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
