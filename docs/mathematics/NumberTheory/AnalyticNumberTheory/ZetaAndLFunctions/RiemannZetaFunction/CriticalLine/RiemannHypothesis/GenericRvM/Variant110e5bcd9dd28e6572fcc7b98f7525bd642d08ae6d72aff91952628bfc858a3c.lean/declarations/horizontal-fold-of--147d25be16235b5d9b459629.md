# horizontal_fold_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:059765d7-863e-9fd6-cb2c-37a04591a6b3",
  "kind": "lemma",
  "lexical_name": "horizontal_fold_of",
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
  "slug": "horizontal-fold-of--147d25be16235b5d9b459629",
  "source": {
    "blob": "9ae7962b5b8c5af66e2f026f89c417c6d6331fe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:147d25be16235b5d9b45962982fe137d24f96ec9504980a6ac18340e534b7283",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:059765d7-863e-9fd6-cb2c-37a04591a6b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma horizontal_fold_of (T : ℝ) (hcont : Continuous fun σ : ℝ => F (σ + T * I))
    (hfold : ∀ x ∈ uIcc (1 / 2 : ℝ) 2, F (1 - conj ((x : ℂ) + T * I)) = -conj (F ((x : ℂ) + T * I))) :
    ∫ σ in (-1 : ℝ)..2, F (σ + T * I) = 2 * I * ((∫ σ in (1 / 2 : ℝ)..2, F (σ + T * I)).im : ℂ) := by
  have hsplit := integral_add_adjacent_intervals
    (hcont.intervalIntegrable (μ := volume) (-1) (1 / 2)) (hcont.intervalIntegrable (μ := volume) (1 / 2) 2)
  rw [← hsplit]
  set A := ∫ σ in (1 / 2 : ℝ)..2, F (σ + T * I) with hA
  have hleft : ∫ σ in (-1 : ℝ)..(1 / 2), F (σ + T * I) = -starRingEnd ℂ A := by
    have hsub := intervalIntegral.integral_comp_sub_left (f := fun x : ℝ => F (x + T * I)) (a := (1 / 2 : ℝ)) (b := 2) (1 : ℝ)
    norm_num at hsub
    rw [← hsub, hA, ← intervalIntegral_conj, ← intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr
    intro x hx
    have key := hfold x hx
    have e : (1 : ℂ) - starRingEnd ℂ ((x : ℂ) + T * I) = 1 - (x : ℂ) + T * I := by simp [Complex.ext_iff]
    simp only
    rw [← e, key]
  rw [hleft, neg_add_eq_sub, Complex.sub_conj]
  push_cast
  ring

/-- vertical fold: ∫_{T₁}^{T₂} F(−1+it)dt = −conj ∫_{T₁}^{T₂} F(2+it)dt. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ae7962b5b8c5af66e2f026f89c417c6d6331fe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
