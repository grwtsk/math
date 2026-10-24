# actualSignedZeroHeightShell_eq_contour_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22b4f1dc-0a25-10e4-2477-4ee87b6a5e66",
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
  "slug": "actualsignedzeroheightshell-eq-contour-difference--0f67752dd4c5cb27fdbf7716",
  "source": {
    "blob": "008a5074e1b88821788ed4273a48dad3211a0bcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 153,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f67752dd4c5cb27fdbf7716cfce503412857f459e5e21a4d1602003753cf9a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22b4f1dc-0a25-10e4-2477-4ee87b6a5e66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–168.

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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `008a5074e1b88821788ed4273a48dad3211a0bcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
