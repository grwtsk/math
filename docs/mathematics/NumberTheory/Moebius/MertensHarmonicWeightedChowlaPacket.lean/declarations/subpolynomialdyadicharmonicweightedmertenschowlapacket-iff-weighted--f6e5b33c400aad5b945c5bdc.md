# subpolynomialDyadicHarmonicWeightedMertensChowlaPacket_iff_weighted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55119f73-e75c-4d3b-f0e0-3272f6ee230d",
  "kind": "theorem",
  "lexical_name": "subpolynomialDyadicHarmonicWeightedMertensChowlaPacket_iff_weighted",
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
  "slug": "subpolynomialdyadicharmonicweightedmertenschowlapacket-iff-weighted--f6e5b33c400aad5b945c5bdc",
  "source": {
    "blob": "beda3189ebf7791a2856274b8d0fb28a2c0bb92f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 180,
    "path": "GRWTSK/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6e5b33c400aad5b945c5bdcbf4fe764c1f2e5284228e3ce4da4267051f2f5d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55119f73-e75c-4d3b-f0e0-3272f6ee230d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialDyadicHarmonicWeightedMertensChowlaPacket_iff_weighted :
    SubpolynomialDyadicHarmonicWeightedMertensChowlaPacket ↔
      SubpolynomialDyadicWeightedMertensChowlaPacket := by
  constructor
  · intro hHarm δ hδ
    obtain ⟨C, hC, hscale⟩ := hHarm δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← harmonicWeightedMertensDyadicChowlaPacket_eq_weightedPacket]
    exact hscale j
  · intro hWeighted δ hδ
    obtain ⟨C, hC, hscale⟩ := hWeighted δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [harmonicWeightedMertensDyadicChowlaPacket_eq_weightedPacket]
    exact hscale j

/-- Conditional RH endpoint through the explicit harmonic-tail supplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beda3189ebf7791a2856274b8d0fb28a2c0bb92f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
