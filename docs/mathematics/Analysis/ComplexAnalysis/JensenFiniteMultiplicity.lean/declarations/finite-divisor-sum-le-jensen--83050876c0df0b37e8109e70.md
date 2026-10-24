# finite_divisor_sum_le_jensen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd1fecb8-0b29-0ffa-ccd1-e4aa96ead8af",
  "kind": "theorem",
  "lexical_name": "finite_divisor_sum_le_jensen",
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
  "slug": "finite-divisor-sum-le-jensen--83050876c0df0b37e8109e70",
  "source": {
    "blob": "381c48f13d689d41cbed34988fa6a8a6390bf3c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 43,
    "path": "GRWTSK/Analysis/Complex/JensenFiniteMultiplicity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83050876c0df0b37e8109e704852f3fbcfb330a6ca134eb64e46924295449387",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/JensenFiniteMultiplicity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd1fecb8-0b29-0ffa-ccd1-e4aa96ead8af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_divisor_sum_le_jensen (f : ℂ → ℂ) (c : ℂ) (r R M : ℝ)
    (hr : 0 < r) (hrR : r < R) (hM : 1 ≤ M)
    (hf : AnalyticOnNhd ℂ f (closedBall c R)) (hc : f c ≠ 0)
    (hbound : ∀ z ∈ sphere c R, ‖f z‖ ≤ M) (S : Finset ℂ) :
    ((∑ p ∈ S, divisor f (closedBall c r) p : ℤ) : ℝ) ≤
      Real.log (M / ‖f c‖) / Real.log (R / r) := by
  have hR : 0 < R := hr.trans hrR
  have hsmall : AnalyticOnNhd ℂ f (closedBall c r) :=
    hf.mono (closedBall_subset_closedBall hrR.le)
  have hfinite := (divisor f (closedBall c r)).finiteSupport (isCompact_closedBall c r)
  have hsub := finite_sum_le_finsum_nonneg (divisor f (closedBall c r))
    hfinite (fun z => hsmall.divisor_nonneg z) S
  have hj := AnalyticOnNhd.sum_divisor_le (c := c) (r := r) (R := R) (M := M)
    (f := f) (by simpa [abs_of_pos hr] using hr)
    (by simpa [abs_of_pos hr, abs_of_pos hR] using hrR) hM
    (by simpa [abs_of_pos hR] using hf) hc
    (by simpa [abs_of_pos hR] using hbound)
  have hcast : ((∑ p ∈ S, divisor f (closedBall c r) p : ℤ) : ℝ) ≤
      ((∑ᶠ p, divisor f (closedBall c r) p : ℤ) : ℝ) := by exact_mod_cast hsub
  rw [abs_of_pos hr] at hj
  exact hcast.trans hj

/-- The particular nested disks used for the local three-unit height band. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/JensenFiniteMultiplicity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/JensenFiniteMultiplicity.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `381c48f13d689d41cbed34988fa6a8a6390bf3c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
