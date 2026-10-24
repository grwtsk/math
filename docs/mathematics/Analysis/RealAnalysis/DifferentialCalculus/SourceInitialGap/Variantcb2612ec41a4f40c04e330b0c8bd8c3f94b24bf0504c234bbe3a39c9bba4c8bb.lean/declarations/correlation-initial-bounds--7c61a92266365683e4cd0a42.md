# correlation_initial_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:680b9a09-b908-4457-6dfa-124974f4cc9e",
  "kind": "theorem",
  "lexical_name": "correlation_initial_bounds",
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
  "slug": "correlation-initial-bounds--7c61a92266365683e4cd0a42",
  "source": {
    "blob": "5c0246bf2a84df033ce151df0689a88f3327bc41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceInitialGap/Variantcb2612ec41a4f40c04e330b0c8bd8c3f94b24bf0504c234bbe3a39c9bba4c8bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c61a92266365683e4cd0a427c851c7e43c0dd7381da5fcb7b68b63a4e69b150",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceInitialGap/Variantcb2612ec41a4f40c04e330b0c8bd8c3f94b24bf0504c234bbe3a39c9bba4c8bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:680b9a09-b908-4457-6dfa-124974f4cc9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlation_initial_bounds {A u : ℝ} (hA : 2 ≤ A)
    (hu : u ∈ Icc 0 (A / 32)) :
    (31 / 32 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A u ∧
      -(11 / 32 : ℝ) ≤ deriv (sourceCorrelation explicitSecondDerivative A) u := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hd : 0 < 7623 * A ^ 2 := by positivity
  have husq : u ^ 2 ≤ A ^ 2 / 1024 := by
    have hs := pow_le_pow_left₀ hu.1 hu.2 2
    nlinarith only [hs]
  have h64 : 64 * u ≤ A ^ 2 := by nlinarith [hu.1, hu.2]
  have hc := (correlation_deficit hA1 u).2
  have hcb : 162826 / (7623 * A ^ 2) * u ^ 2 / 2 ≤ (1 / 32 : ℝ) := by
    rw [div_mul_eq_mul_div, div_div]
    apply (div_le_iff₀ (mul_pos hd (by norm_num : (0 : ℝ) < 2))).mpr
    nlinarith
  have hi := sourceCorrelation_deriv_increment_bound hA1 0 u
  rw [zero_add, correlation_deriv_zero hA1, sub_zero, abs_of_nonneg hu.1] at hi
  have hib : 162826 / (7623 * A ^ 2) * u ≤ (11 / 32 : ℝ) := by
    rw [div_mul_eq_mul_div]
    apply (div_le_iff₀ hd).mpr
    nlinarith
  exact ⟨by linarith, by linarith [(abs_le.mp (hi.trans hib)).1]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceInitialGap/Variantcb2612ec41a4f40c04e330b0c8bd8c3f94b24bf0504c234bbe3a39c9bba4c8bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceInitialGap/Variantcb2612ec41a4f40c04e330b0c8bd8c3f94b24bf0504c234bbe3a39c9bba4c8bb.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c0246bf2a84df033ce151df0689a88f3327bc41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
