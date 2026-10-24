# smoothed_pole_bilateral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30aae664-c476-4330-7057-f86ec3a5616f",
  "kind": "theorem",
  "lexical_name": "smoothed_pole_bilateral",
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
  "slug": "smoothed-pole-bilateral--755fc0a5db1fc32efb768c16",
  "source": {
    "blob": "b425f973f9833ebb51b75823e783d29be23875f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 318,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:755fc0a5db1fc32efb768c164f810c39356d6d253af6b5b4b52ecd02692186b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30aae664-c476-4330-7057-f86ec3a5616f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothed_pole_bilateral (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    smoothedBilateralTransform A ε hε (1 / 2) = 0 ∧
    smoothedBilateralTransform A ε hε (-1 / 2) = 0 := by
  have hp : bilateralTransform A (1 / 2) = 0 := by
    rw [ZeroTransform.actual_transform A (by linarith) (1 / 2) (by norm_num)]
    norm_num [dividedTransform]
  have hn : bilateralTransform A (-1 / 2) = 0 := by
    rw [ZeroTransform.actual_transform A (by linarith) (-1 / 2) (by norm_num)]
    norm_num [dividedTransform]
  constructor
  · rw [smoothed_bilateral_transform A ε hA hε, hp, zero_mul]
  · rw [smoothed_bilateral_transform A ε hA hε, hn, zero_mul]

/-- Exact Z2.6 target: the prescribed smooth source, with the common support
radius `A + 1`, has its convergent occurrence sum equal to the unchanged
source arithmetic form.  This proposition is not asserted below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b425f973f9833ebb51b75823e783d29be23875f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
