# source_negativePart_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62fbcdf2c6d7f1f5f7782badfe48bd9ca52e68df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/2708ab7d99ede73982c6dd91fccfdf64b4078482426857ad619faa55de51627c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41b7f7f1-d336-aaab-c788-8029909d79cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:787064c4-d44e-0e1b-5954-70b9017ee57e",
  "kind": "theorem",
  "lexical_name": "source_negativePart_comparison",
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
  "slug": "source-negativepart-comparison--c511ef23398462660a3a43d1",
  "source": {
    "blob": "62fbcdf2c6d7f1f5f7782badfe48bd9ca52e68df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstPrimeReduction/Variant2708ab7d99ede73982c6dd91fccfdf64b4078482426857ad619faa55de51627c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c511ef23398462660a3a43d14c469e18bf503d6a3ed59a6a97c6feff77c185a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstPrimeReduction/Variant2708ab7d99ede73982c6dd91fccfdf64b4078482426857ad619faa55de51627c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:787064c4-d44e-0e1b-5954-70b9017ee57e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_negativePart_comparison (A : ℝ) (hA : 1 ≤ A) :
    max (-sourceQuadraticValue explicitSecondDerivative A) 0 ≤
      2 * max ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) -
        firstPrimeRemainder A) 0 +
      |archimedeanMultiplier 0 - 4 - 2 * (thetaConstant + properPowerConstant)| +
        (2 * properPowerBudget) / A ^ 2 := by
  have h := source_lower_comparison A hA
  have hm := le_max_left
    ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) - firstPrimeRemainder A) 0
  have hc := neg_le_abs
    (archimedeanMultiplier 0 - 4 - 2 * (thetaConstant + properPowerConstant))
  apply max_le
  · linarith
  · exact add_nonneg
      (add_nonneg (mul_nonneg (by norm_num) (le_max_right _ _)) (abs_nonneg _))
      (div_nonneg (mul_nonneg (by norm_num) properPowerBudget_nonneg) (sq_nonneg A))

end
end FirstPrimeReductionScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstPrimeReduction/Variant2708ab7d99ede73982c6dd91fccfdf64b4078482426857ad619faa55de51627c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstPrimeReduction/Variant2708ab7d99ede73982c6dd91fccfdf64b4078482426857ad619faa55de51627c.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62fbcdf2c6d7f1f5f7782badfe48bd9ca52e68df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
