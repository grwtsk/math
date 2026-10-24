# SurgicalSiteUniverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:809bbc54b1085bf5a7818993aae0f93f8a1fc904ce3dab5e240706f0e58d9ebf",
  "kind": "structure",
  "lexical_name": "SurgicalSiteUniverse",
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
  "slug": "surgicalsiteuniverse--0d2d4f39ff063393c17f4b2c",
  "source": {
    "blob": "e85cc32184c0b071017fc2b537ac6691f093e904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant75abe2faaaf4dc77984dd144c067ede5e65cc5c2c9b035dd66df2ee1bbbbb66f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d2d4f39ff063393c17f4b2ca6c15d3ea0d5b2d8d9442ddda6ba07335473f423",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant75abe2faaaf4dc77984dd144c067ede5e65cc5c2c9b035dd66df2ee1bbbbb66f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:809bbc54b1085bf5a7818993aae0f93f8a1fc904ce3dab5e240706f0e58d9ebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SurgicalSiteUniverse
    (decomposition : FiniteDecomposition) where
  eligible : Finset decomposition.Piece
  eligible_spec :
    ∀ site, site ∈ eligible ↔ SiteEligible decomposition site
  stableOrderKey : decomposition.Piece → String
  orderKey_injective : Function.Injective stableOrderKey
  metadataAt : (site : decomposition.Piece) →
    SurgicalSiteMetadata decomposition site
  siteIdentity_injective :
    Function.Injective (fun site => (metadataAt site).stableSiteIdentity)

namespace SurgicalSiteUniverse

/-- Generic eligibility means the initial universe contains every piece. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant75abe2faaaf4dc77984dd144c067ede5e65cc5c2c9b035dd66df2ee1bbbbb66f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant75abe2faaaf4dc77984dd144c067ede5e65cc5c2c9b035dd66df2ee1bbbbb66f.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e85cc32184c0b071017fc2b537ac6691f093e904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
