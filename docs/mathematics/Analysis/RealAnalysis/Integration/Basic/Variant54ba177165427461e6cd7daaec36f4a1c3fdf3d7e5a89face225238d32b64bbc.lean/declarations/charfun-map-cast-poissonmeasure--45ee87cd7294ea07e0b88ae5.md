# charFun_map_cast_poissonMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81e28a86-9a80-111a-deaa-2b56b6e6a606",
  "kind": "lemma",
  "lexical_name": "charFun_map_cast_poissonMeasure",
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
  "slug": "charfun-map-cast-poissonmeasure--45ee87cd7294ea07e0b88ae5",
  "source": {
    "blob": "554a83145af74304a7379839dd02180c4d22c6b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 149,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45ee87cd7294ea07e0b88ae5fbeda9bec6bd569f3789f35ee5f46d906b240d46",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81e28a86-9a80-111a-deaa-2b56b6e6a606`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma charFun_map_cast_poissonMeasure (r : ℝ≥0) (t : ℝ) :
    charFun Po(ℝ, r) t = cexp (r * (cexp (t * I) - 1)) := by
  rw [charFun_apply, integral_map .of_discrete (by fun_prop), integral_poissonMeasure r]
  simp_rw [Real.inner_apply]
  calc ∑' a, (rexp (-r) * r ^ a / a ! : ℝ) * cexp ((a * t : ℝ) * I)
  _ = ∑' a, (rexp (-r)) * ((r * cexp (t * I)) ^ a / a !) := by
      congr with a
      push_cast
      rw [mul_pow, ← Complex.exp_nat_mul]
      ring_nf
  _ = (rexp (-r)) * ∑' a, ((r * cexp (t * I)) ^ a / a !) := tsum_mul_left
  _ = (rexp (-r)) * cexp (r * cexp (t * I)) := by
      rw [(NormedSpace.expSeries_div_hasSum_exp (r * cexp (t * I))).tsum_eq, exp_eq_exp_ℂ]
  _ = cexp (r * (cexp (t * I) - 1)) := by
      rw [ofReal_exp, ← Complex.exp_add]
      push_cast
      ring_nf

end CharFun

/-! ### Convolution of Poisson measures -/

section Convolution

variable {R : Type*} [AddMonoidWithOne R] {mR : MeasurableSpace R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `554a83145af74304a7379839dd02180c4d22c6b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
