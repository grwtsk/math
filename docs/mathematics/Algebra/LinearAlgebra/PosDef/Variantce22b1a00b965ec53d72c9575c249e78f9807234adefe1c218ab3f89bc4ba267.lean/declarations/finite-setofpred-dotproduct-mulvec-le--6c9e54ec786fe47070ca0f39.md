# finite_setOfPred_dotProduct_mulVec_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be01756d-a672-520b-f1d1-4509d2550415",
  "kind": "lemma",
  "lexical_name": "finite_setOfPred_dotProduct_mulVec_le",
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
  "slug": "finite-setofpred-dotproduct-mulvec-le--6c9e54ec786fe47070ca0f39",
  "source": {
    "blob": "07ac8a17c278a43c89ad4a5135c9bd8ceb339714",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 689,
    "line": 664,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c9e54ec786fe47070ca0f39d413997be6d518e5e9431b3cffcabf7493d89838",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be01756d-a672-520b-f1d1-4509d2550415`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 664–689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_setOfPred_dotProduct_mulVec_le {A : Matrix n n ℤ} (hA : A.PosDef) (r : ℤ) :
    {v | v ⬝ᵥ A *ᵥ v ≤ r}.Finite := by
  classical
  set B : ℤ := ∑ j, |A j j * r| with hB
  refine Set.Finite.of_finite_image ?_ (mulVec_injective_of_det_ne_zero hA.det_pos.ne').injOn
  refine (Set.Finite.pi fun _ : n ↦ Set.finite_Icc (-B) B).subset ?_
  rintro - ⟨v, hv, rfl⟩ j
  have h₁ : ((A *ᵥ v) j) ^ 2 ≤ (A j j) * (v ⬝ᵥ A *ᵥ v) := by
    simpa [pow_two] using hA.star_dotProduct_mulVec_mul_le (Pi.single j 1) v
  have h₂ : (A j j) * (v ⬝ᵥ A *ᵥ v) ≤ B := by
    refine le_trans ?_ (Finset.single_le_sum (fun i _ ↦ abs_nonneg _) (Finset.mem_univ j))
    exact le_trans (mul_le_mul_of_nonneg_left hv hA.diag_pos.le) (le_abs_self _)
  simp_rw [Set.mem_univ, Set.mem_Icc, forall_const, ← abs_le]
  refine le_trans ?_ (h₁.trans h₂)
  rw [← sq_abs]
  exact Int.le_self_sq _

end PosDef

end Matrix

namespace QuadraticForm


variable {n : Type*} [Fintype n]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean#L664).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07ac8a17c278a43c89ad4a5135c9bd8ceb339714` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
