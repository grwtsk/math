# inj_L

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35992c52-fb2e-743d-c388-2a25fc736621",
  "kind": "lemma",
  "lexical_name": "inj_L",
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
  "slug": "inj-l--b1f607baf0601062b46cbcdc",
  "source": {
    "blob": "4e9ddbd6b7ea99962abfdee99438b04405c03bcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 107,
    "path": "GRWTSK/Algebra/Hairer/Variantfc28bd00b2bb0ec152670ad699be16da7a51cad9a7e45e50e9d71ecdb8bb675e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1f607baf0601062b46cbcdc0815e3171a9b0a57b9cd5f8f0e29d0e001d31f61",
  "verification": {
    "reference": "docs/verification/Algebra/Hairer/Variantfc28bd00b2bb0ec152670ad699be16da7a51cad9a7e45e50e9d71ecdb8bb675e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35992c52-fb2e-743d-c388-2a25fc736621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inj_L : Injective (L ι) :=
  (injective_iff_map_eq_zero _).mpr fun p hp ↦ by
    have H : ∀ᵐ x : EuclideanSpace ℝ ι, x ∈ ball 0 1 → eval x p = 0 :=
      isOpen_ball.ae_eq_zero_of_integral_contDiff_smul_eq_zero
        (p.continuous_eval.comp (continuous_ofLp 2 _)
          |>.locallyIntegrable.locallyIntegrableOn _)
        fun g hg _h2g g_supp ↦ by
          simpa [mul_comm (g _), L] using congr($hp ⟨g, g_supp.trans ball_subset_closedBall, hg⟩)
    simp_rw [MvPolynomial.funext_iff, map_zero]
    refine fun x ↦ AnalyticOnNhd.eval_linearMap (EuclideanSpace.equiv ι ℝ).toLinearMap p
      |>.eqOn_zero_of_preconnected_of_eventuallyEq_zero
      (preconnectedSpace_iff_univ.mp inferInstance) (z₀ := 0) trivial
      (Filter.mem_of_superset (Metric.ball_mem_nhds 0 zero_lt_one) ?_) trivial
    rw [← ae_restrict_iff'₀ measurableSet_ball.nullMeasurableSet] at H
    apply Measure.eqOn_of_ae_eq H
      (p.continuous_eval.comp (continuous_ofLp 2 _)).continuousOn continuousOn_const
    rw [isOpen_ball.interior_eq]
    apply subset_closure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hairer/Variantfc28bd00b2bb0ec152670ad699be16da7a51cad9a7e45e50e9d71ecdb8bb675e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hairer/Variantfc28bd00b2bb0ec152670ad699be16da7a51cad9a7e45e50e9d71ecdb8bb675e.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e9ddbd6b7ea99962abfdee99438b04405c03bcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
