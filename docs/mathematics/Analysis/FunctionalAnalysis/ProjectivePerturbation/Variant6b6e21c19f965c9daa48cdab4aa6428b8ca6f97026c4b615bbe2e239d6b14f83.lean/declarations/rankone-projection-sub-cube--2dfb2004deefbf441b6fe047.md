# rankOne_projection_sub_cube

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53c9ad8a-19d9-b98a-9fe2-389cfbb673b2",
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
  "slug": "rankone-projection-sub-cube--2dfb2004deefbf441b6fe047",
  "source": {
    "blob": "de1b6533ca5944bc38e85eb0e1f5bd351911ce5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 133,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dfb2004deefbf441b6fe047ce4d4494e37244455c6ebfcfa4122ae5d3522ef7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53c9ad8a-19d9-b98a-9fe2-389cfbb673b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–163.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de1b6533ca5944bc38e85eb0e1f5bd351911ce5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
