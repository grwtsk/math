# actualSignedZeroHeightShell_eq_contour_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31f1f9e0-e401-a18c-c314-523f9e1c3611",
  "kind": "theorem",
  "lexical_name": "actualSignedZeroHeightShell_eq_contour_difference",
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
  "slug": "actualsignedzeroheightshell-eq-contour-difference--0cf4d6c56c22e9a9a8b5ecd8",
  "source": {
    "blob": "a65f995aaa3502a38f5ffb606c57e5746a36e371",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 161,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Varianta710369dbd9b1b3a6d53350d956a4c60d7cc2b3eacf87ca750706dd55f0d660a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cf4d6c56c22e9a9a8b5ecd89430983db8e8d1bb66f4bf2f0b5ce267af2b9502",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Varianta710369dbd9b1b3a6d53350d956a4c60d7cc2b3eacf87ca750706dd55f0d660a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31f1f9e0-e401-a18c-c314-523f9e1c3611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSignedZeroHeightShell_eq_contour_difference (A c R1 R2 : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hc2 : c ≤ 3 / 2)
    (hR1 : 7 ≤ R1) (hR12 : R1 ≤ R2)
    (hgood1 : ∀ s : ℂ, (s.im = R1 ∨ s.im = -R1) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0)
    (hgood2 : ∀ s : ℂ, (s.im = R2 ∨ s.im = -R2) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0) :
    actualSignedZeroHeightShell A R1 R2 =
      (actualCompletedVerticalHead A c R2 - actualCompletedVerticalHead A c R1) +
      (actualFiniteHorizontalCorrection A c R2 - actualFiniteHorizontalCorrection A c R1) := by
  rw [actualSignedZeroHeightShell_eq_head_sub A R1 R2 hR12,
    actualZeroHeightHead_eq_completedVertical_add_horizontal A c R2 hA hc hc2
      (hR1.trans hR12) hgood2,
    actualZeroHeightHead_eq_completedVertical_add_horizontal A c R1 hA hc hc2 hR1 hgood1]
  ring

end FormalResearch.RiemannHypothesis.SourceActualSignedZeroDyadicShell
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Varianta710369dbd9b1b3a6d53350d956a4c60d7cc2b3eacf87ca750706dd55f0d660a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Varianta710369dbd9b1b3a6d53350d956a4c60d7cc2b3eacf87ca750706dd55f0d660a.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a65f995aaa3502a38f5ffb606c57e5746a36e371` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
