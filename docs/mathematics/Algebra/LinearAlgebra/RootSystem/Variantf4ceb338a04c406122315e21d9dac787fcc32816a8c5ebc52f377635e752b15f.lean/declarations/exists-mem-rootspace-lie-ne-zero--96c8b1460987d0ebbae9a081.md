# exists_mem_rootSpace_lie_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a27db6fc5a41eb2c461f7a1a6f90ad29a10137a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4ceb338a04c406122315e21d9dac787fcc32816a8c5ebc52f377635e752b15f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1853135e-edc5-ff34-9997-e65aa8cf799e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0ab0fb5-fa6a-a38a-1659-e612777c7c85",
  "kind": "lemma",
  "lexical_name": "exists_mem_rootSpace_lie_ne_zero",
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
  "slug": "exists-mem-rootspace-lie-ne-zero--96c8b1460987d0ebbae9a081",
  "source": {
    "blob": "6a27db6fc5a41eb2c461f7a1a6f90ad29a10137a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 232,
    "path": "GRWTSK/Algebra/LinearAlgebra/RootSystem/Variantf4ceb338a04c406122315e21d9dac787fcc32816a8c5ebc52f377635e752b15f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96c8b1460987d0ebbae9a08186b073ea7770ec719975af8ec06fdf369199b770",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RootSystem/Variantf4ceb338a04c406122315e21d9dac787fcc32816a8c5ebc52f377635e752b15f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0ab0fb5-fa6a-a38a-1659-e612777c7c85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mem_rootSpace_lie_ne_zero
    {α β : Weight K H L} (hα : α.IsNonZero) (h_ne_bot : rootSpace H (α + β) ≠ ⊥) :
    ∃ a ∈ rootSpace H α, ∃ b ∈ rootSpace H β, ⁅a, b⁆ ≠ 0 := by
  obtain ⟨_, e, f, ef_sl2, he, hf⟩ := exists_isSl2Triple_of_weight_isNonZero hα
  obtain rfl := ef_sl2.h_eq_coroot hα he hf
  obtain ⟨x, hx, hx₀⟩ := (chainTop α β).exists_ne_zero
  refine ⟨e, he, (toEnd K L L f ^ chainTopCoeff α β) x, ?_, ?_⟩
  · have : chainTopCoeff α β • (-⇑α) + chainTop α β = β := by rw [coe_chainTop', smul_neg]; abel
    rw [← this]
    exact toEnd_pow_apply_mem hf hx (chainTopCoeff α β)
  · have hq₀ : 0 < chainTopCoeff α β := by
      have := (rootSpace_zsmul_add_ne_bot_iff α β hα 1).mp <| by rwa [one_smul]
      exact_mod_cast this.1
    obtain ⟨n, hn⟩ : ∃ n, chainTopCoeff α β = n + 1 := ⟨chainTopCoeff α β - 1, by lia⟩
    have h_prim : ef_sl2.HasPrimitiveVectorWith x (chainLength α β : K) :=
      { ne_zero := hx₀
        lie_h := (chainLength_smul α β hx).symm
        lie_e := by
          have hmem := lie_mem_genWeightSpace_of_mem_genWeightSpace he hx
          rwa [genWeightSpace_add_chainTop α β hα] at hmem }
    rw [hn, h_prim.lie_e_pow_succ_toEnd_f n]
    have : chainTopCoeff α β ≤ chainLength α β := chainTopCoeff_le_chainLength α β
    refine smul_ne_zero (mul_ne_zero (by exact_mod_cast n.succ_ne_zero) ?_)
      (h_prim.pow_toEnd_f_ne_zero_of_eq_nat rfl (by lia))
    rw [sub_ne_zero, Nat.cast_injective.ne_iff]
    lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RootSystem/Variantf4ceb338a04c406122315e21d9dac787fcc32816a8c5ebc52f377635e752b15f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RootSystem/Variantf4ceb338a04c406122315e21d9dac787fcc32816a8c5ebc52f377635e752b15f.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a27db6fc5a41eb2c461f7a1a6f90ad29a10137a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
