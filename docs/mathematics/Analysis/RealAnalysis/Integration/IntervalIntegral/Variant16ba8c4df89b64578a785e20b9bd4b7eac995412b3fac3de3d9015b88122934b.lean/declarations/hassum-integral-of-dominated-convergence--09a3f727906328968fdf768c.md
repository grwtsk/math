# hasSum_integral_of_dominated_convergence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3842e6d6-9921-1317-0f01-3d118b57ad77",
  "kind": "theorem",
  "lexical_name": "hasSum_integral_of_dominated_convergence",
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
  "slug": "hassum-integral-of-dominated-convergence--09a3f727906328968fdf768c",
  "source": {
    "blob": "1ae36b1e8d39aa18e52042b54d92c73a6275ad51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1051,
    "line": 1033,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09a3f727906328968fdf768cb473f99b888622a140284afd91b2925914ff55e2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3842e6d6-9921-1317-0f01-3d118b57ad77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1033–1051.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem hasSum_integral_of_dominated_convergence {ι} [Countable ι] {F : ι → ℝ → E}
    (bound : ι → ℝ → ℝ) (hF_meas : ∀ n, AEStronglyMeasurable (F n) (μ.restrict (Ι a b)))
    (h_bound : ∀ n, ∀ᵐ t ∂μ, t ∈ Ι a b → ‖F n t‖ ≤ bound n t)
    (bound_summable : ∀ᵐ t ∂μ, t ∈ Ι a b → Summable fun n => bound n t)
    (bound_integrable : IntervalIntegrable (fun t => ∑' n, bound n t) μ a b)
    (h_lim : ∀ᵐ t ∂μ, t ∈ Ι a b → HasSum (fun n => F n t) (f t)) :
    HasSum (fun n => ∫ t in a..b, F n t ∂μ) (∫ t in a..b, f t ∂μ) := by
  simp only [intervalIntegrable_iff, intervalIntegral_eq_integral_uIoc, ←
    ae_restrict_iff' (α := ℝ) (μ := μ) measurableSet_uIoc] at *
  exact
    (hasSum_integral_of_dominated_convergence bound hF_meas h_bound bound_summable bound_integrable
          h_lim).const_smul
      _
#align interval_integral.has_sum_integral_of_dominated_convergence intervalIntegral.hasSum_integral_of_dominated_convergence

open TopologicalSpace

/-- Interval integrals commute with countable sums, when the supremum norms are summable (a
special case of the dominated convergence theorem). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean#L1033).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ae36b1e8d39aa18e52042b54d92c73a6275ad51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
