# Mform_cos_cos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6319a93-3fc4-c6df-fdd1-dce33492a3ef",
  "kind": "lemma",
  "lexical_name": "Mform_cos_cos",
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
  "slug": "mform-cos-cos--55f1c2fff961ff5a79cc9dbc",
  "source": {
    "blob": "7c75669277cd28f7712457d57bb96fdc692ec435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 321,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55f1c2fff961ff5a79cc9dbcbfa222b2b2538fa049d40828148d721de77bc63a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6319a93-3fc4-c6df-fdd1-dce33492a3ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Mform_cos_cos (hT : 0 ≤ T) (hΦ : Continuous Φ) (y y' : ℝ) :
    Mform Φ T (fun τ => Real.cos (τ * y)) (fun τ => Real.cos (τ * y'))
      = (Aminus Φ T y y' + Aplus Φ T y y') / 2 := by
  unfold Mform Aminus Aplus
  have h1 : (fun q : ℝ × ℝ => Φ (q.1 - q.2) ^ 2 * Real.cos (q.1 * y) * Real.cos (q.2 * y'))
      = fun q => Φ (q.1 - q.2) ^ 2 *
          (fun q : ℝ × ℝ => Real.cos (q.1 * y) * Real.cos (q.2 * y')) q := by
    funext q; ring
  rw [h1, sqIntegral_shear hΦ (by fun_prop)]
  rw [← setIntegral_eq_integral_of_forall_compl_eq_zero (s := Icc (-T) T) ?zero]
  case zero =>
    intro x hx
    rw [Ix_eq_empty hT (not_mem_Icc_neg hx)]; simp
  have h2 : ∀ x ∈ Icc (-T) T,
      Φ x ^ 2 * ∫ τ' in Ix T x, Real.cos ((x + τ') * y) * Real.cos (τ' * y')
        = (Φ x ^ 2 * JmK T y y' x + Φ x ^ 2 * JpK T y y' x) / 2 := by
    intro x hx
    rw [inner_cos_cos hT (abs_le.mpr ⟨by linarith [hx.1], hx.2⟩)]
    unfold JmK JpK; ring
  rw [setIntegral_congr_fun measurableSet_Icc h2, integral_div, integral_add]
  · exact ((hΦ.pow 2).mul (continuous_JmK T y y')).integrableOn_Icc
  · exact ((hΦ.pow 2).mul (continuous_JpK T y y')).integrableOn_Icc

/-! ### The diagonal 𝒟 (§5.4) -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c75669277cd28f7712457d57bb96fdc692ec435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
