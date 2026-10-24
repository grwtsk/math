# tail_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13678d75-8655-3ec9-ecbd-8c1e9bd3af9b",
  "kind": "theorem",
  "lexical_name": "tail_norm_le",
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
  "slug": "tail-norm-le--e8e9de798693386d0bfd862b",
  "source": {
    "blob": "c5cea76d055497a0fe59c04143030e4025604152",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 65,
    "path": "GRWTSK/Analysis/Complex/PeriodicBernoulliMellin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8e9de798693386d0bfd862bfeac3c98a060cf9b07e9dd6792002fd0f700fc9a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13678d75-8655-3ec9-ecbd-8c1e9bd3af9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_norm_le (m : ℕ) {N σ : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hexp : 1 < σ + m) (hs : σ ≤ s.re) :
    ‖tail m N s‖ ≤ (PeriodicBernoulli.majorant m : ℝ) *
      (N ^ (-(σ + m) + 1) / (σ + m - 1)) := by
  have hN0 : 0 < N := zero_lt_one.trans_le hN
  have hi := integrable_tail m hN hexp hs
  have hg := (integrableOn_Ioi_rpow_of_lt
    (by linarith : -(σ + (m : ℝ)) < -1) hN0).const_mul
      (PeriodicBernoulli.majorant m : ℝ)
  calc
    ‖tail m N s‖ ≤ ∫ t in Ioi N, ‖integrand m s t‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ t in Ioi N, (PeriodicBernoulli.majorant m : ℝ) * t ^ (-(σ + m)) := by
      apply integral_mono_ae hi.norm hg
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      exact norm_integrand_le m (hN.trans ht.le) hs
    _ = _ := by
      rw [integral_const_mul, integral_Ioi_rpow_of_lt
        (by linarith : -(σ + (m : ℝ)) < -1) hN0]
      congr 1
      have he : -(σ + (m : ℝ)) + 1 = -(σ + m - 1) := by ring
      rw [he, neg_div_neg_eq]

/-- No fractional-power evaluation is needed for this weaker half-plane bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/PeriodicBernoulliMellin.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5cea76d055497a0fe59c04143030e4025604152` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
