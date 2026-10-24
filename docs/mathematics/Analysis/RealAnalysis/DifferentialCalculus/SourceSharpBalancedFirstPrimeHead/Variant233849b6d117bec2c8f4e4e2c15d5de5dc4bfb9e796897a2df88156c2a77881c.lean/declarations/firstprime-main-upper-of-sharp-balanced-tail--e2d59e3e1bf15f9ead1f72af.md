# firstPrime_main_upper_of_sharp_balanced_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c41c0fdc-fc71-32b8-e0dd-4760249f42a8",
  "kind": "theorem",
  "lexical_name": "firstPrime_main_upper_of_sharp_balanced_tail",
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
  "slug": "firstprime-main-upper-of-sharp-balanced-tail--e2d59e3e1bf15f9ead1f72af",
  "source": {
    "blob": "77043482e889c574afd1614170ca4f8f60a5b4a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 205,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant233849b6d117bec2c8f4e4e2c15d5de5dc4bfb9e796897a2df88156c2a77881c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2d59e3e1bf15f9ead1f72afe3c4380e5187766bc94429a59e7281e26c0f5c17",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant233849b6d117bec2c8f4e4e2c15d5de5dc4bfb9e796897a2df88156c2a77881c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c41c0fdc-fc71-32b8-e0dd-4760249f42a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrime_main_upper_of_sharp_balanced_tail {K Q A : ℝ}
    (hQ : 91 ≤ Q) (hQA : Q ≤ A) (htail : -K ≤ balancedFirstPrimeTailWork A) :
    firstPrimeMoment A + diagonalMainCoefficient A * A ≤
      sharpBalancedFirstPrimeReturnCost K Q := by
  have hA : 1 ≤ A := by linarith
  have hcont := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).2
  have hzero := (abs_le.mp (firstPrimeZeroHead_abs_le_at_radius hQ hQA)).1
  have hhead := (abs_le.mp (balancedFirstPrimeHead_abs_le_sharp_at_radius hQ hQA)).1
  rw [firstPrime_main_eq_balanced_source A hA,
    balanced_full_eq_head_add_tail A (by linarith : 0 < A)]
  unfold sharpBalancedFirstPrimeReturnCost
  linarith only [hcont, hzero, hhead, htail]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant233849b6d117bec2c8f4e4e2c15d5de5dc4bfb9e796897a2df88156c2a77881c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant233849b6d117bec2c8f4e4e2c15d5de5dc4bfb9e796897a2df88156c2a77881c.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77043482e889c574afd1614170ca4f8f60a5b4a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
