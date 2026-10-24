# sqrt_X_le_X_mul_sqrt_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edeac9f4-afc5-cf51-7562-112048a9965a",
  "kind": "theorem",
  "lexical_name": "sqrt_X_le_X_mul_sqrt_target",
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
  "slug": "sqrt-x-le-x-mul-sqrt-target--58319b0278a488083d4f3e80",
  "source": {
    "blob": "36836862adf42300225202b9120570933e02be64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 41,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58319b0278a488083d4f3e80b02f780aeea19ff9bdb17ad58bb223af5aecf060",
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

Occurrence: `result:edeac9f4-afc5-cf51-7562-112048a9965a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_X_le_X_mul_sqrt_target
    {X : ℕ} (hX : 0 < X)
    {η : ℝ} (hη : 0 < η) :
    Real.sqrt (X : ℝ) ≤
      (X : ℝ) *
        Real.sqrt (Real.rpow (X : ℝ) (-1 + η)) := by
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hq :
      0 ≤ Real.rpow (X : ℝ) (-1 + η) :=
    Real.rpow_nonneg hXr.le _
  have hinv :
      1 / (X : ℝ) ≤
        Real.rpow (X : ℝ) (-1 + η) :=
    inv_le_rpow_neg_one_add_eta hX hη
  have hsq :
      (X : ℝ) ≤
        (X : ℝ)^2 *
          Real.rpow (X : ℝ) (-1 + η) := by
    have hmul :=
      mul_le_mul_of_nonneg_left hinv
        (show 0 ≤ (X : ℝ)^2 by positivity)
    field_simp [hXr.ne'] at hmul
    nlinarith [mul_le_mul_of_nonneg_left hmul hXr.le]
  have hsqrt0 : 0 ≤ Real.sqrt (X : ℝ) :=
    Real.sqrt_nonneg _
  have hrhs0 :
      0 ≤ (X : ℝ) *
        Real.sqrt (Real.rpow (X : ℝ) (-1 + η)) := by
    positivity
  apply (sq_le_sq₀ hsqrt0 hrhs0).1
  rw [Real.sq_sqrt hXr.le, mul_pow,
    Real.sq_sqrt hq]
  simpa [mul_assoc] using hsq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36836862adf42300225202b9120570933e02be64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
