# actualZeta_logDeriv_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2f75710-f1d6-5540-4566-ab325dc1de45",
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
  "slug": "actualzeta-logderiv-half--35cf98f6914f915dcc8dcfe0",
  "source": {
    "blob": "7a41655963df05e056f73dbf50b4f560e5b644b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszCriticalCenter/Variant1846fd1a82e760fbe61be0e89232320d6492fdf20b1a3bcb18d6632de9eea2df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35cf98f6914f915dcc8dcfe0ec2477831a106e91b8a3e3d8575191d901c4e75d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SourceActualRieszCriticalCenter/Variant1846fd1a82e760fbe61be0e89232320d6492fdf20b1a3bcb18d6632de9eea2df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2f75710-f1d6-5540-4566-ab325dc1de45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeta_logDeriv_half :
    logDeriv riemannZeta (1 / 2 : ℂ) = -(archimedeanMultiplier 0 : ℂ) / 2 := by
  have hc := Zeta23.WeilEF.logDeriv_completedZeta (1 / 2 : ℂ)
    (by norm_num) actual_zeta_half_ne_zero (by norm_num)
  rw [actualCompletedZeta_logDeriv_half] at hc
  have hg := Zeta23.WeilEF.gammaR_bracket 0
  simp only [Complex.ofReal_zero, zero_mul, add_zero, sub_zero, zero_div] at hg
  have hg2 : logDeriv Gammaℝ (1 / 2) + logDeriv Gammaℝ (1 / 2) =
      (archimedeanMultiplier 0 : ℂ) := by
    simpa [archimedeanMultiplier] using hg
  linear_combination -hc - hg2 / 2

/-- The limiting center is exactly the authentic numerator's value at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/SourceActualRieszCriticalCenter/Variant1846fd1a82e760fbe61be0e89232320d6492fdf20b1a3bcb18d6632de9eea2df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszCriticalCenter/Variant1846fd1a82e760fbe61be0e89232320d6492fdf20b1a3bcb18d6632de9eea2df.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a41655963df05e056f73dbf50b4f560e5b644b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
