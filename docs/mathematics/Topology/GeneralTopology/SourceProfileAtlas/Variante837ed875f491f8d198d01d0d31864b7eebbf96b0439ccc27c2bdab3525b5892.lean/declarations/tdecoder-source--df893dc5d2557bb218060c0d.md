# tDecoder_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5aad71d-392d-10ee-f75d-ef73843b5140",
  "kind": "theorem",
  "lexical_name": "tDecoder_source",
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
  "slug": "tdecoder-source--df893dc5d2557bb218060c0d",
  "source": {
    "blob": "b745b1d5babf77baca992ca84ea89326e7a66c01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 176,
    "path": "GRWTSK/Topology/GeneralTopology/SourceProfileAtlas/Variante837ed875f491f8d198d01d0d31864b7eebbf96b0439ccc27c2bdab3525b5892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df893dc5d2557bb218060c0dddd35ee2decb1b3bbc1005b6c9db3403bab2e868",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceProfileAtlas/Variante837ed875f491f8d198d01d0d31864b7eebbf96b0439ccc27c2bdab3525b5892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5aad71d-392d-10ee-f75d-ef73843b5140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tDecoder_source {A : ℝ} (hA : 0 ≤ A) : tDecoder (A ^ 2) = A :=
  Real.sqrt_sq hA

/-- Every prescribed source readout, including signed arithmetic, agrees by exact decoding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceProfileAtlas/Variante837ed875f491f8d198d01d0d31864b7eebbf96b0439ccc27c2bdab3525b5892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceProfileAtlas/Variante837ed875f491f8d198d01d0d31864b7eebbf96b0439ccc27c2bdab3525b5892.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b745b1d5babf77baca992ca84ea89326e7a66c01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
