# IntegrationParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2b0a46c7740ed36df350d968218a99b62840cffa369c75632f6ad8cb488177f",
  "kind": "structure",
  "lexical_name": "IntegrationParams",
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
  "slug": "integrationparams--60c9f0e979198c183e08cf8c",
  "source": {
    "blob": "689666b8c173fbbbd70c32e4394467dfb2e25007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 202,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60c9f0e979198c183e08cf8cefde026c0d047a4c9df6ff974a85a7416d4b0f4d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2b0a46c7740ed36df350d968218a99b62840cffa369c75632f6ad8cb488177f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IntegrationParams : Type where
  (bRiemann bHenstock bDistortion : Bool)

variable {l l₁ l₂ : IntegrationParams}

namespace IntegrationParams

/-- Auxiliary equivalence with a product type used to lift an order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `689666b8c173fbbbd70c32e4394467dfb2e25007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
