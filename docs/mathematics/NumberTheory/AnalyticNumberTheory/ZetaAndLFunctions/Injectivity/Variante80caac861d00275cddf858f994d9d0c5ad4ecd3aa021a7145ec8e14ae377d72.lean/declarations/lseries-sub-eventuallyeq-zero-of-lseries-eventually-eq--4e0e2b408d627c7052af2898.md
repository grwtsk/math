# LSeries_sub_eventuallyEq_zero_of_LSeries_eventually_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:775a17d5-231b-b97d-2bc6-ceee775b0c57",
  "kind": "lemma",
  "lexical_name": "LSeries_sub_eventuallyEq_zero_of_LSeries_eventually_eq",
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
  "slug": "lseries-sub-eventuallyeq-zero-of-lseries-eventually-eq--4e0e2b408d627c7052af2898",
  "source": {
    "blob": "04236be259421119f58d70bdd946fc5dad35b873",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 199,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e0e2b408d627c7052af28983052f4a1d43a7d2dd40ce1c2f6d72945197987b2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:775a17d5-231b-b97d-2bc6-ceee775b0c57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries_sub_eventuallyEq_zero_of_LSeries_eventually_eq {f g : ℕ → ℂ}
    (hf : abscissaOfAbsConv f < ⊤) (hg : abscissaOfAbsConv g < ⊤)
    (h : (fun x : ℝ ↦ LSeries f x) =ᶠ[atTop] fun x ↦ LSeries g x) :
    (fun x : ℝ ↦ LSeries (f - g) x) =ᶠ[atTop] (0 : ℝ → ℂ) := by
  rw [EventuallyEq, eventually_atTop] at h ⊢
  obtain ⟨x₀, hx₀⟩ := h
  obtain ⟨yf, hyf₁, hyf₂⟩ := exists_between hf
  obtain ⟨yg, hyg₁, hyg₂⟩ := exists_between hg
  lift yf to ℝ using ⟨hyf₂.ne, ((OrderBot.bot_le _).trans_lt hyf₁).ne'⟩
  lift yg to ℝ using ⟨hyg₂.ne, ((OrderBot.bot_le _).trans_lt hyg₁).ne'⟩
  refine ⟨max x₀ (max yf yg), fun x hx ↦ ?_⟩
  have Hf : LSeriesSummable f x := by
    refine LSeriesSummable_of_abscissaOfAbsConv_lt_re <|
      (ofReal_re x).symm ▸ hyf₁.trans_le (EReal.coe_le_coe_iff.mpr ?_)
    exact (le_max_left _ yg).trans <| (le_max_right x₀ _).trans hx
  have Hg : LSeriesSummable g x := by
    refine LSeriesSummable_of_abscissaOfAbsConv_lt_re <|
      (ofReal_re x).symm ▸ hyg₁.trans_le (EReal.coe_le_coe_iff.mpr ?_)
    exact (le_max_right yf _).trans <| (le_max_right x₀ _).trans hx
  rw [LSeries_sub Hf Hg, hx₀ x <| (le_max_left ..).trans hx, sub_self, Pi.zero_apply]

open Filter in
/-- If the `LSeries` of `f` and of `g` converge somewhere and agree on large real arguments,
then `f n = g n` whenever `n ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04236be259421119f58d70bdd946fc5dad35b873` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
