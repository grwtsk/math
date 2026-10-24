# rankOne_projection_sub_cube

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7059924253dbf612e4e044f895a2daed394a7bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f1a30ae-8061-f385-76ce-0ef09644883a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6a2f022-0c40-ae8b-3eaf-8ae3657adc47",
  "kind": "theorem",
  "lexical_name": "rankOne_projection_sub_cube",
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
  "slug": "rankone-projection-sub-cube--572c2a8185f76526c0e1b8b5",
  "source": {
    "blob": "e7059924253dbf612e4e044f895a2daed394a7bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 125,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:572c2a8185f76526c0e1b8b55848915e5632828df2e53b1b996f99f3606c44f4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6a2f022-0c40-ae8b-3eaf-8ae3657adc47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rankOne_projection_sub_cube (x y : H) (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) :
    (rankOne ℂ x x - rankOne ℂ y y) ^ 3 =
      ((1 - ‖inner ℂ x y‖ ^ 2 : ℝ) : ℂ) •
        (rankOne ℂ x x - rankOne ℂ y y) := by
  calc
    (rankOne ℂ x x - rankOne ℂ y y) ^ 3 =
        (rankOne ℂ x x - rankOne ℂ y y) *
          (rankOne ℂ x x - rankOne ℂ y y) *
            (rankOne ℂ x x - rankOne ℂ y y) := by noncomm_ring
    _ = ((1 - ‖inner ℂ x y‖ ^ 2 : ℝ) : ℂ) •
        (rankOne ℂ x x - rankOne ℂ y y) := by
      ext z
      simp only [mul_apply_eq_comp, sub_apply, InnerProductSpace.rankOne_apply,
        inner_sub_right, inner_smul_right, smul_sub, smul_apply]
      rw [inner_self_eq_norm_sq_to_K, inner_self_eq_norm_sq_to_K, hx, hy]
      simp only [one_pow, RCLike.ofReal_one]
      rw [Complex.sq_norm]
      push_cast
      rw [Complex.normSq_eq_conj_mul_self]
      rw [← inner_conj_symm (𝕜 := ℂ) x y]
      have hstar : (starRingEnd ℂ) ((starRingEnd ℂ) (inner ℂ y x)) = inner ℂ y x :=
        star_star (inner ℂ y x)
      rw [hstar]
      module

section Complete

variable [CompleteSpace H]

/-- Exact operator norm of the difference of two rank-one unit projections. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7059924253dbf612e4e044f895a2daed394a7bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
