# subpolynomialDyadicSignedAbelDepthPacket_of_bilinearEstimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b958360a-cc91-ad35-62c0-2c676809c6ac",
  "kind": "theorem",
  "lexical_name": "subpolynomialDyadicSignedAbelDepthPacket_of_bilinearEstimate",
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
  "slug": "subpolynomialdyadicsignedabeldepthpacket-of-bilinearestimate--ce6fe1c40ff7e1a2faf190a3",
  "source": {
    "blob": "0ba568f05f1f72b6e8900bf57103fe9100555926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 103,
    "path": "GRWTSK/NumberTheory/Moebius/SignedAbelDepthDispersion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce6fe1c40ff7e1a2faf190a36fa8e2e4bf717ab842be5ba7dc1952d1f94f7db0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b958360a-cc91-ad35-62c0-2c676809c6ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialDyadicSignedAbelDepthPacket_of_bilinearEstimate
    (d : SignedAbelDepthBilinearModel)
    (hDisp : SubpolynomialSignedAbelDepthBilinearEstimate d) :
    SubpolynomialDyadicSignedAbelDepthPacket := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hDisp δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  rw [d.depthPacket_eq_structured_add_residual]
  exact hscale j

/-- Conditional RH endpoint through a source-faithful bilinear/dispersion
model and its still-open estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedAbelDepthDispersion.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ba568f05f1f72b6e8900bf57103fe9100555926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
