# lintegral_paretoPDF_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be6fd2b3-7a36-6bc7-0cc2-0513b6dbaefb",
  "kind": "lemma",
  "lexical_name": "lintegral_paretoPDF_eq_one",
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
  "slug": "lintegral-paretopdf-eq-one--92b67540d3daa248e71101ca",
  "source": {
    "blob": "e905f12d76c9cb4f3d8e1373b39ea4b1fa0bb9fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92b67540d3daa248e71101ca0d9fe5d202aba7fe822dda4521c5e3a6c8ec8aeb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be6fd2b3-7a36-6bc7-0cc2-0513b6dbaefb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lintegral_paretoPDF_eq_one (ht : 0 < t) (hr : 0 < r) :
    ∫⁻ x, paretoPDF t r x = 1 := by
  have leftSide : ∫⁻ x in Iio t, paretoPDF t r x = 0 := lintegral_paretoPDF_of_le (le_refl t)
  have rightSide : ∫⁻ x in Ici t, paretoPDF t r x =
      ∫⁻ x in Ici t, ENNReal.ofReal (r * t ^ r * x ^ (-(r + 1))) :=
    setLIntegral_congr_fun measurableSet_Ici (ae_of_all _ (fun _ ↦ paretoPDF_of_le))
  rw [← ENNReal.toReal_eq_one_iff, ← lintegral_add_compl _ measurableSet_Ici, compl_Ici,
    leftSide, rightSide, add_zero, ← integral_eq_lintegral_of_nonneg_ae]
  · rw [integral_Ici_eq_integral_Ioi, integral_const_mul, integral_Ioi_rpow_of_lt _ ht]
    · field_simp [hr]
      rw [mul_assoc, ← rpow_add ht]
      simp
    linarith
  · rw [EventuallyLE, ae_restrict_iff' measurableSet_Ici]
    refine ae_of_all _ fun x (hx : t ≤ x) ↦ ?_
    have := lt_of_lt_of_le ht hx
    positivity
  · apply (measurable_paretoPDFReal t r).aestronglyMeasurable.congr
    refine (ae_restrict_iff' measurableSet_Ici).mpr <| ae_of_all _ fun x (hx : t ≤ x) ↦ ?_
    simp_rw [paretoPDFReal, eq_true_intro hx, ite_true]

end ParetoPDF

open MeasureTheory

/-- Measure defined by the Pareto distribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Pareto/Variant4404d915c60cd0dfc3901e6f003a88148a1cbb34f0622dba2494aa05c6738a10.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e905f12d76c9cb4f3d8e1373b39ea4b1fa0bb9fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
