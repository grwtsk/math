# green_discrepancy_pairing_add_homogeneous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:232a1f28-d61f-2e5d-ea2f-9d1c60c082c2",
  "kind": "theorem",
  "lexical_name": "green_discrepancy_pairing_add_homogeneous",
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
  "slug": "green-discrepancy-pairing-add-homogeneous--de377271484f0708042772fc",
  "source": {
    "blob": "bd7633315a1a8419c1700f24edb1011b30b80e2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleGreenGauge/Variant83d6bf20193b7efc446e9955117160daa8a571345e37e5d915050c8ff9962fd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de377271484f0708042772fc1fec4e792f8a0466b61f7595a2eaa52dc29d4d49",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleGreenGauge/Variant83d6bf20193b7efc446e9955117160daa8a571345e37e5d915050c8ff9962fd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:232a1f28-d61f-2e5d-ea2f-9d1c60c082c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem green_discrepancy_pairing_add_homogeneous (A : ℝ) (hA : 1 ≤ A)
    (g f : ℝ → ℝ) (hg : ContDiff ℝ 4 g) (hf : ContDiff ℝ 4 f)
    (hcf : HasCompactSupport f) (hzero : ∀ t, poleSquaredDifferentialOperator g t = 0) :
    (∫ t, (primeSquareGreenResidual A t + g t) * poleSquaredDifferentialOperator f t) =
      lowerPowerDiscrepancy A ⟨f, hf.continuous⟩ := by
  simp_rw [add_mul]
  rw [integral_add (prime_square_green_operator_integrable A hA f hf hcf)
    (homogeneous_operator_pairing_integrable g f hg hf hcf),
    prime_square_green_weak_discrepancy A hA f hf hcf,
    homogeneous_operator_pairing_zero g f hg hf hcf hzero, add_zero]

/-- Every ordinary or generalized pole mode is an exact homogeneous gauge freedom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleGreenGauge/Variant83d6bf20193b7efc446e9955117160daa8a571345e37e5d915050c8ff9962fd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleGreenGauge/Variant83d6bf20193b7efc446e9955117160daa8a571345e37e5d915050c8ff9962fd1.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd7633315a1a8419c1700f24edb1011b30b80e2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
