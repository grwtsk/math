# actualZeta_logDeriv_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a0cd218-1529-05be-1e11-eb7d6ee8766f",
  "kind": "theorem",
  "lexical_name": "actualZeta_logDeriv_half",
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
  "slug": "actualzeta-logderiv-half--5af7274f6df663fb808ae386",
  "source": {
    "blob": "4cd33d11e78cc8b296bc329ef23ca4e8eba650a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/Analysis/ComplexAnalysis/3f5b8c52783665aec7b779f5b3adc68ccb90103ab0f38875c36e40f586f6edfcSourceActualRies/Variant14cc713d64f7967644d0c9953286d4f72a5c46c2d61c86177b8d3a7c0c679485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5af7274f6df663fb808ae386da9df5e1a6e1442cee211fe75aba8c029b4eb471",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/3f5b8c52783665aec7b779f5b3adc68ccb90103ab0f38875c36e40f586f6edfcSourceActualRies/Variant14cc713d64f7967644d0c9953286d4f72a5c46c2d61c86177b8d3a7c0c679485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a0cd218-1529-05be-1e11-eb7d6ee8766f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeta_logDeriv_half :
    logDeriv riemannZeta (1 / 2 : ℂ) = -(archimedeanMultiplier 0 : ℂ) / 2 := by
  have hc := Zeta23.WeilEF.logDeriv_completedZeta (1 / 2 : ℂ)
    (by norm_num) actual_zeta_half_ne_zero (by norm_num)
  rw [actualCompletedZeta_logDeriv_half] at hc
  have hg := Zeta23.WeilEF.gammaR_bracket 0
  simp only [Complex.ofReal_zero, zero_mul, add_zero, sub_zero, zero_div] at hg
  change logDeriv Gammaℝ (1 / 2) + logDeriv Gammaℝ (1 / 2) =
    (archimedeanMultiplier 0 : ℂ) at hg
  linear_combination hc - hg / 2

/-- The limiting center is exactly the authentic numerator's value at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/3f5b8c52783665aec7b779f5b3adc68ccb90103ab0f38875c36e40f586f6edfcSourceActualRies/Variant14cc713d64f7967644d0c9953286d4f72a5c46c2d61c86177b8d3a7c0c679485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/3f5b8c52783665aec7b779f5b3adc68ccb90103ab0f38875c36e40f586f6edfcSourceActualRies/Variant14cc713d64f7967644d0c9953286d4f72a5c46c2d61c86177b8d3a7c0c679485.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd33d11e78cc8b296bc329ef23ca4e8eba650a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
