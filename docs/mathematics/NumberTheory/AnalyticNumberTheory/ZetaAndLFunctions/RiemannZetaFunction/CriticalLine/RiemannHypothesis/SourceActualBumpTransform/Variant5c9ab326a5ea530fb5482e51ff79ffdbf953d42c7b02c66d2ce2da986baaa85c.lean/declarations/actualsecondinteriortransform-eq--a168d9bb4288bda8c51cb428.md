# actualSecondInteriorTransform_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0eb4043-6d1b-5201-1785-e75298b27022",
  "kind": "theorem",
  "lexical_name": "actualSecondInteriorTransform_eq",
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
  "slug": "actualsecondinteriortransform-eq--a168d9bb4288bda8c51cb428",
  "source": {
    "blob": "95f02533f7c7f4263ac952ecc054fc1460e3df82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant5c9ab326a5ea530fb5482e51ff79ffdbf953d42c7b02c66d2ce2da986baaa85c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a168d9bb4288bda8c51cb428b6bec74e14135e35a0cbf62a52951d5994fd7dd6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant5c9ab326a5ea530fb5482e51ff79ffdbf953d42c7b02c66d2ce2da986baaa85c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0eb4043-6d1b-5201-1785-e75298b27022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSecondInteriorTransform_eq {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ x in -A..A, (secondInterior A x : ℂ) * Complex.exp (z * (x : ℂ))) =
      z^2 * (∫ x in -A..A, (bumpInterior A x : ℂ) * Complex.exp (z * (x : ℂ))) := by
  have hn : A ≠ 0 := by linarith
  let b : ℝ → ℂ := fun x => (bumpInterior A x : ℂ) * Complex.exp (z * (x : ℂ))
  let d : ℝ → ℂ := fun x => (firstInterior A x : ℂ) * Complex.exp (z * (x : ℂ))
  let e : ℝ → ℂ := fun x => (secondInterior A x : ℂ) * Complex.exp (z * (x : ℂ))
  have hc : Continuous b :=
    (Complex.continuous_ofReal.comp (bumpInterior_continuous A)).mul (by fun_prop)
  have hd : Continuous d :=
    (Complex.continuous_ofReal.comp (firstInterior_continuous A)).mul (by fun_prop)
  have he : Continuous e :=
    (Complex.continuous_ofReal.comp (secondInterior_continuous A)).mul (by fun_prop)
  have hb' (x : ℝ) : HasDerivAt b (d x + z * b x) x := by
    have hh := (bumpInterior_hasDerivAt A x).ofReal_comp.mul
      (((hasDerivAt_id x).ofReal_comp.const_mul z).cexp)
    convert! hh using 1
    dsimp [b, d]
    ring
  have hd' (x : ℝ) : HasDerivAt d (e x + z * d x) x := by
    have hh := (firstInterior_hasDerivAt A x).ofReal_comp.mul
      (((hasDerivAt_id x).ofReal_comp.const_mul z).cexp)
    convert! hh using 1
    dsimp [d, e]
    ring
  have hb0 := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hb' x)
    ((hd.add (hc.const_mul z)).intervalIntegrable (-A) A)
  have hd0 := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hd' x)
    ((he.add (hd.const_mul z)).intervalIntegrable (-A) A)
  have hbt := bumpInterior_endpoints A hn
  have hdt := firstInterior_endpoints A hn
  have hbz : b A - b (-A) = 0 := by simp [b, hbt.1, hbt.2]
  have hdz : d A - d (-A) = 0 := by simp [d, hdt.1, hdt.2]
  rw [hbz, intervalIntegral.integral_add (hd.intervalIntegrable _ _)
    ((hc.const_mul z).intervalIntegrable _ _), intervalIntegral.integral_const_mul] at hb0
  rw [hdz, intervalIntegral.integral_add (he.intervalIntegrable _ _)
    ((hd.const_mul z).intervalIntegrable _ _), intervalIntegral.integral_const_mul] at hd0
  change (∫ x in -A..A, e x) = z^2 * (∫ x in -A..A, b x)
  linear_combination hd0 - z * hb0

/-- The actual source q-transform is exactly the original pole-annihilated bump transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant5c9ab326a5ea530fb5482e51ff79ffdbf953d42c7b02c66d2ce2da986baaa85c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant5c9ab326a5ea530fb5482e51ff79ffdbf953d42c7b02c66d2ce2da986baaa85c.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95f02533f7c7f4263ac952ecc054fc1460e3df82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
