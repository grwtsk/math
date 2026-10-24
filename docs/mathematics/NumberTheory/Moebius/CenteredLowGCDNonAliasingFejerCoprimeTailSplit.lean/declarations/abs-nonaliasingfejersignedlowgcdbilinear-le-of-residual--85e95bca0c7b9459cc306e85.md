# abs_nonAliasingFejerSignedLowGCDBilinear_le_of_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:168eb3ca-feac-9bb9-1ae0-604e75e1d829",
  "kind": "theorem",
  "lexical_name": "abs_nonAliasingFejerSignedLowGCDBilinear_le_of_residual",
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
  "slug": "abs-nonaliasingfejersignedlowgcdbilinear-le-of-residual--85e95bca0c7b9459cc306e85",
  "source": {
    "blob": "02375a4004c82595b34946f3821e30f21d1a52d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 71,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85e95bca0c7b9459cc306e858b6c63792264f6d93c8faf3452d3a9944143ea9a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:168eb3ca-feac-9bb9-1ae0-604e75e1d829`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_nonAliasingFejerSignedLowGCDBilinear_le_of_residual
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    {C : ℝ}
    (hC : 0 ≤ C)
    (hresidual :
      |nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m| ≤
        C * centeredLowGCDTargetScale X) :
    |nonAliasingFejerSignedLowGCDBilinear X N m| ≤
      (C + 1152) * centeredLowGCDTargetScale X := by
  have hsplit :=
    nonAliasingFejerSignedLowGCDBilinear_eq_residual_add_high
      (X := X) (N := N) (m := m) (by omega : 1 ≤ X)
  have hhigh :=
    abs_nonAliasingFejer_highCoprimeMobiusSquare_le_target
      hX hreg hm0 hm1
  have htri :
      |nonAliasingFejerSignedLowGCDBilinear X N m| ≤
        |nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m| +
        |highCoprimeMobiusSquareExpansion X
          (nonAliasingFejerPrefixWeight X N m)| := by
    rw [hsplit]
    exact abs_add _ _
  have hscale : 0 ≤ centeredLowGCDTargetScale X := by
    unfold centeredLowGCDTargetScale
    positivity
  nlinarith

/-- Closing the residual signed packet now suffices for the actual positive-shift
estimate.  The constant `1452 = 1152 + 300` records the separately controlled
large Möbius tail and complete centered diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02375a4004c82595b34946f3821e30f21d1a52d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
