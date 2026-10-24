# finite_setOfPred_dotProduct_mulVec_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d85277376a28a5c2265aad6e21472b1fec73185a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 656,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d6560b4-fb28-7e94-a87b-29f82cb6e1ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90c66f38-ae90-af22-c205-c4ab1a8c4c01",
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
  "slug": "finite-setofpred-dotproduct-mulvec-le--7d6ffaec3fb7b3467a5b112c",
  "source": {
    "blob": "d85277376a28a5c2265aad6e21472b1fec73185a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 681,
    "line": 656,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d6ffaec3fb7b3467a5b112c34c9c19fe0c6796156139cdf822e84b6375122d8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90c66f38-ae90-af22-c205-c4ab1a8c4c01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 656–681.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean#L656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85277376a28a5c2265aad6e21472b1fec73185a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
