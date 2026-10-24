# integral_heatRemainderPolynomial_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6717eaf7-fe5b-e776-885a-32ae9dc9e55e",
  "kind": "theorem",
  "lexical_name": "integral_heatRemainderPolynomial_error",
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
  "slug": "integral-heatremainderpolynomial-error--ebce0c898780bc2d7d194761",
  "source": {
    "blob": "c2900e246d8cace336edf4924e96672d0a59d216",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 112,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebce0c898780bc2d7d19476100c2b62dd1ad3b96eafa23fc166fa78cb7bd54db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6717eaf7-fe5b-e776-885a-32ae9dc9e55e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_heatRemainderPolynomial_error {α : Type*} [MeasurableSpace α]
    (μ : Measure α) (k : α → ℝ) (N : ℕ) {τ : ℝ} (hτ : 0 ≤ τ)
    (hr : Integrable (fun x => k x * (1 - Real.exp (-τ * k x ^ 2))) μ)
    (hp : Integrable (fun x => heatRemainderPolynomial N τ (k x)) μ)
    (hm : Integrable (fun x => |k x| ^ (2 * N + 5)) μ) :
    |(∫ x, k x * (1 - Real.exp (-τ * k x ^ 2)) ∂μ) -
      (∫ x, heatRemainderPolynomial N τ (k x) ∂μ)| ≤
        τ ^ (N + 2) / (N + 2).factorial * (∫ x, |k x| ^ (2 * N + 5) ∂μ) := by
  rw [← integral_sub hr hp]
  calc
    _ ≤ ∫ x, |k x * (1 - Real.exp (-τ * k x ^ 2)) - heatRemainderPolynomial N τ (k x)| ∂μ := by
      simpa only [Real.norm_eq_abs] using
        (norm_integral_le_integral_norm (μ := μ)
          (fun x => k x * (1 - Real.exp (-τ * k x ^ 2)) - heatRemainderPolynomial N τ (k x)))
    _ ≤ ∫ x, (τ ^ (N + 2) / (N + 2).factorial) * |k x| ^ (2 * N + 5) ∂μ := by
      apply integral_mono (hr.sub hp).abs (hm.const_mul _)
      intro x
      exact heatRemainderPolynomial_error N hτ (k x)
    _ = _ := integral_const_mul _ _

variable {α : Type*} [MeasurableSpace α] {μ : Measure α} [IsFiniteMeasure μ]
    {k : α → ℝ} {M : ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2900e246d8cace336edf4924e96672d0a59d216` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
