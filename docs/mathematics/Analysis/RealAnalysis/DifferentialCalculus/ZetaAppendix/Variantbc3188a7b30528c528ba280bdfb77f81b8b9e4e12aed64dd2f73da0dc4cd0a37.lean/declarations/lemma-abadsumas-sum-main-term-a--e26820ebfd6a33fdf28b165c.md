# lemma_abadsumas_sum_main_term_a

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cb45e82-7286-ca2d-84c1-0fa5b2594acb",
  "kind": "lemma",
  "lexical_name": "lemma_abadsumas_sum_main_term_a",
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
  "slug": "lemma-abadsumas-sum-main-term-a--e26820ebfd6a33fdf28b165c",
  "source": {
    "blob": "8d4e5744caad9c4a9cac4d9b39a2102c21fd6987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3126,
    "line": 3084,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e26820ebfd6a33fdf28b165cd1b46ed3174440de1388bbbc49d5cc4e49e873f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cb45e82-7286-ca2d-84c1-0fa5b2594acb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3084–3126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma lemma_abadsumas_sum_main_term_a (ϑ : ℝ) (hϑ_lt : |ϑ| < 1)
    (hpos_minus : ∀ n : ℕ, 0 < (n : ℝ) + 1 - ϑ)
    (hpos_plus : ∀ n : ℕ, 0 < (n : ℝ) + 1 + ϑ) :
    let g : ℝ → ℂ := fun t ↦
      if t ≠ 0 then (1 / Complex.sin (π * t) : ℂ) - (1 / (π * t : ℂ)) else 0
    ∑' (n : ℕ), ((-1 : ℂ) ^ (n + 2) * 2 * ϑ / (((n : ℂ) + 1) ^ (2 : ℕ) - (ϑ : ℂ) ^ (2 : ℕ))) =
    ↑π * g ϑ := by
  intro g
  by_cases hϑ : ϑ = 0
  · simp [hϑ, g]
  · have h_not_int : (ϑ : ℂ) ∈ integerComplement := lemma_abadsumas_not_in_integerComplement hϑ_lt hϑ
    have h_sum_shift :
        ∑' (n : ℕ), (-1 : ℂ) ^ (n + 2) * 2 * (ϑ : ℂ) /
            (((n : ℂ) + 1) ^ (2 : ℕ) - (ϑ : ℂ) ^ (2 : ℕ)) =
        ∑' (n : ℕ+), (-1 : ℂ) ^ (n : ℕ) *
            (1 / ((ϑ : ℂ) - ↑↑n) + 1 / ((ϑ : ℂ) + ↑↑n)) :=
      calc ∑' (n : ℕ), (-1 : ℂ) ^ (n + 2) * 2 * (ϑ : ℂ) /
              (((n : ℂ) + 1) ^ (2 : ℕ) - (ϑ : ℂ) ^ (2 : ℕ))
          _ = ∑' (n : ℕ), (-1 : ℂ) ^ (n + 1) *
                  (1 / ((ϑ : ℂ) - ((n : ℂ) + 1)) + 1 / ((ϑ : ℂ) + ((n : ℂ) + 1))) := by
                congr 1; ext n
                have hne1 : ((n : ℂ) + 1 - (ϑ : ℂ)) ≠ 0 := by
                  exact_mod_cast (hpos_minus n).ne'
                have hne2 : ((n : ℂ) + 1 + (ϑ : ℂ)) ≠ 0 := by
                  exact_mod_cast (hpos_plus n).ne'
                have h1 : (ϑ : ℂ) - ((n : ℂ) + 1) ≠ 0 := by
                  rwa [← neg_sub, neg_ne_zero]
                have h2 : (ϑ : ℂ) + ((n : ℂ) + 1) ≠ 0 := by rwa [add_comm]
                have hne3 : ((n : ℂ) + 1) ^ (2 : ℕ) - (ϑ : ℂ) ^ (2 : ℕ) ≠ 0 := by
                  rw [show ((n : ℂ) + 1) ^ (2 : ℕ) - (ϑ : ℂ) ^ (2 : ℕ) =
                      ((n : ℂ) + 1 - ϑ) * ((n : ℂ) + 1 + ϑ) by ring]
                  exact mul_ne_zero hne1 hne2
                field_simp [h1, h2, hne3]; ring
          _ = ∑' (n : ℕ+), (-1 : ℂ) ^ (n : ℕ) *
                  (1 / ((ϑ : ℂ) - ↑↑n) + 1 / ((ϑ : ℂ) + ↑↑n)) := by
                rw [← Equiv.tsum_eq Equiv.pnatEquivNat.symm]
                simp only [one_div, Equiv.pnatEquivNat_symm_apply, Nat.succPNat_coe,
                  Nat.succ_eq_add_one, Nat.cast_add, Nat.cast_one]
    rw [h_sum_shift, show g ϑ = 1 / Complex.sin (↑π * ↑ϑ) - 1 / (↑π * ↑ϑ) by dsimp [g]; rw [if_pos hϑ]]
    rw [show ↑π * (1 / Complex.sin (↑π * ↑ϑ) - 1 / (↑π * ↑ϑ)) = ↑π / Complex.sin (↑π * ↑ϑ) - 1 / ↑ϑ by field_simp]
    rw [lemma_abadeuleulmit1 h_not_int]
    ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean#L3084).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4e5744caad9c4a9cac4d9b39a2102c21fd6987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
