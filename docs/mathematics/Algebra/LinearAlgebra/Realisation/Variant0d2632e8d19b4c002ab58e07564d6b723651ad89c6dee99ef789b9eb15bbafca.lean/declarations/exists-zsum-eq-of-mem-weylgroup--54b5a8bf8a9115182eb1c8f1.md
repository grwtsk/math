# exists_zsum_eq_of_mem_weylGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92641569-970f-224b-b3df-ce35eb25fe34",
  "kind": "lemma",
  "lexical_name": "exists_zsum_eq_of_mem_weylGroup",
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
  "slug": "exists-zsum-eq-of-mem-weylgroup--54b5a8bf8a9115182eb1c8f1",
  "source": {
    "blob": "48b70d9ca47fc2bca74198387059bd39e4994868",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 274,
    "path": "GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54b5a8bf8a9115182eb1c8f13bad7241a2fb97de0a77f66f5ebeb08bba6e84e2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92641569-970f-224b-b3df-ce35eb25fe34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_zsum_eq_of_mem_weylGroup {d : n → ℤ} (hd : (rl.matrix * diagonal d).IsSymm)
    {w : (M ≃ₗ[R] M) × (N ≃ₗ[R] N)} (hw : w ∈ rl.weylGroup) (c : n → ℤ) :
    letI S := rl.matrix * diagonal d
    ∃ c' : n → ℤ, w.1 (∑ j, c j • rl.sRoot j) = ∑ j, c' j • rl.sRoot j ∧
      c' ⬝ᵥ S *ᵥ c' = c ⬝ᵥ S *ᵥ c := by
  set A := rl.matrix with A_def
  set S := A * diagonal d with S_def
  induction hw using weylGroup.induction generalizing c with
  | mem i =>
    set t : ℤ := ∑ j, c j * A j i with t_def
    have ht : rl.pairing (∑ j, c j • rl.sRoot j) (rl.sCoroot i) = t := by simp [A_def, t_def]
    have hSt : (S *ᵥ c) i = t * d i := by
      replace hd (j : n) : A i j * d j = A j i * d i := by simpa [S_def] using hd.apply j i
      simp_rw [mulVec_apply_eq_sum, t_def, S_def, mul_diagonal, hd, Finset.sum_mul]
      exact Finset.sum_congr rfl fun j _ ↦ by ring
    refine ⟨c - Pi.single i t, ?_, ?_⟩
    · rw [reflection_apply, ht]
      simp [sub_smul, Int.cast_smul_eq_zsmul]
    · have : Pi.single i t ⬝ᵥ S *ᵥ Pi.single i t = t * (t * (2 * d i)) := by
        simp [S_def, A_def, rl.isCartan.diag]
      rw [mulVec_sub, sub_dotProduct, dotProduct_sub, dotProduct_sub,
        hd.dotProduct_mulVec_comm (y := Pi.single i t), single_dotProduct, hSt, this]
      ring
  | one => exact ⟨c, by simp, rfl⟩
  | mul u v _ _ hu hv =>
    obtain ⟨c₁, hc₁, hcc₁⟩ := hv c
    obtain ⟨c₂, hc₂, hcc₂⟩ := hu c₁
    exact ⟨c₂, by simp [← hc₁, ← hc₂], by rw [hcc₂, hcc₁]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48b70d9ca47fc2bca74198387059bd39e4994868` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
