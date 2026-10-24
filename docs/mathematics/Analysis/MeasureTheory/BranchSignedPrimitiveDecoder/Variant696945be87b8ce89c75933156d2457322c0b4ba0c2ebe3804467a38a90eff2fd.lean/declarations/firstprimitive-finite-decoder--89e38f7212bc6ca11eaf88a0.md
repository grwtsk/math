# firstPrimitive_finite_decoder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e715ce5-c8d5-b571-3f0b-9fa193016922",
  "kind": "theorem",
  "lexical_name": "firstPrimitive_finite_decoder",
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
  "slug": "firstprimitive-finite-decoder--89e38f7212bc6ca11eaf88a0",
  "source": {
    "blob": "fa2a69ac42b44cda1242a485f0a0f00ba1aacb4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 102,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89e38f7212bc6ca11eaf88a0edf88416cf0d703c2c449c986909793a60a94cb9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e715ce5-c8d5-b571-3f0b-9fa193016922`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrimitive_finite_decoder {U X : ℝ} (hU : 0 < U) (hUX : U ≤ X) :
    firstPrimitive U X =
      2 * (∑ n ∈ Finset.Ioc ⌊U⌋₊ ⌊X⌋₊, realMoebius n / Real.sqrt n) -
        2 * mertens X / Real.sqrt X + 2 * mertens U / Real.sqrt U := by
  have hd : ∀ x ∈ Icc U X,
      deriv (fun y : ℝ ↦ 2 / Real.sqrt y) x = -1 / (x * Real.sqrt x) :=
    fun x hx ↦ (firstWeight_hasDerivAt (hU.trans_le hx.1)).deriv
  have hi : IntegrableOn (deriv (fun y : ℝ ↦ 2 / Real.sqrt y)) (Icc U X) := by
    have hn := (inverse_sqrt_density_continuousOn (X := X) hU).integrableOn_Icc
      (μ := (volume : Measure ℝ)) |>.neg
    apply hn.congr_fun
    · intro x hx
      rw [hd x hx]
      dsimp only [Pi.neg_apply]
      ring
    · exact measurableSet_Icc
  have ha := mobius_abel_commuted hU.le hUX (fun y ↦ 2 / Real.sqrt y)
    (fun x hx ↦ (firstWeight_hasDerivAt (hU.trans_le hx.1)).differentiableAt) hi
  have he : (∫ x in Ioc U X, mertens x * deriv (fun y : ℝ ↦ 2 / Real.sqrt y) x) =
      -firstPrimitive U X := by
    rw [firstPrimitive, intervalIntegral.integral_of_le hUX, ← integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    dsimp only
    rw [hd x ⟨hx.1.le, hx.2⟩]
    dsimp [primitiveDensity]
    ring
  have hsum : (∑ n ∈ Finset.Ioc ⌊U⌋₊ ⌊X⌋₊, realMoebius n * (2 / Real.sqrt n)) =
      2 * (∑ n ∈ Finset.Ioc ⌊U⌋₊ ⌊X⌋₊, realMoebius n / Real.sqrt n) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [he, hsum] at ha
  linear_combination -ha

/-- The touching upper weight is exactly zero; its closed endpoint is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa2a69ac42b44cda1242a485f0a0f00ba1aacb4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
