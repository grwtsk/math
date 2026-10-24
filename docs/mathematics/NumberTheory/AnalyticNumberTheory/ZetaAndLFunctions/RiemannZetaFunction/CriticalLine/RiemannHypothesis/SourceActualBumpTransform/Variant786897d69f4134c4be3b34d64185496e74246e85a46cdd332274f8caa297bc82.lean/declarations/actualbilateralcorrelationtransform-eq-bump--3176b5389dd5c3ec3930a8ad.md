# actualBilateralCorrelationTransform_eq_bump

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47eca9fb-125b-292a-0cd5-ee98689a9161",
  "kind": "theorem",
  "lexical_name": "actualBilateralCorrelationTransform_eq_bump",
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
  "slug": "actualbilateralcorrelationtransform-eq-bump--3176b5389dd5c3ec3930a8ad",
  "source": {
    "blob": "10bb9c724d27472c5d2c0fce962e14a1717ba2d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 133,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant786897d69f4134c4be3b34d64185496e74246e85a46cdd332274f8caa297bc82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3176b5389dd5c3ec3930a8ad32b27bc3658b1f75abfce583f23c39e321d916a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant786897d69f4134c4be3b34d64185496e74246e85a46cdd332274f8caa297bc82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47eca9fb-125b-292a-0cd5-ee98689a9161`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualBilateralCorrelationTransform_eq_bump {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    actualBilateralCorrelationTransform A (s-1/2) =
      ((A / sourceNormalization A : ℝ) : ℂ) * s^2 * (s-1)^2 *
        bumpLaplace ((A : ℂ) * (s-1/2))^2 := by
  rw [actualBilateralCorrelationTransform_eq_square hA (s-1/2),
    actualSourceComplexTransform_eq_bump hA (s-1/2)]
  have hk : (((Real.sqrt A / Real.sqrt (sourceNormalization A) : ℝ) : ℂ))^2 =
      ((A / sourceNormalization A : ℝ) : ℂ) := by
    push_cast
    rw [div_pow]
    norm_cast
    rw [Real.sq_sqrt (show 0 ≤ A by linarith),
      Real.sq_sqrt (source_normalization_pos A hA).le]
  rw [mul_pow, mul_pow, hk]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualBumpTransform
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant786897d69f4134c4be3b34d64185496e74246e85a46cdd332274f8caa297bc82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant786897d69f4134c4be3b34d64185496e74246e85a46cdd332274f8caa297bc82.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10bb9c724d27472c5d2c0fce962e14a1717ba2d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
