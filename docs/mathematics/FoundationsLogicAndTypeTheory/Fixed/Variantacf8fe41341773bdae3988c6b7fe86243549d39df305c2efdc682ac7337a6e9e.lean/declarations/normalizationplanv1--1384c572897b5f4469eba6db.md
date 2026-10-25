# normalizationPlanV1?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f936e7309f4805c9d276faee7bc6bfdbbbbc99c0591a96117b953bebfe117512",
  "kind": "def",
  "lexical_name": "normalizationPlanV1?",
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
  "slug": "normalizationplanv1--1384c572897b5f4469eba6db",
  "source": {
    "blob": "d172d4334d01d82eedf57db46cf3ff6749b51783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 388,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variantacf8fe41341773bdae3988c6b7fe86243549d39df305c2efdc682ac7337a6e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1384c572897b5f4469eba6dbb22224e2420ca29fce13d6c68750a92ee916efe2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Fixed/Variantacf8fe41341773bdae3988c6b7fe86243549d39df305c2efdc682ac7337a6e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f936e7309f4805c9d276faee7bc6bfdbbbbc99c0591a96117b953bebfe117512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def normalizationPlanV1? (raw : RawXYZ) : Option NormalizationPlan :=
  if raw.Nonnegative then
    let total := rawXYZTotal raw
    if FitsSignedBits xyzFormatV1.intermediateBits (raw.x + raw.y) ∧
        FitsSignedBits xyzFormatV1.intermediateBits total then
      if 0 < total then
        match checkedMulIntermediate xyzFormatV1 xyzFormatV1.scaleRaw raw.x,
            checkedMulIntermediate xyzFormatV1 xyzFormatV1.scaleRaw raw.y,
            checkedMulIntermediate xyzFormatV1 xyzFormatV1.scaleRaw raw.z with
        | some numeratorX, some numeratorY, some numeratorZ =>
            let floorX := numeratorX / total
            let floorY := numeratorY / total
            let floorZ := numeratorZ / total
            let remainderX := numeratorX % total
            let remainderY := numeratorY % total
            let remainderZ := numeratorZ % total
            let residual := xyzFormatV1.scaleRaw - (floorX + floorY + floorZ)
            if residual = 0 ∨ residual = 1 ∨ residual = 2 then
              some {
                floorX
                floorY
                floorZ
                remainderX
                remainderY
                remainderZ
                residual
                ranked := rankXYZRemainders remainderX remainderY remainderZ
              }
            else
              none
        | _, _, _ => none
      else
        none
    else
      none
  else
    none

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Fixed/Variantacf8fe41341773bdae3988c6b7fe86243549d39df305c2efdc682ac7337a6e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variantacf8fe41341773bdae3988c6b7fe86243549d39df305c2efdc682ac7337a6e9e.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d172d4334d01d82eedf57db46cf3ff6749b51783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
