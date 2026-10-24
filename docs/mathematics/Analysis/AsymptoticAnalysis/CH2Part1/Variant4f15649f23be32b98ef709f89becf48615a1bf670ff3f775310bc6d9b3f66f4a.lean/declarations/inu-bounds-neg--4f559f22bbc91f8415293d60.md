# Inu_bounds_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a971e923-56f6-5a83-3bf0-0ec104f8c9a9",
  "kind": "lemma",
  "lexical_name": "Inu_bounds_neg",
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
  "slug": "inu-bounds-neg--4f559f22bbc91f8415293d60",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4783,
    "line": 4760,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f559f22bbc91f8415293d60f93a489e5507ffd927e831cc3a44e54c94143cd5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a971e923-56f6-5a83-3bf0-0ec104f8c9a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4760–4783.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Inu_bounds_neg (ν x : ℝ) (hν : ν > 0) (hx : x < 0) :
    (𝓕 (ϕ_pm ν (-1)) x).re ≤ Inu ν x ∧ Inu ν x ≤ (𝓕 (ϕ_pm ν 1) x).re := by
  have hI : Inu ν x = 0 := if_neg (not_le.mpr hx)
  rw [hI]
  refine ⟨?_, ?_⟩
  · apply le_of_tendsto ((continuous_re.tendsto _).comp (fourier_formula_neg ν (-1) hν x hx))
    apply Filter.Eventually.of_forall; intro T
    simp only [Function.comp_apply]
    rw [show (↑(Real.sin (π * x)) ^ 2 / ↑π ^ 2 : ℂ) = ↑((Real.sin (π * x)) ^ 2 / π ^ 2) by push_cast; ring]
    rw [Complex.re_ofReal_mul, integral_re_B_mul_exp_add]
    apply mul_nonpos_of_nonneg_of_nonpos (by positivity)
    apply integral_B_diff_mul_exp_nonpos (fun t ↦ ↑ν + ↑t); intro t ht
    have h_mono := B_minus_mono (show ν ≤ ν + t by simp only [Set.mem_Icc] at ht; linarith)
    push_cast at h_mono; exact h_mono
  · apply ge_of_tendsto ((continuous_re.tendsto _).comp (fourier_formula_neg ν 1 hν x hx))
    apply Filter.Eventually.of_forall; intro T
    simp only [Function.comp_apply]
    rw [show (↑(Real.sin (π * x)) ^ 2 / ↑π ^ 2 : ℂ) = ↑((Real.sin (π * x)) ^ 2 / π ^ 2) by push_cast; ring]
    rw [Complex.re_ofReal_mul, integral_re_B_mul_exp_add]
    apply mul_nonneg (by positivity)
    apply integral_B_diff_mul_exp_nonneg (fun t ↦ ↑ν + ↑t); intro t ht
    have h_mono := B_plus_mono (show ν ≤ ν + t by simp only [Set.mem_Icc] at ht; linarith)
    push_cast at h_mono; exact h_mono

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L4760).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
