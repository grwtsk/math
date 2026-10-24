# continuum_green_operator_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4da832018b86ffae5e94ddda85bdb4546190671",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:291e97a8-2486-9c31-1209-508eb6851fc7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5af805b-f22c-a956-0734-0097d7b9d6a6",
  "kind": "theorem",
  "lexical_name": "continuum_green_operator_integral",
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
  "slug": "continuum-green-operator-integral--7dc6b98c514f9e24d53c5ffb",
  "source": {
    "blob": "b4da832018b86ffae5e94ddda85bdb4546190671",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dc6b98c514f9e24d53c5ffb7be44d725ff092afb3a832abce352961bab97039",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5af805b-f22c-a956-0734-0097d7b9d6a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuum_green_operator_integral (A : ℝ) (hA : 1 ≤ A)
    (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    (∫ t, (∫ x in (0 : ℝ)..2 * A, Real.exp (x / 2) * poleSquaredGreenKernel (t - x)) *
      poleSquaredDifferentialOperator f t) = ∫ x in (0 : ℝ)..2 * A, Real.exp (x / 2) * f x := by
  let J (t x : ℝ) : ℝ := ((Icc (0 : ℝ) (2 * A)).indicator
    (fun x ↦ Real.exp (x / 2) * poleSquaredGreenKernel (t - x))) x *
      poleSquaredDifferentialOperator f t
  have hi : Integrable (Function.uncurry J) (volume.prod volume) :=
    continuum_green_operator_joint_integrable A f hf hcf
  have hl (t : ℝ) : (∫ x, J t x) =
      (∫ x in (0 : ℝ)..2 * A, Real.exp (x / 2) * poleSquaredGreenKernel (t - x)) *
        poleSquaredDifferentialOperator f t := by
    dsimp only [J]
    rw [integral_mul_const, zeroExtension_integral _ 0 (2 * A) (by linarith)]
  have hr (x : ℝ) : (∫ t, J t x) =
      (Icc (0 : ℝ) (2 * A)).indicator (fun x ↦ Real.exp (x / 2) * f x) x := by
    by_cases hx : x ∈ Icc (0 : ℝ) (2 * A)
    · simp only [J, indicator_of_mem hx]
      simp_rw [mul_assoc]
      rw [integral_const_mul, translated_green_operator_integral f hf hcf x]
    · simp only [J, indicator_of_notMem hx, zero_mul, integral_zero]
  have hs := integral_integral_swap hi
  simp_rw [hl, hr] at hs
  rw [zeroExtension_integral _ 0 (2 * A) (by linarith)] at hs
  exact hs

/-- The actual continuous contribution has genuine whole-line pairing integrability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4da832018b86ffae5e94ddda85bdb4546190671` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
