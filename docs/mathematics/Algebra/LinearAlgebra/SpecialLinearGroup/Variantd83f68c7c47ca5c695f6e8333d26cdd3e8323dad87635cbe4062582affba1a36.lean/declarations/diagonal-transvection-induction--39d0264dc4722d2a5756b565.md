# diagonal_transvection_induction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17ccd0cf-7621-1b59-3b93-fb46d35cc9f2",
  "kind": "theorem",
  "lexical_name": "diagonal_transvection_induction'",
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
  "slug": "diagonal-transvection-induction--39d0264dc4722d2a5756b565",
  "source": {
    "blob": "2336b1615bef41d2a93efe72389be2b1f6172533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 743,
    "line": 716,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39d0264dc4722d2a5756b565d4243817f64f49c09ac27bc4b9ea1391359c19de",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17ccd0cf-7621-1b59-3b93-fb46d35cc9f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 716–743.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_transvection_induction' [Nontrivial ι] (P : SpecialLinearGroup ι F → Prop)
    (M : SpecialLinearGroup ι F)
    (hdiag : ∀ (i j : ι) (hij : i ≠ j) {c : F} (hc : c ≠ 0), P (diag2n hij c hc))
    (htransvec : ∀ (i j : ι) (hij : i ≠ j) (a : F), P (transvection hij a))
    (hmul : ∀ A B, P A → P B → P (A * B)) : P M := by
  obtain ⟨i₀, j₀, hij₀⟩ := exists_pair_ne ι
  have hP1 : P 1 := transvection_coeff_zero (F := F) hij₀ ▸ htransvec i₀ j₀ hij₀ 0
  have hdiagonal (D : ι → F) (hD : det (diagonal D) = 1) : P ⟨diagonal D, hD⟩ := by
    rw [diag_eq_diag2n_prod i₀ D hD]
    refine Finset.noncommProd_induction _ _ _ P hmul hP1 fun i hi => ?_
    simp [(Finset.mem_filter.1 hi).2, hdiag]
  have hlist (L : List (TransvectionStruct ι F)) :
      P (L.map TransvectionStruct.toSpecialLinearGroup).prod := by
    induction L with
    | nil => simpa using hP1
    | cons t L ih =>
      rw [List.map_cons, List.prod_cons, t.toSpecialLinearGroup_def]
      exact hmul _ _ (htransvec t.i t.j t.hij t.c) ih
  obtain ⟨L, L', D, hD, hM⟩ := exists_list_transvec_mul_diagonal_mul_list_transvec M
  exact hM ▸ hmul _ _ (hmul _ _ (hlist L) (hdiagonal D hD)) (hlist L')

end induction

end SpecialLinearGroup

open Matrix.SpecialLinearGroup
open scoped commutatorElement

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean#L716).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2336b1615bef41d2a93efe72389be2b1f6172533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
