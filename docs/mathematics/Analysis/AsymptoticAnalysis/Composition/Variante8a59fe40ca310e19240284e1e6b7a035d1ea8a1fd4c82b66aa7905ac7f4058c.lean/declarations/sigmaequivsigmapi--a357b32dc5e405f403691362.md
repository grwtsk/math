# sigmaEquivSigmaPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81895add9df49c554e5e0a519fa6cb626fe0e0e9ae454ed17e34042b7d58f5c8",
  "kind": "def",
  "lexical_name": "sigmaEquivSigmaPi",
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
  "slug": "sigmaequivsigmapi--a357b32dc5e405f403691362",
  "source": {
    "blob": "a4665617df85c93782d95a058754fdcdb8334583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1183,
    "line": 1115,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a357b32dc5e405f4036913624f9899c623489599f04fc6118d0baaebdf0483cf",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81895add9df49c554e5e0a519fa6cb626fe0e0e9ae454ed17e34042b7d58f5c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1115–1183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaEquivSigmaPi (n : ℕ) :
    (Σ a : Composition n, Composition a.length) ≃
      Σ c : Composition n, ∀ i : Fin c.length, Composition (c.blocksFun i) where
  toFun i := ⟨i.1.gather i.2, i.1.sigmaCompositionAux i.2⟩
  invFun i :=
    ⟨{  blocks := (ofFn fun j => (i.2 j).blocks).join
        blocks_pos := by
          simp only [and_imp, List.mem_join, exists_imp, forall_mem_ofFn_iff]
          exact @fun i j hj => Composition.blocks_pos _ hj
        blocks_sum := by simp [sum_ofFn, Composition.blocks_sum, Composition.sum_blocksFun] },
      { blocks := ofFn fun j => (i.2 j).length
        blocks_pos := by
          intro k hk
          refine' ((forall_mem_ofFn_iff (P := fun i => 0 < i)).2 fun j => _) k hk
          exact Composition.length_pos_of_pos _ (Composition.blocks_pos' _ _ _)
        blocks_sum := by dsimp only [Composition.length]; simp [sum_ofFn] }⟩
  left_inv := by
    -- the fact that we have a left inverse is essentially `join_split_wrt_composition`,
    -- but we need to massage it to take care of the dependent setting.
    rintro ⟨a, b⟩
    rw [sigma_composition_eq_iff]
    dsimp
    constructor
    · conv_rhs =>
        rw [← join_splitWrtComposition a.blocks b, ← ofFn_get (splitWrtComposition a.blocks b)]
      have A : length (gather a b) = List.length (splitWrtComposition a.blocks b) := by
        simp only [length, gather, length_map, length_splitWrtComposition]
      congr! 2
      · exact (Fin.heq_fun_iff A (α := List ℕ)).2 fun i => rfl
    · have B : Composition.length (Composition.gather a b) = List.length b.blocks :=
        Composition.length_gather _ _
      conv_rhs => rw [← ofFn_get b.blocks]
      congr 1
      refine' (Fin.heq_fun_iff B).2 fun i => _
      rw [sigmaCompositionAux, Composition.length, List.get_map_rev List.length,
        List.get_of_eq (map_length_splitWrtComposition _ _)]
  right_inv := by
    -- the fact that we have a right inverse is essentially `splitWrtComposition_join`,
    -- but we need to massage it to take care of the dependent setting.
    rintro ⟨c, d⟩
    have : map List.sum (ofFn fun i : Fin (Composition.length c) => (d i).blocks) = c.blocks := by
      simp [map_ofFn, (· ∘ ·), Composition.blocks_sum, Composition.ofFn_blocksFun]
    rw [sigma_pi_composition_eq_iff]
    dsimp
    congr! 1
    · congr
      ext1
      dsimp [Composition.gather]
      rwa [splitWrtComposition_join]
      simp only [map_ofFn]
      rfl
    · rw [Fin.heq_fun_iff]
      intro i
      dsimp [Composition.sigmaCompositionAux]
      rw [get_of_eq (splitWrtComposition_join _ _ _)]
      · simp only [get_ofFn]
        rfl
      · congr
      · simp only [map_ofFn]
        rfl
#align composition.sigma_equiv_sigma_pi Composition.sigmaEquivSigmaPi

end Composition

namespace FormalMultilinearSeries

open Composition

set_option maxHeartbeats 500000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean#L1115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4665617df85c93782d95a058754fdcdb8334583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
