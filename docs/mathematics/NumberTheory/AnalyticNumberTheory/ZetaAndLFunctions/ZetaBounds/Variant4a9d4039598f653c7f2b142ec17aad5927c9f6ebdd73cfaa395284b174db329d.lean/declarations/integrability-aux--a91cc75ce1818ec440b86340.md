# integrability_aux₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:224662ec-b99b-ecbb-4208-52cbe739eb11",
  "kind": "lemma",
  "lexical_name": "integrability_aux₀",
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
  "slug": "integrability-aux--a91cc75ce1818ec440b86340",
  "source": {
    "blob": "abc3064379e29e75a5447a19e19b00c9cedea29e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 767,
    "line": 749,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a91cc75ce1818ec440b863409dfc99205eca12e6a7914e95fba87a5b5d368556",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:224662ec-b99b-ecbb-4208-52cbe739eb11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 749–767.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrability_aux₀ {a b : ℝ} :
    ∀ᵐ (x : ℝ) ∂MeasureTheory.Measure.restrict MeasureTheory.volume [[a, b]],
      ‖(⌊x⌋ : ℂ)‖ ≤ max ‖a‖ ‖b‖ + 1 := by
  apply (MeasureTheory.ae_restrict_iff' measurableSet_Icc).mpr
  refine MeasureTheory.ae_of_all _ (fun x hx ↦ ?_)
  simp only [inf_le_iff, le_sup_iff, mem_Icc] at hx
  simp only [norm_intCast, Real.norm_eq_abs]
  have : |x| ≤ max |a| |b| := by
    obtain x_ge_a | x_ge_b := hx.1 <;> obtain x_le_a | x_le_b := hx.2
    · rw [(by linarith : x = a)]; apply le_max_left
    · apply abs_le_max_abs_abs x_ge_a x_le_b
    · rw [max_comm]; apply abs_le_max_abs_abs x_ge_b x_le_a
    · rw [(by linarith : x = b)]; apply le_max_right
  obtain hx | hx := abs_cases x
  · rw [_root_.abs_of_nonneg <| by exact_mod_cast Int.floor_nonneg.mpr hx.2]
    apply le_trans (Int.floor_le x) <| le_trans (hx.1 ▸ this) (by simp)
  · rw [_root_.abs_of_nonpos <| by exact_mod_cast Int.floor_nonpos hx.2.le]
    linarith [(Int.lt_floor_add_one x).le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean#L749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abc3064379e29e75a5447a19e19b00c9cedea29e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
