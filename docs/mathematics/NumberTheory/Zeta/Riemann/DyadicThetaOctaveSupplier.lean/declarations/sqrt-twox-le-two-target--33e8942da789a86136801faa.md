# sqrt_twoX_le_two_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:035db711-4d93-20a3-cb3f-d28d218cff75",
  "kind": "theorem",
  "lexical_name": "sqrt_twoX_le_two_target",
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
  "slug": "sqrt-twox-le-two-target--33e8942da789a86136801faa",
  "source": {
    "blob": "36836862adf42300225202b9120570933e02be64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 75,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33e8942da789a86136801faa06e2e351a7b7a96d5c56fc50074b64ed6fc35ac6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:035db711-4d93-20a3-cb3f-d28d218cff75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_twoX_le_two_target
    {X : ℕ} (hX : 0 < X)
    {η : ℝ} (hη : 0 < η) :
    Real.sqrt (((2 * X : ℕ) : ℝ)) ≤
      2 * ((X : ℝ) *
        Real.sqrt (Real.rpow (X : ℝ) (-1 + η))) := by
  have hsqrt :=
    sqrt_X_le_X_mul_sqrt_target hX hη
  have hXr : 0 ≤ (X : ℝ) := Nat.cast_nonneg _
  have hleft :
      Real.sqrt (((2 * X : ℕ) : ℝ)) ≤
        2 * Real.sqrt (X : ℝ) := by
    have hs0 :
        0 ≤ Real.sqrt (((2 * X : ℕ) : ℝ)) :=
      Real.sqrt_nonneg _
    have hr0 : 0 ≤ 2 * Real.sqrt (X : ℝ) := by positivity
    apply (sq_le_sq₀ hs0 hr0).1
    rw [Real.sq_sqrt (by positivity),
      mul_pow, Real.sq_sqrt hXr]
    push_cast
    nlinarith
  exact hleft.trans (mul_le_mul_of_nonneg_left hsqrt (by norm_num))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36836862adf42300225202b9120570933e02be64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
