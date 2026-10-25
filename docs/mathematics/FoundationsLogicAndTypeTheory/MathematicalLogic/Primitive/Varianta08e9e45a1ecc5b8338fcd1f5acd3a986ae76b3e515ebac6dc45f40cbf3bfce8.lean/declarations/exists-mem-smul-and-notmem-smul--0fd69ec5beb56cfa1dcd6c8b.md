# exists_mem_smul_and_notMem_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f46eb6912bd9bb128c88d5d71b0e5779a9558a72",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c22f666d-c5ec-50f6-ec3a-21db9c1d51ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5010a601-eb0e-1aa0-03ea-cb3b15479d98",
  "kind": "theorem",
  "lexical_name": "exists_mem_smul_and_notMem_smul",
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
  "slug": "exists-mem-smul-and-notmem-smul--0fd69ec5beb56cfa1dcd6c8b",
  "source": {
    "blob": "f46eb6912bd9bb128c88d5d71b0e5779a9558a72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fd69ec5beb56cfa1dcd6c8bf4a71d263e185b7764f9e8ccc890578974831cd6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5010a601-eb0e-1aa0-03ea-cb3b15479d98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_smul_and_notMem_smul [IsPreprimitive G X]
    {A : Set X} (hfA : A.Finite) (hA : A.Nonempty) (hA' : A ≠ .univ) {a b : X} (h : a ≠ b) :
    ∃ g : G, a ∈ g • A ∧ b ∉ g • A := by
  let B := ⋂ (g : G) (_ : a ∈ g • A), g • A
  suffices b ∉ B by
    rw [Set.mem_iInter] at this
    simpa only [Set.mem_iInter, not_forall, exists_prop] using this
  suffices B = {a} by rw [this]; rw [Set.mem_singleton_iff]; exact Ne.symm h
  -- B is a block hence is a trivial block
  rcases isTrivialBlock_of_isBlock (G := G) (IsBlock.of_subset a hfA) with hyp | hyp
  · -- B.subsingleton
    apply Set.Subsingleton.eq_singleton_of_mem hyp
    rw [Set.mem_iInter]; intro g; simp only [Set.mem_iInter, imp_self]
  · -- B = ⊤ : contradiction
    change B = ⊤ at hyp
    exfalso; apply hA'
    suffices ∃ g : G, a ∈ g • A by
      obtain ⟨g, hg⟩ := this
      have : B ≤ g • A := Set.biInter_subset_of_mem hg
      rw [hyp, top_le_iff, ← eq_inv_smul_iff] at this
      rw [this, Set.top_eq_univ, Set.smul_set_univ]
    -- ∃ (g : M), a ∈ g • A
    obtain ⟨x, hx⟩ := hA
    obtain ⟨g, hg⟩ := MulAction.exists_smul_eq G x a
    use g, x

@[deprecated (since := "2025-05-23")]
alias _root_.AddAction.IsPreprimitive.exists_mem_vadd_and_not_mem_vadd :=
  AddAction.IsPreprimitive.exists_mem_vadd_and_notMem_vadd

@[to_additive existing, deprecated (since := "2025-05-23")]
alias exists_mem_smul_and_not_mem_smul := exists_mem_smul_and_notMem_smul

end IsPreprimitive

end Finite

end MulAction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46eb6912bd9bb128c88d5d71b0e5779a9558a72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
