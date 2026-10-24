# actualPsiFloor_small_block_derivative_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:817d7050-670f-e736-938f-b76c8a3c58b6",
  "kind": "theorem",
  "lexical_name": "actualPsiFloor_small_block_derivative_neg",
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
  "slug": "actualpsifloor-small-block-derivative-neg--53725d87980d936c49425cc9",
  "source": {
    "blob": "c5bd89a7525bd3425498ee74916c2a248c6c970f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPsiFloorKernelSignChallenge/Varianta86fbd0a2475a27b9e4ec9160f500b9be193fe73746e7846dd0166f2c5a2991b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53725d87980d936c49425cc92371f5d54ed8afd065c4b0aa0f8574a1f75ad508",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPsiFloorKernelSignChallenge/Varianta86fbd0a2475a27b9e4ec9160f500b9be193fe73746e7846dd0166f2c5a2991b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:817d7050-670f-e736-938f-b76c8a3c58b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsiFloor_small_block_derivative_neg {A x : ℝ} (hA : 91 ≤ A)
    (hx : 1 ≤ x) (hx20 : x ≤ 20) : deriv (plainProfile A 1) x < 0 := by
  have hx0 : 0 < x := by linarith
  have hu := actualPsiFloor_small_block_derivative_upper hA hx hx20
  have hp := div_pos (Real.exp_pos (-Real.log x / 2)) hx0
  linarith

/-- Actual weighted pairing density is negative on the genuine closed six block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPsiFloorKernelSignChallenge/Varianta86fbd0a2475a27b9e4ec9160f500b9be193fe73746e7846dd0166f2c5a2991b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPsiFloorKernelSignChallenge/Varianta86fbd0a2475a27b9e4ec9160f500b9be193fe73746e7846dd0166f2c5a2991b.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5bd89a7525bd3425498ee74916c2a248c6c970f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
