# actualXiComplexLaplace_mul_eq_logDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:773848ed-8652-6944-5bbb-70ba38e61b0e",
  "kind": "theorem",
  "lexical_name": "actualXiComplexLaplace_mul_eq_logDerivative",
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
  "slug": "actualxicomplexlaplace-mul-eq-logderivative--527356885b44617e815a1ada",
  "source": {
    "blob": "0eeeedf80ac6d18c2d6becb95102c7f58fdc73b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 218,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant8f4251e776d3cf9da46d87af43e31a56ad59e69eab6ff85c35caf2ef270e1895.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:527356885b44617e815a1adac1a8307ad40b11fdc4cafc028fbf133730431a43",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant8f4251e776d3cf9da46d87af43e31a56ad59e69eab6ff85c35caf2ef270e1895.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:773848ed-8652-6944-5bbb-70ba38e61b0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexLaplace_mul_eq_logDerivative {z : ℂ} (hz : 1 / 2 < z.re) :
    (z + 1 / 2) * (z * actualXiComplexLaplace z) =
      -deriv riemannZeta (z + 1 / 2) / riemannZeta (z + 1 / 2) -
        actualClosedMangoldtMellinHeadSeven (z + 1 / 2) +
          ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
            (7 : ℂ) ^ (-(z + 1 / 2)) -
              (z + 1 / 2) * (7 : ℂ) ^ (1 - (z + 1 / 2)) / ((z + 1 / 2) - 1) := by
  rw [actualXiComplexLaplace_mul_eq_MellinSeven hz]
  apply actualXiComplexMellinTailSeven_mul_eq
  simp only [add_re, div_re, one_re, ofNat_re]
  norm_num
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualXiLaplaceMellin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant8f4251e776d3cf9da46d87af43e31a56ad59e69eab6ff85c35caf2ef270e1895.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant8f4251e776d3cf9da46d87af43e31a56ad59e69eab6ff85c35caf2ef270e1895.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eeeedf80ac6d18c2d6becb95102c7f58fdc73b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
