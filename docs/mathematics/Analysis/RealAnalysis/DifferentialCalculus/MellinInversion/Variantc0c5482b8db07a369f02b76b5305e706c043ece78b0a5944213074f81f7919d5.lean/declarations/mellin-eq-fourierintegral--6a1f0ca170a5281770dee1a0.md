# mellin_eq_fourierIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08d44b00-d669-1723-b080-eeed221bcd1c",
  "kind": "theorem",
  "lexical_name": "mellin_eq_fourierIntegral",
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
  "slug": "mellin-eq-fourierintegral--6a1f0ca170a5281770dee1a0",
  "source": {
    "blob": "1cb753ffc08e44763cb188708127d58ae270ee0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 53,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a1f0ca170a5281770dee1a0abe595fe90d5744222a254cac1257a53c589de67",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08d44b00-d669-1723-b080-eeed221bcd1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellin_eq_fourierIntegral (f : ℝ → E) {s : ℂ} :
    mellin f s = 𝓕 (fun (u : ℝ) ↦ (Real.exp (-s.re * u) • f (Real.exp (-u)))) (s.im / (2 * π)) :=
  calc
    mellin f s
      = ∫ (u : ℝ), Complex.exp (-s * u) • f (Real.exp (-u)) := by
      rw [mellin, ← rexp_neg_image_aux, integral_image_eq_integral_abs_deriv_smul
        MeasurableSet.univ rexp_neg_deriv_aux rexp_neg_injOn_aux]
      simp [rexp_cexp_aux]
    _ = ∫ (u : ℝ), Complex.exp (↑(-2 * π * (u * (s.im / (2 * π)))) * I) •
        (Real.exp (-s.re * u) • f (Real.exp (-u))) := by
      congr
      ext u
      trans Complex.exp (-s.im * u * I) • (Real.exp (-s.re * u) • f (Real.exp (-u)))
      · conv => lhs; rw [← re_add_im s]
        rw [neg_add, add_mul, Complex.exp_add, mul_comm, ← smul_eq_mul, smul_assoc]
        norm_cast
        push_cast
        ring_nf
      congr
      rw [mul_comm (-s.im : ℂ) (u : ℂ), mul_comm (-2 * π)]
      have : 2 * (π : ℂ) ≠ 0 := by norm_num; exact pi_ne_zero
      field_simp
    _ = 𝓕 (fun (u : ℝ) ↦ (Real.exp (-s.re * u) • f (Real.exp (-u)))) (s.im / (2 * π)) := by
      simp [fourierIntegral_eq', mul_comm (_ / _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc0c5482b8db07a369f02b76b5305e706c043ece78b0a5944213074f81f7919d5.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cb753ffc08e44763cb188708127d58ae270ee0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
