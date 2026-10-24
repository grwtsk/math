# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:818b9d54cc1f94b38781c32e3075c9a6a5992657edb3d4a0b0868a59a2582be2",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e96a7d7073f68e3c03cac69c",
  "source": {
    "blob": "58d0049c328c35ac6415ed8f25539494742db130",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 179,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant45961b9a2b732e4846150f7522b4fb2e676ba95afd8bb2a5e1daba74393d88ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e96a7d7073f68e3c03cac69cb1d85209ed42285ed6001fb6f5ddc545a1dc26cc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant45961b9a2b732e4846150f7522b4fb2e676ba95afd8bb2a5e1daba74393d88ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:818b9d54cc1f94b38781c32e3075c9a6a5992657edb3d4a0b0868a59a2582be2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : PreservesLimitsOfShape ℕᵒᵖ (forget LightProfinite.{u}) :=
  have : PreservesLimitsOfSize.{0, 0} (forget Profinite.{u}) := preservesLimitsOfSize_shrink _
  inferInstanceAs (PreservesLimitsOfShape ℕᵒᵖ (lightToProfinite ⋙ forget Profinite))

variable {X Y : LightProfinite.{u}} (f : X ⟶ Y)

/-- Any morphism of light profinite spaces is a closed map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant45961b9a2b732e4846150f7522b4fb2e676ba95afd8bb2a5e1daba74393d88ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant45961b9a2b732e4846150f7522b4fb2e676ba95afd8bb2a5e1daba74393d88ba.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58d0049c328c35ac6415ed8f25539494742db130` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
