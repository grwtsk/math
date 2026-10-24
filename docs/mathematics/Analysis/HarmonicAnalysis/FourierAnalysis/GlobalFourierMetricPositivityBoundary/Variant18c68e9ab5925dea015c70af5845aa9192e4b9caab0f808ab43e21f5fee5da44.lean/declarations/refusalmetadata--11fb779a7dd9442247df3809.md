# RefusalMetadata

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86d8ee5197f93ced08513a14b719ba9e9a16c289bb3b49d3916d0485d071efdd",
  "kind": "structure",
  "lexical_name": "RefusalMetadata",
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
  "slug": "refusalmetadata--11fb779a7dd9442247df3809",
  "source": {
    "blob": "3208c8bc11c49d26daa691aabba714cc0fd9ff24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 33,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GlobalFourierMetricPositivityBoundary/Variant18c68e9ab5925dea015c70af5845aa9192e4b9caab0f808ab43e21f5fee5da44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11fb779a7dd9442247df3809af7be3dfba74de56fed3bb6f4d3cd613acd332a7",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/GlobalFourierMetricPositivityBoundary/Variant18c68e9ab5925dea015c70af5845aa9192e4b9caab0f808ab43e21f5fee5da44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86d8ee5197f93ced08513a14b719ba9e9a16c289bb3b49d3916d0485d071efdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RefusalMetadata where
  status : ClaimStatus
  refusalReason : RefusalReason
  statusText : String
  refusalReasonText : String
  theoremAuthorityClaim : Bool
  residueOpen : Bool
deriving Repr, DecidableEq

/-- Required refusal record for premature promotion of Fourier/Möbius duality
into theorem authority. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/GlobalFourierMetricPositivityBoundary/Variant18c68e9ab5925dea015c70af5845aa9192e4b9caab0f808ab43e21f5fee5da44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GlobalFourierMetricPositivityBoundary/Variant18c68e9ab5925dea015c70af5845aa9192e4b9caab0f808ab43e21f5fee5da44.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3208c8bc11c49d26daa691aabba714cc0fd9ff24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
