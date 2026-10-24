# subpolynomialDyadicWeightedMertensChowlaPacket_iff_signedDepth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98951a5e-afd1-c5d4-3f61-a16448983030",
  "kind": "theorem",
  "lexical_name": "subpolynomialDyadicWeightedMertensChowlaPacket_iff_signedDepth",
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
  "slug": "subpolynomialdyadicweightedmertenschowlapacket-iff-signeddepth--32e0269e19cb70b7b2eca283",
  "source": {
    "blob": "112150362f5d31be9e5b6823e8f0b3598e47decb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 159,
    "path": "GRWTSK/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32e0269e19cb70b7b2eca283e1ccf2fcb91bac325d32a0fff89f0ee30ea31e06",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98951a5e-afd1-c5d4-3f61-a16448983030`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialDyadicWeightedMertensChowlaPacket_iff_signedDepth :
    SubpolynomialDyadicWeightedMertensChowlaPacket ↔
      SubpolynomialDyadicSignedAbelDepthPacket := by
  constructor
  · intro hWeighted δ hδ
    obtain ⟨C, hC, hscale⟩ := hWeighted δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← weightedMertensDyadicChowlaPacket_eq_signedAbelDepthPacket]
    exact hscale j
  · intro hDepth δ hδ
    obtain ⟨C, hC, hscale⟩ := hDepth δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [weightedMertensDyadicChowlaPacket_eq_signedAbelDepthPacket]
    exact hscale j

/-- Conditional RH endpoint from the exact weighted-Chowla packet supplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112150362f5d31be9e5b6823e8f0b3598e47decb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
