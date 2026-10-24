# SurgicalSiteUniverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11562a86d9ab112e6845d8111f2b106aa0ec3c9eb67850838e5c403ab0c8840d",
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
  "slug": "surgicalsiteuniverse--bb35dbb29c4ebee4d181b897",
  "source": {
    "blob": "83fbb2e705b980a4efba138b27a2ada27607cef7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant18e84ee020b4242c72b3e449f623588c12bcc6324f1f66bef36ce19e9b3b5493.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb35dbb29c4ebee4d181b8975d7e0749f11c073cf0ff173e80329ed754863a8c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant18e84ee020b4242c72b3e449f623588c12bcc6324f1f66bef36ce19e9b3b5493.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11562a86d9ab112e6845d8111f2b106aa0ec3c9eb67850838e5c403ab0c8840d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–81.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant18e84ee020b4242c72b3e449f623588c12bcc6324f1f66bef36ce19e9b3b5493.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant18e84ee020b4242c72b3e449f623588c12bcc6324f1f66bef36ce19e9b3b5493.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83fbb2e705b980a4efba138b27a2ada27607cef7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
