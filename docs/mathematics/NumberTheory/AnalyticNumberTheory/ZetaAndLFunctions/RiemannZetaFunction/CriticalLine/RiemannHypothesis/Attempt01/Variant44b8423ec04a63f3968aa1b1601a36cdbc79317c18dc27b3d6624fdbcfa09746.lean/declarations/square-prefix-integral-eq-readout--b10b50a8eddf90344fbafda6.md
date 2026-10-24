# square_prefix_integral_eq_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22be297b-7a48-0be9-eb87-2d7aafdda2ee",
  "kind": "theorem",
  "lexical_name": "square_prefix_integral_eq_readout",
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
  "slug": "square-prefix-integral-eq-readout--b10b50a8eddf90344fbafda6",
  "source": {
    "blob": "ea3ac677f161d4e3bf07be87cc464d6c08a7f66a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 80,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant44b8423ec04a63f3968aa1b1601a36cdbc79317c18dc27b3d6624fdbcfa09746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b10b50a8eddf90344fbafda6df3beed8db42cbfecdfff54df07c5d12769dd3bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant44b8423ec04a63f3968aa1b1601a36cdbc79317c18dc27b3d6624fdbcfa09746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22be297b-7a48-0be9-eb87-2d7aafdda2ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem square_prefix_integral_eq_readout (t : ℝ) (ht : 0 ≤ t) :
    (∫ s in 0..t, squareTimeDensity s) = squarePrimitiveReadout t := by
  have hf : ContDiff ℝ 1 (fun s : ℝ => -2 * Real.exp (-s / 2)) := by fun_prop
  have he := integral_finite_steps_deriv 0 t (primeLogInventory (t / 2))
    (fun p => 2 * Real.log (p : ℝ)) (fun p => Real.log (p : ℝ))
    (fun p hp => by
      have hh := primeLogInventory_log_bounds (t / 2) p hp
      constructor <;> linarith) _ hf
  have hd : (∫ s in 0..t, ∑ p ∈ primeLogInventory (t / 2),
      Real.log (p : ℝ) * (if 2 * Real.log (p : ℝ) ≤ s then
        deriv (fun s : ℝ => -2 * Real.exp (-s / 2)) s else 0)) =
        ∫ s in 0..t, squareTimeDensity s := by
    apply intervalIntegral.integral_congr
    intro s hs
    simp_rw [(primitive_antiderivative s).deriv]
    exact (density_eq_steps t s (uIcc_of_le ht ▸ hs |>.2)).symm
  rw [hd] at he
  rw [he]
  have hs : (∑ p ∈ primeLogInventory (t / 2), Real.log (p : ℝ) *
      ((-2 * Real.exp (-t / 2)) - (-2 * Real.exp (-(2 * Real.log p) / 2)))) =
      2 * primeLogPrefix (t / 2) -
        2 * Real.exp (-t / 2) * Chebyshev.theta (Real.exp (t / 2)) := by
    rw [primeLogPrefix_eq_sum]
    change _ = 2 * (∑ p ∈ primeLogInventory (t / 2), Real.log (p : ℝ) / p) -
      2 * Real.exp (-t / 2) * ∑ p ∈ primeLogInventory (t / 2), Real.log (p : ℝ)
    rw [← Finset.sum_mul, Finset.mul_sum, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro p hp
    have hp0 : 0 < (p : ℝ) := by
      exact_mod_cast (Finset.mem_filter.mp hp).2.pos
    rw [show -(2 * Real.log (p : ℝ)) / 2 = -Real.log p by ring,
      Real.exp_neg, Real.exp_log hp0]
    ring
  exact hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant44b8423ec04a63f3968aa1b1601a36cdbc79317c18dc27b3d6624fdbcfa09746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant44b8423ec04a63f3968aa1b1601a36cdbc79317c18dc27b3d6624fdbcfa09746.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea3ac677f161d4e3bf07be87cc464d6c08a7f66a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
