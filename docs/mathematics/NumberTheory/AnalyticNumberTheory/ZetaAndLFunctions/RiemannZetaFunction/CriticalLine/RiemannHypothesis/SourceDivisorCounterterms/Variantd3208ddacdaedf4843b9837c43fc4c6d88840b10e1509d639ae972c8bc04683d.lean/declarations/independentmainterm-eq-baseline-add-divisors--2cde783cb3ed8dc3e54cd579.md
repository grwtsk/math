# independentMainTerm_eq_baseline_add_divisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1a845c5-4537-de16-9348-b9fefea9e228",
  "kind": "theorem",
  "lexical_name": "independentMainTerm_eq_baseline_add_divisors",
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
  "slug": "independentmainterm-eq-baseline-add-divisors--2cde783cb3ed8dc3e54cd579",
  "source": {
    "blob": "29c5c9a14769e92846bf72ff2a71a4f985d96d00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variantd3208ddacdaedf4843b9837c43fc4c6d88840b10e1509d639ae972c8bc04683d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cde783cb3ed8dc3e54cd579e72024c038293694b1a9c4121ac0c2cbd5efbf73",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variantd3208ddacdaedf4843b9837c43fc4c6d88840b10e1509d639ae972c8bc04683d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1a845c5-4537-de16-9348-b9fefea9e228`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem independentMainTerm_eq_baseline_add_divisors (A : ℝ) :
    independentMainTerm A = globalBaseline A +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * divisorCounterterm A d := by
  rw [independentMainTerm, coefficientMainTerm_eq_sampling_inventory]
  change alpha (vaughanCutoff A) * plainTypeTwoOffDiagonal A +
      diagonalMainCoefficient A * A - Real.log (vaughanCutoff A : ℝ) -
      shortMangoldtSource A - shortLogMainTerm A (sourceLogSamplingMainTerm A) +
      shortPlainMainTerm A (sourcePlainSamplingMainTerm A) = _
  unfold globalBaseline divisorCounterterm alpha shortLogMainTerm shortPlainMainTerm
  rw [Finset.sum_mul]
  simp_rw [mul_add, mul_sub, Finset.mul_sum]
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib]
  have hmean : (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      (moebius d : ℝ) / (d : ℝ) * plainTypeTwoOffDiagonal A) =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * (plainTypeTwoOffDiagonal A / (d : ℝ)) := by
    apply Finset.sum_congr rfl
    intro d _
    unfold realMoebius
    ring
  rw [hmean]
  have hr (d : ℕ) : realMoebius d * (plainTypeTwoOffDiagonal A / (d : ℝ)) =
      plainTypeTwoOffDiagonal A * realMoebius d * (d : ℝ)⁻¹ := by ring
  simp_rw [hr]
  ring

/-- The literal masked, unequal-index divisor interaction before subtracting its counterterm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variantd3208ddacdaedf4843b9837c43fc4c6d88840b10e1509d639ae972c8bc04683d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variantd3208ddacdaedf4843b9837c43fc4c6d88840b10e1509d639ae972c8bc04683d.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29c5c9a14769e92846bf72ff2a71a4f985d96d00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
