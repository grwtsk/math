# polarized_difference_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b972f8cd-c497-f4e5-cc8b-7d502d0f5852",
  "kind": "theorem",
  "lexical_name": "polarized_difference_abs_le",
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
  "slug": "polarized-difference-abs-le--6330e135d5d84fc846967bed",
  "source": {
    "blob": "26ca5f84a9f4a1f8d0b9bc557d64d4e138dabc87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6330e135d5d84fc846967bedea5270120f848de87133746ef8547f876aa76f0d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b972f8cd-c497-f4e5-cc8b-7d502d0f5852`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polarized_difference_abs_le (K L : E →L[ℝ] E) (f g : E)
    {δ : ℝ} (hδ : ‖K - L‖ ≤ δ) :
    |polarizedQuadraticValue K f g - polarizedQuadraticValue L f g| ≤
      δ / 2 * (‖f‖ ^ 2 + ‖g‖ ^ 2) := by
  let a := signedQuadraticValue K (f + g) - signedQuadraticValue L (f + g)
  let b := signedQuadraticValue K (f - g) - signedQuadraticValue L (f - g)
  have hp : |a| ≤ δ * ‖f + g‖ ^ 2 :=
    quadratic_difference_abs_le_of_norm_le K L (f + g) hδ
  have hm : |b| ≤ δ * ‖f - g‖ ^ 2 :=
    quadratic_difference_abs_le_of_norm_le K L (f - g) hδ
  have hs : |a| + |b| ≤ δ * (‖f + g‖ ^ 2 + ‖f - g‖ ^ 2) := by linarith
  have he : polarizedQuadraticValue K f g - polarizedQuadraticValue L f g =
      (a - b) / 4 := by dsimp [polarizedQuadraticValue, a, b]; ring
  rw [he, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4)]
  calc
    |a - b| / 4 ≤ (|a| + |b|) / 4 := by gcongr; exact abs_sub a b
    _ ≤ δ * (‖f + g‖ ^ 2 + ‖f - g‖ ^ 2) / 4 := by gcongr
    _ = δ / 2 * (‖f‖ ^ 2 + ‖g‖ ^ 2) := by
      rw [parallelogram_law_with_norm ℝ f g]
      ring

/-- A vanishing scalar operator error on a growing scalar state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StateScaledOperatorError/Variantf766033308c4d86b1c2a130addf47276acdd81c5d0fe4640e8f488ff7abbcd6b.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ca5f84a9f4a1f8d0b9bc557d64d4e138dabc87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
