# upper_centered_quadrature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e58ff85-0bf3-2b61-df65-091a887fe9f7",
  "kind": "theorem",
  "lexical_name": "upper_centered_quadrature",
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
  "slug": "upper-centered-quadrature--d4a4d3442d75a02e4e0cf93a",
  "source": {
    "blob": "c3a09d51603f63b3973d4ddf327961680d26a312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variant6def7ee294af16a6e034bdcc591bb6c6efd33c7a36e3437f671d1beb24cb0bd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4a4d3442d75a02e4e0cf93aa819bac0f100ef1e64b6fe97ec5f4e943da51288",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variant6def7ee294af16a6e034bdcc591bb6c6efd33c7a36e3437f671d1beb24cb0bd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e58ff85-0bf3-2b61-df65-091a887fe9f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_centered_quadrature (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (_hs : HasCompactSupport f) (N : ℕ)
    (hupper : ∀ u : ℝ, (N + 1 : ℝ) ≤ u → f u = 0) :
    (∑ n ∈ Finset.Icc 1 N, f n) =
      (∫ u in Ioi (1 : ℝ), f u) + f 1 / 2 +
        ∫ u in Ioi (1 : ℝ), centeredSawtooth u * deriv f u := by
  have hNB : (1 : ℝ) ≤ N + 1 := by linarith [Nat.cast_nonneg (α := ℝ) N]
  have hdz : ∀ u : ℝ, (N + 1 : ℝ) < u → deriv f u = 0 := by
    have he : EqOn f (fun _ => (0 : ℝ)) (Ioi (N + 1 : ℝ)) :=
      fun u hu => hupper u hu.le
    intro u hu
    simpa using he.deriv isOpen_Ioi hu
  have hi : (∫ u in Ioi (1 : ℝ), f u) = ∫ u in 1..(N + 1 : ℝ), f u := by
    rw [intervalIntegral.integral_of_le hNB, ← Ioc_union_Ioi_eq_Ioi hNB]
    apply integral_union_eq_left_of_forall measurableSet_Ioi
    intro u hu
    exact hupper u hu.le
  have hdi : (∫ u in Ioi (1 : ℝ), centeredSawtooth u * deriv f u) =
      ∫ u in 1..(N + 1 : ℝ), centeredSawtooth u * deriv f u := by
    rw [intervalIntegral.integral_of_le hNB, ← Ioc_union_Ioi_eq_Ioi hNB]
    apply integral_union_eq_left_of_forall measurableSet_Ioi
    intro u hu
    rw [hdz u hu, mul_zero]
  rw [hi, hdi]
  simpa only [hupper _ le_rfl, sub_zero] using finite_upper_centered_quadrature f hf N

/-- Original actual logProfile quadrature; its upper continuous integral is retained verbatim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variant6def7ee294af16a6e034bdcc591bb6c6efd33c7a36e3437f671d1beb24cb0bd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variant6def7ee294af16a6e034bdcc591bb6c6efd33c7a36e3437f671d1beb24cb0bd0.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3a09d51603f63b3973d4ddf327961680d26a312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
