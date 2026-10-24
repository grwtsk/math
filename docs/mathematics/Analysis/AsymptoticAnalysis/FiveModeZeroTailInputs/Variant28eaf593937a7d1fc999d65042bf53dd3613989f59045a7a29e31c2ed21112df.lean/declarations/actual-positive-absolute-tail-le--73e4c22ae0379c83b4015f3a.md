# actual_positive_absolute_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf5bd1f4-4dd0-e33b-4d9c-18ee7a23f0f3",
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
  "slug": "actual-positive-absolute-tail-le--73e4c22ae0379c83b4015f3a",
  "source": {
    "blob": "fe9a66e85ce2a689d841c47721070ca13a3e0576",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 99,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variant28eaf593937a7d1fc999d65042bf53dd3613989f59045a7a29e31c2ed21112df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73e4c22ae0379c83b4015f3a6e5d793eaa0f047f762cc59132806eb72c878e22",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variant28eaf593937a7d1fc999d65042bf53dd3613989f59045a7a29e31c2ed21112df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf5bd1f4-4dd0-e33b-4d9c-18ee7a23f0f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–116.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variant28eaf593937a7d1fc999d65042bf53dd3613989f59045a7a29e31c2ed21112df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variant28eaf593937a7d1fc999d65042bf53dd3613989f59045a7a29e31c2ed21112df.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe9a66e85ce2a689d841c47721070ca13a3e0576` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
