# Prod.contMDiffSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f36116423aaf464eecb29680e3d5a9bd27d3de0d551cc4ebb3181207bf755fb0",
  "kind": "instance",
  "lexical_name": "Prod.contMDiffSMul",
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
  "slug": "prod-contmdiffsmul--fb10412890d3f5173fc75312",
  "source": {
    "blob": "f96c1a941b583f142a956cae85c952405c26f96d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 193,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SMul/Variant113b1004d6f87412c0b1d1fc048f9f33ccd6555217237b4c753a0de3d5a048c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb10412890d3f5173fc7531231b261030875a24e4980a7903cd7a91c4dba57b0",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SMul/Variant113b1004d6f87412c0b1d1fc048f9f33ccd6555217237b4c753a0de3d5a048c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f36116423aaf464eecb29680e3d5a9bd27d3de0d551cc4ebb3181207bf755fb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.contMDiffSMul [SMul G M] [SMul G N] {n : ℕ∞ω} [ContMDiffSMul I I' n G M]
    [ContMDiffSMul I I'' n G N] : ContMDiffSMul I (I'.prod I'') n G (M × N) where
  contMDiff_smul := (contMDiff_fst.smul <| contMDiff_fst.comp contMDiff_snd).prodMk <|
      contMDiff_fst.smul <| contMDiff_snd.comp contMDiff_snd

/-- If `G` acts continuously differentiably on `G'` and `G'` acts continuously differentiably on
`M`, then `G` acts continuously differentiably on `M`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SMul/Variant113b1004d6f87412c0b1d1fc048f9f33ccd6555217237b4c753a0de3d5a048c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SMul/Variant113b1004d6f87412c0b1d1fc048f9f33ccd6555217237b4c753a0de3d5a048c4.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96c1a941b583f142a956cae85c952405c26f96d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
