# actual_positive_absolute_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9931a684-969c-5819-a6b4-a4ee82fc62e6",
  "kind": "theorem",
  "lexical_name": "actual_positive_absolute_tail_le",
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
  "slug": "actual-positive-absolute-tail-le--447244b61cb1488e90e37d87",
  "source": {
    "blob": "713a2b0119e58df42625a3ab77bd4b0ded863b06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 107,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:447244b61cb1488e90e37d875143ca6d796e2babfbdb01c01c3fc130dbac9d33",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9931a684-969c-5819-a6b4-a4ee82fc62e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_positive_absolute_tail_le (A T : ℝ) (hA : 1 ≤ A) (hT : 0 ≤ T)
    (hs : Summable (positiveSixthPowerWeight T))
    (hpoint : SourceAbsoluteTailMajorant A T) :
    actualPositiveAbsoluteZeroTail A T ≤
      sourceAbsoluteTailConstant A T * actualPositiveSixthPowerTail T := by
  unfold actualPositiveAbsoluteZeroTail actualPositiveSixthPowerTail
  rw [← tsum_mul_left]
  apply Summable.tsum_le_tsum
  · intro o
    have ho : T < (ZeroObject.shiftedValue o.val).im := o.property
    have hp : 0 < (ZeroObject.shiftedValue o.val).im := hT.trans_lt ho
    have hb := hpoint o.val (by simpa only [abs_of_pos hp] using ho)
    simpa only [positiveSixthPowerWeight, abs_of_pos hp, div_eq_mul_inv, one_mul] using hb
  · simpa only [Function.comp_def] using
      (actual_zero_square_norms_summable A hA).subtype (· ∈ zeroPositiveStrictTailSet T)
  · exact hs.mul_left _

/-- Both signs supply the factor two before any finite rational comparison. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `713a2b0119e58df42625a3ab77bd4b0ded863b06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
