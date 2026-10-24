# thinHistoricalGreenResidual_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc8c6bd3-736b-7cd9-b8b7-d9cafcebf8dd",
  "kind": "theorem",
  "lexical_name": "thinHistoricalGreenResidual_memLp",
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
  "slug": "thinhistoricalgreenresidual-memlp--d5e72aa76ba80f73c1f26692",
  "source": {
    "blob": "694bd510bad6e9359f018e5839359dc200d5f523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 78,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5e72aa76ba80f73c1f26692e574c96ef5d66e09ec7f2c1b83e9f4b1b0b9e3b0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc8c6bd3-736b-7cd9-b8b7-d9cafcebf8dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thinHistoricalGreenResidual_memLp
    (X : ℕ) :
    MemLp (thinHistoricalGreenResidual X) 2
      (volume.restrict (Ioc (0 : ℝ) 1)) := by
  have hmeas := thinHistoricalGreenResidual_aestronglyMeasurable X
  rw [memLp_two_iff_integrable_sq_norm hmeas]
  have hfinite :
      IntegrableOn
        (fun t : ℝ => ‖thinHistoricalGreenResidual X t‖^2)
        (Ioc (0 : ℝ) 1) := by
    have hlog :
        IntegrableOn (fun t : ℝ => (Real.log (1 + t))^2) (Ioc (0 : ℝ) 1) := by
      have hcont : ContinuousOn (fun t : ℝ => (Real.log (1 + t))^2)
          (Icc (0 : ℝ) 1) := by
        fun_prop
      exact (hcont.integrableOn_Icc).mono_set Ioc_subset_Icc_self
    obtain ⟨C, hC, hbound⟩ := thinHistoricalAtomicCumulative_bounded X
    have hatom :
        IntegrableOn (fun t : ℝ =>
          (thinHistoricalAtomicCumulative X t)^2) (Ioc (0 : ℝ) 1) := by
      apply IntegrableOn.mono'
        (integrableOn_const (c := C^2))
      · exact (thinHistoricalAtomicCumulative_measurable X).pow 2
      · filter_upwards with t
        have hb := hbound t
        nlinarith [sq_nonneg (thinHistoricalAtomicCumulative X t)]
    have hconst :
        IntegrableOn (fun _t : ℝ => (center X)^2) (Ioc (0 : ℝ) 1) :=
      integrableOn_const
    have hmajor :
        ∀ t : ℝ,
          ‖thinHistoricalGreenResidual X t‖^2 ≤
            3 * ((thinHistoricalAtomicCumulative X t)^2 +
              (Real.log (1 + t))^2 + (center X)^2) := by
      intro t
      unfold thinHistoricalGreenResidual
      rw [cumulative_eq_atomic_sub_log]
      simp only [Complex.norm_real, Real.norm_eq_abs, sq_abs]
      nlinarith [sq_nonneg
        (thinHistoricalAtomicCumulative X t - Real.log (1+t)),
        sq_nonneg
        (thinHistoricalAtomicCumulative X t - center X),
        sq_nonneg (Real.log (1+t) + center X)]
    exact Integrable.mono'
      (((hatom.add hlog).add hconst).const_mul 3)
      hmeas.norm.pow 2
      (Filter.Eventually.of_forall hmajor)
  exact hfinite

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694bd510bad6e9359f018e5839359dc200d5f523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
