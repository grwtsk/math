# rationalRemainderMultiplier_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57a44bfe-7a64-0735-6233-e19a876914b8",
  "kind": "theorem",
  "lexical_name": "rationalRemainderMultiplier_norm_le",
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
  "slug": "rationalremaindermultiplier-norm-le--fd4841ef52096710683371ca",
  "source": {
    "blob": "2e96c47bf986d5089c88c2674c92ef080136d77b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Variante46a0031d0ee1eb393369f16a913e52906c81b2004bb31cec251fe6cef23fdc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd4841ef52096710683371caf44acb32ab8a185ecf2374bbf61aca2969fc6611",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Variante46a0031d0ee1eb393369f16a913e52906c81b2004bb31cec251fe6cef23fdc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57a44bfe-7a64-0735-6233-e19a876914b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rationalRemainderMultiplier_norm_le (t : ℝ) :
    ‖rationalRemainderMultiplier t‖ ≤ 2 * rightLineMajorant 2 + dirichletMoment 1 := by
  have hm := dirichletMoment_nonneg 1
  have hd := combinedMultiplier_norm_le 2 (by norm_num)
    ((2 : ℂ) + Complex.I * (t : ℂ)) (by simp)
  have hden : 0 < ‖(1 : ℂ) + Complex.I * (t : ℂ)‖ :=
    norm_pos_iff.mpr (denominator_ne_zero t)
  have hq : ‖Complex.I * (t : ℂ) / (1 + Complex.I * (t : ℂ))‖ ≤ 1 := by
    rw [norm_div]
    apply (div_le_one hden).mpr
    simpa [norm_mul] using Complex.abs_im_le_norm ((1 : ℂ) + Complex.I * (t : ℂ))
  have heq : rationalRemainderMultiplier t =
      (combinedMultiplier ((2 : ℂ) + Complex.I * (t : ℂ)) - (rightLineMajorant 2 : ℂ)) +
        (dirichletMoment 1 : ℂ) *
          (Complex.I * (t : ℂ) / (1 + Complex.I * (t : ℂ))) := by
    unfold rationalRemainderMultiplier rationalCompensator
    push_cast
    field_simp [denominator_ne_zero t]
    ring
  rw [heq]
  calc
    _ ≤ (‖combinedMultiplier ((2 : ℂ) + Complex.I * (t : ℂ))‖ +
        ‖(rightLineMajorant 2 : ℂ)‖) + ‖(dirichletMoment 1 : ℂ)‖ *
          ‖Complex.I * (t : ℂ) / (1 + Complex.I * (t : ℂ))‖ := by
      exact le_trans (norm_add_le _ _) (add_le_add (norm_sub_le _ _) (by rw [norm_mul]))
    _ ≤ (rightLineMajorant 2 + rightLineMajorant 2) + dirichletMoment 1 * 1 := by
      rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (rightLineMajorant_nonneg _),
        Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (dirichletMoment_nonneg _)]
      gcongr
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Variante46a0031d0ee1eb393369f16a913e52906c81b2004bb31cec251fe6cef23fdc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Variante46a0031d0ee1eb393369f16a913e52906c81b2004bb31cec251fe6cef23fdc7.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e96c47bf986d5089c88c2674c92ef080136d77b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
