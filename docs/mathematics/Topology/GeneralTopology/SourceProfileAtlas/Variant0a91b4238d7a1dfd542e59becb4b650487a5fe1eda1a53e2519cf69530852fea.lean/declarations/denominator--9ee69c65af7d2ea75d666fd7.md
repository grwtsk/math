# denominator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e487f6ff86b7f9d5e86abdca6df4715b714e7e06a2513f8339e043686e2b66c",
  "kind": "def",
  "lexical_name": "denominator",
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
  "slug": "denominator--9ee69c65af7d2ea75d666fd7",
  "source": {
    "blob": "b37ee3da5157fd7d9f38f22db94be592cf43d2fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/SourceProfileAtlas/Variant0a91b4238d7a1dfd542e59becb4b650487a5fe1eda1a53e2519cf69530852fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ee69c65af7d2ea75d666fd74fb7baa7dab21b53334389d76347cb36da344190",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceProfileAtlas/Variant0a91b4238d7a1dfd542e59becb4b650487a5fe1eda1a53e2519cf69530852fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e487f6ff86b7f9d5e86abdca6df4715b714e7e06a2513f8339e043686e2b66c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def denominator (p : Coefficients) : ℝ :=
  (196608 / 5005 : ℝ) * p.a - (131072 / 45045 : ℝ) * p.b +
    (65536 / 109395 : ℝ) * p.c

/-- Divide each homogeneous coefficient by the shared normalization denominator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceProfileAtlas/Variant0a91b4238d7a1dfd542e59becb4b650487a5fe1eda1a53e2519cf69530852fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceProfileAtlas/Variant0a91b4238d7a1dfd542e59becb4b650487a5fe1eda1a53e2519cf69530852fea.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b37ee3da5157fd7d9f38f22db94be592cf43d2fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
