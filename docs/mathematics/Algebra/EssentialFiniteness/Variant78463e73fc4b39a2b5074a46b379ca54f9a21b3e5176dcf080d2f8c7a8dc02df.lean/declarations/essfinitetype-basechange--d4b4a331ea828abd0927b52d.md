# EssFiniteType.baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0eabd4ba288ec26880173696dc48aa5fd48a823e4fde74e7d8cf1baa7de9710",
  "kind": "instance",
  "lexical_name": "EssFiniteType.baseChange",
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
  "slug": "essfinitetype-basechange--d4b4a331ea828abd0927b52d",
  "source": {
    "blob": "b483b3fab0610ec8b4bd6d862a52b9d94dd94652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 169,
    "path": "GRWTSK/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4b4a331ea828abd0927b52d061f271a3f756cb2387657adf0a8bb7ebdee9a48",
  "verification": {
    "reference": "docs/verification/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0eabd4ba288ec26880173696dc48aa5fd48a823e4fde74e7d8cf1baa7de9710`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance EssFiniteType.baseChange [h : EssFiniteType R S] : EssFiniteType T (T ⊗[R] S) := by
  classical
  rw [essFiniteType_iff] at h ⊢
  obtain ⟨σ, hσ⟩ := h
  use σ.image Algebra.TensorProduct.includeRight
  intro s
  induction s using TensorProduct.induction_on with
  | zero => exact ⟨1, one_mem _, isUnit_one, by simpa using zero_mem _⟩
  | tmul x y =>
    obtain ⟨t, h₁, h₂, h₃⟩ := hσ y
    have H (x : S) (hx : x ∈ Algebra.adjoin R (σ : Set S)) :
        1 ⊗ₜ[R] x ∈ Algebra.adjoin T
          ((σ.image Algebra.TensorProduct.includeRight : Finset (T ⊗[R] S)) : Set (T ⊗[R] S)) := by
      have : Algebra.TensorProduct.includeRight x ∈
          (Algebra.adjoin R (σ : Set S)).map (Algebra.TensorProduct.includeRight (A := T)) :=
        Subalgebra.mem_map.mpr ⟨_, hx, rfl⟩
      rw [← Algebra.adjoin_adjoin_of_tower R]
      apply Algebra.subset_adjoin
      simpa [← Algebra.adjoin_image] using this
    refine ⟨Algebra.TensorProduct.includeRight t, H _ h₁, h₂.map _, ?_⟩
    simp only [Algebra.TensorProduct.includeRight_apply, Algebra.TensorProduct.tmul_mul_tmul,
      mul_one]
    rw [← mul_one x, ← smul_eq_mul, ← TensorProduct.smul_tmul']
    apply Subalgebra.smul_mem
    exact H _ h₃
  | add x y hx hy =>
    obtain ⟨tx, hx₁, hx₂, hx₃⟩ := hx
    obtain ⟨ty, hy₁, hy₂, hy₃⟩ := hy
    refine ⟨_, mul_mem hx₁ hy₁, hx₂.mul hy₂, ?_⟩
    rw [add_mul, ← mul_assoc, mul_comm tx ty, ← mul_assoc]
    exact add_mem (mul_mem hx₃ hy₁) (mul_mem hy₃ hx₁)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b483b3fab0610ec8b4bd6d862a52b9d94dd94652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
