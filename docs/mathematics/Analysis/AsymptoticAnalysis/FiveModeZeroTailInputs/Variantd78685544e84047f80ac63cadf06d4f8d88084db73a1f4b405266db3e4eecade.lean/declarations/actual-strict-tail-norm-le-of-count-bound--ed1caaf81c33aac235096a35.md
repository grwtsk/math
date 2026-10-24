# actual_strict_tail_norm_le_of_count_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:716cb341-8007-91ac-5d1b-138a790c104a",
  "kind": "theorem",
  "lexical_name": "actual_strict_tail_norm_le_of_count_bound",
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
  "slug": "actual-strict-tail-norm-le-of-count-bound--ed1caaf81c33aac235096a35",
  "source": {
    "blob": "713a2b0119e58df42625a3ab77bd4b0ded863b06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 137,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed1caaf81c33aac235096a35f49403d4376484a75bffd5182e0b8588e9e7c09e",
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

Occurrence: `result:716cb341-8007-91ac-5d1b-138a790c104a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_strict_tail_norm_le_of_count_bound (A T L : ℝ)
    (hA : 1 ≤ A) (hT : 0 ≤ T)
    (hs : Summable (positiveSixthPowerWeight T))
    (hpoint : SourceAbsoluteTailMajorant A T)
    (hcount : actualPositiveSixthPowerTail T ≤ L) :
    ‖actualZeroStrictTail A T‖ ≤ 2 * sourceAbsoluteTailConstant A T * L := by
  apply (actual_strict_tail_norm_le_absolute A T hA).trans
  apply (actual_absolute_tail_le_sixth_power A T hA hT hs hpoint).trans
  exact mul_le_mul_of_nonneg_left hcount
    (mul_nonneg (by norm_num) (source_absolute_tail_constant_nonnegative A T hA))

end CommonMeanScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `713a2b0119e58df42625a3ab77bd4b0ded863b06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
