# arithmetic_zero_equality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d2db9db-609f-fbae-a675-7e6d9a74fab6",
  "kind": "theorem",
  "lexical_name": "arithmetic_zero_equality",
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
  "slug": "arithmetic-zero-equality--8fb1e50d8a46e46f477cb410",
  "source": {
    "blob": "af706e1402e4e183ebad1aa498e6fdccf9cd10f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Comparison/Variant383378639dd0189a5ef019bb46d478b1427fc53a477523693370c03ae9761d99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fb1e50d8a46e46f477cb41028584e83e3f565bfb7c459a8afeacf2ae9bb6759",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Comparison/Variant383378639dd0189a5ef019bb46d478b1427fc53a477523693370c03ae9761d99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d2db9db-609f-fbae-a675-7e6d9a74fab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmetic_zero_equality : ArithmeticZeroEqualityObligation := by
  intro A hA
  have hef := explicit_formula (complexCorrelation A)
    (complexCorrelation_contDiff_two A hA) (complexCorrelation_hasCompactSupport A hA)
  calc
    (realArithmeticForm A (actualTest A) : ℂ) =
        Zeta23.EF.literatureRHS (complexCorrelation A) :=
      (literatureRHS_eq_source_form A hA).symm
    _ = ∑' p : Zeta23.zetaZeroConfig.carrier,
        (Zeta23.zetaZeroConfig.mult p : ℂ) *
          Zeta23.paperFT (complexCorrelation A) (Zeta23.gammaOf p) := hef.2.symm
    _ = ∑' p : Zeta23.zetaZeroConfig.carrier,
        (Zeta23.zetaZeroConfig.mult p : ℂ) *
          bilateralTransform A ((p : ℂ) - 1 / 2) ^ 2 := by
      apply tsum_congr
      intro p
      rw [paperFT_at_zero A hA]
    _ = ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2 :=
      weighted_source_sum_eq_occurrences A hA

/-- The unchanged full source obligation, with every admission and summability field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Comparison/Variant383378639dd0189a5ef019bb46d478b1427fc53a477523693370c03ae9761d99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Comparison/Variant383378639dd0189a5ef019bb46d478b1427fc53a477523693370c03ae9761d99.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af706e1402e4e183ebad1aa498e6fdccf9cd10f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
