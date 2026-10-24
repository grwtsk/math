# complete_verified_height_of_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b993c30-d50c-f39c-11e2-f0a6ca14b9a5",
  "kind": "theorem",
  "lexical_name": "complete_verified_height_of_positive",
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
  "slug": "complete-verified-height-of-positive--e96e1ded8a4318077c53b67a",
  "source": {
    "blob": "4e41a8841bb4d4015388630080128c7e51a2256a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 70,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroHead/Variantcd503616f84c98abc0101e61b14bd95a0b80c5ae773b04ebc8925269345a9634.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e96e1ded8a4318077c53b67a05c5a679ba5e6644b5daff88153a6f369529214f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiveModeZeroHead/Variantcd503616f84c98abc0101e61b14bd95a0b80c5ae773b04ebc8925269345a9634.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b993c30-d50c-f39c-11e2-f0a6ca14b9a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_verified_height_of_positive (T : ℝ)
    (h : CompletePositiveVerifiedHeight T) : CompleteVerifiedHeight T := by
  intro o ho
  have hn := ZeroObject.shiftedValue_im_ne_zero_of_realZeroExclusion
    ZeroEta.real_zero_exclusion o
  rcases lt_or_gt_of_ne hn with hneg | hpos
  · have hc := h (ZeroObject.conjugateOccurrence o)
    simp only [ZeroObject.shiftedValue_conjugate, Complex.conj_im, Complex.conj_re] at hc
    exact hc (by linarith) (by simpa only [abs_of_neg hneg] using ho)
  · exact h o hpos (by simpa only [abs_of_pos hpos] using ho)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiveModeZeroHead/Variantcd503616f84c98abc0101e61b14bd95a0b80c5ae773b04ebc8925269345a9634.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroHead/Variantcd503616f84c98abc0101e61b14bd95a0b80c5ae773b04ebc8925269345a9634.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e41a8841bb4d4015388630080128c7e51a2256a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
