# polynomial_known_label_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd75169e-f23f-5a0f-63c7-3bfd86c05a20",
  "kind": "theorem",
  "lexical_name": "polynomial_known_label_error",
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
  "slug": "polynomial-known-label-error--e7a087ac45d56b492599c686",
  "source": {
    "blob": "ee461f39668812f0da9183ae09a09ceb016f1fbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KnownLabelPhaseConsumer/Variant6f4a255f646853e406a40bd8e56dc8ec576329bf017f058b6e4030b0a3783b25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7a087ac45d56b492599c6868e52a854324ae5851ad10036d0a8e28578140a3c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KnownLabelPhaseConsumer/Variant6f4a255f646853e406a40bd8e56dc8ec576329bf017f058b6e4030b0a3783b25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd75169e-f23f-5a0f-63c7-3bfd86c05a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_known_label_error {ι : Type*} (s : Finset ι)
    (a : ι → ℂ) (γ η : ι → ℝ) {c C aexp M b A H ε t : ℝ} {k : ℕ}
    (hc : 0 < c) (hcert : PhaseCertificate c k)
    (hC : 0 ≤ C) (ha : 0 ≤ aexp) (hM : 0 ≤ M) (hA : 1 ≤ A)
    (hH : 0 < H) (hcutoff : H ≤ C * A ^ aexp) (hε : 0 ≤ ε)
    (ht : t ∈ Set.Icc 0 (2 * A))
    (hγ : ∀ j ∈ s, |γ j| ≤ H) (hη : ∀ j ∈ s, |η j| ≤ H)
    (herror : ∀ j ∈ s, phaseDistance (γ j) (η j) ≤ ε)
    (hmass : (∑ j ∈ s, ‖a j‖) ≤ M * A ^ b) :
    ‖(∑ j ∈ s, a j * mode (γ j) t) - (∑ j ∈ s, a j * mode (η j) t)‖ ≤
      2 * M * c⁻¹ * (1 + C) ^ (k : ℝ) * A ^ (1 + b + aexp * k) * ε := by
  have hinv := inverse_cost_at_polynomial_cutoff (k := k) hc hC ha hA hH.le hcutoff
  have hAn : 0 ≤ A := by linarith
  have hcost : 0 ≤ c⁻¹ * (1 + H) ^ (k : ℝ) * ε := by positivity
  have hleft := mul_le_mul hmass ht.2 ht.1
    (mul_nonneg hM (Real.rpow_nonneg hAn b))
  have hright := mul_le_mul_of_nonneg_right hinv hε
  have hproduct := mul_le_mul hleft hright hcost
    (mul_nonneg (mul_nonneg hM (Real.rpow_nonneg hAn b)) (by linarith : 0 ≤ 2 * A))
  have heq : M * A ^ b * (2 * A) *
      (c⁻¹ * (1 + C) ^ (k : ℝ) * A ^ (aexp * k) * ε) =
      2 * M * c⁻¹ * (1 + C) ^ (k : ℝ) * A ^ (1 + b + aexp * k) * ε := by
    rw [Real.rpow_add (by linarith : 0 < A), Real.rpow_add (by linarith : 0 < A),
      Real.rpow_one]
    ring
  exact (finite_known_label_error s a γ η hc hcert hH ht.1 hγ hη herror).trans
    (hproduct.trans_eq heq)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KnownLabelPhaseConsumer/Variant6f4a255f646853e406a40bd8e56dc8ec576329bf017f058b6e4030b0a3783b25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KnownLabelPhaseConsumer/Variant6f4a255f646853e406a40bd8e56dc8ec576329bf017f058b6e4030b0a3783b25.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee461f39668812f0da9183ae09a09ceb016f1fbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
