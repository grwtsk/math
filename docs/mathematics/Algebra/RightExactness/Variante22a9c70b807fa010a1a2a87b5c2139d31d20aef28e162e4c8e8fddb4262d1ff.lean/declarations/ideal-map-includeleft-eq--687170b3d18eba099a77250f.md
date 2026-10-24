# Ideal.map_includeLeft_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a678aa0124f33b23291ce973b8be80224b14791b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 444,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c76e6a6a-bc1a-3750-d34d-d287b21a02e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b26d485-95e3-7025-68f1-454496da339a",
  "kind": "lemma",
  "lexical_name": "Ideal.map_includeLeft_eq",
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
  "slug": "ideal-map-includeleft-eq--687170b3d18eba099a77250f",
  "source": {
    "blob": "a678aa0124f33b23291ce973b8be80224b14791b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 444,
    "path": "GRWTSK/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:687170b3d18eba099a77250fd6479a03b32ba074c9f5bf6b7da950b90ff0630a",
  "verification": {
    "reference": "docs/verification/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b26d485-95e3-7025-68f1-454496da339a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.map_includeLeft_eq (I : Ideal A) :
    (I.map (Algebra.TensorProduct.includeLeft : A →ₐ[R] A ⊗[R] B)).restrictScalars R
      = LinearMap.range (LinearMap.rTensor B (Submodule.subtype (I.restrictScalars R))) := by
  rw [← SetLike.coe_set_eq]
  apply le_antisymm
  · intro x hx
    simp only [Submodule.coe_restrictScalars, SetLike.mem_coe, LinearMap.mem_range]
    rw [Ideal.map, ← submodule_span_eq] at hx
    refine Submodule.span_induction ?_ ?_ ?_ ?_ hx
    · intro x
      simp only [includeLeft_apply, Set.mem_image, SetLike.mem_coe]
      rintro ⟨y, hy, rfl⟩
      use ⟨y, hy⟩ ⊗ₜ[R] 1
      rfl
    · use 0
      simp only [map_zero]
    · rintro x y - - ⟨x, hx, rfl⟩ ⟨y, hy, rfl⟩
      use x + y
      simp only [map_add]
    · rintro a x - ⟨x, hx, rfl⟩
      induction a with
      | zero =>
        use 0
        simp only [map_zero, smul_eq_mul, zero_mul]
      | tmul a b =>
        induction x with
        | zero =>
          use 0
          simp only [map_zero, smul_eq_mul, mul_zero]
        | tmul x y =>
          use (a • x) ⊗ₜ[R] (b * y)
          simp only [LinearMap.lTensor_tmul, Submodule.coe_subtype, smul_eq_mul, tmul_mul_tmul]
          with_unfolding_all rfl
        | add x y hx hy =>
          obtain ⟨x', hx'⟩ := hx
          obtain ⟨y', hy'⟩ := hy
          use x' + y'
          simp only [map_add, hx', smul_add, hy']
      | add a b ha hb =>
        obtain ⟨x', ha'⟩ := ha
        obtain ⟨y', hb'⟩ := hb
        use x' + y'
        simp only [map_add, ha', add_smul, hb']

  · rintro x ⟨y, rfl⟩
    induction y with
    | zero =>
        rw [map_zero]
        apply zero_mem
    | tmul a b =>
        simp only [LinearMap.rTensor_tmul, Submodule.coe_subtype]
        suffices (a : A) ⊗ₜ[R] b = ((1 : A) ⊗ₜ[R] b) * ((a : A) ⊗ₜ[R] (1 : B)) by
          simp only [Submodule.coe_restrictScalars, SetLike.mem_coe]
          rw [this]
          apply Ideal.mul_mem_left
          -- Note: adding `includeLeft` as a hint fixes a timeout https://github.com/leanprover-community/mathlib4/pull/8386
          apply Ideal.mem_map_of_mem includeLeft
          exact Submodule.coe_mem a
        simp only [Submodule.coe_restrictScalars, Algebra.TensorProduct.tmul_mul_tmul,
          mul_one, one_mul]
    | add x y hx hy =>
        rw [map_add]
        apply Submodule.add_mem _ hx hy

/-- The ideal of `A ⊗[R] B` generated by `I` is the image of `A ⊗[R] I` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a678aa0124f33b23291ce973b8be80224b14791b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
