# map_mul_map_of_isOrtho_of_mem_evenOdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cefa752-e01c-e57b-2fdd-7b9ecb6055a7",
  "kind": "theorem",
  "lexical_name": "map_mul_map_of_isOrtho_of_mem_evenOdd",
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
  "slug": "map-mul-map-of-isortho-of-mem-evenodd--4e8da2fca6b91a941ac4b927",
  "source": {
    "blob": "e06d940aa2396412dcbba58d8895f1d6810bd6c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e8da2fca6b91a941ac4b927469200ff4554fa45852e942b47170f59159bb3e3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cefa752-e01c-e57b-2fdd-7b9ecb6055a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem map_mul_map_of_isOrtho_of_mem_evenOdd
    {i₁ i₂ : ZMod 2} (hm₁ : m₁ ∈ evenOdd Q₁ i₁) (hm₂ : m₂ ∈ evenOdd Q₂ i₂) :
    map f₁ m₁ * map f₂ m₂ = (-1 : ℤˣ) ^ (i₂ * i₁) • (map f₂ m₂ * map f₁ m₁) := by
  -- the strategy; for each variable, induct on powers of `ι`, then on the exponent of each
  -- power.
  induction hm₁ using Submodule.iSup_induction' with
  | zero => rw [map_zero, zero_mul, mul_zero, smul_zero]
  | add _ _ _ _ ihx ihy => rw [map_add, add_mul, mul_add, ihx, ihy, smul_add]
  | mem i₁' m₁' hm₁ =>
    obtain ⟨i₁n, rfl⟩ := i₁'
    dsimp only at *
    induction hm₁ using Submodule.pow_induction_on_left' with
    | algebraMap =>
      rw [AlgHom.commutes, Nat.cast_zero, mul_zero, uzpow_zero, one_smul, Algebra.commutes]
    | add _ _ _ _ _ ihx ihy =>
      rw [map_add, add_mul, mul_add, ihx, ihy, smul_add]
    | mem_mul m₁ hm₁ i x₁ _hx₁ ih₁ =>
      obtain ⟨v₁, rfl⟩ := hm₁
      -- this is the first interesting goal
      rw [map_mul, mul_assoc, ih₁, mul_smul_comm, map_apply_ι, Nat.cast_succ, mul_add_one,
        uzpow_add, mul_smul, ← mul_assoc, ← mul_assoc, ← smul_mul_assoc ((-1) ^ i₂)]
      clear ih₁
      congr 2
      induction hm₂ using Submodule.iSup_induction' with
      | zero => rw [map_zero, zero_mul, mul_zero, smul_zero]
      | add _ _ _ _ ihx ihy => rw [map_add, add_mul, mul_add, ihx, ihy, smul_add]
      | mem i₂' m₂' hm₂ =>
        clear m₂
        obtain ⟨i₂n, rfl⟩ := i₂'
        dsimp only at *
        induction hm₂ using Submodule.pow_induction_on_left' with
        | algebraMap =>
          rw [AlgHom.commutes, Nat.cast_zero, uzpow_zero, one_smul, Algebra.commutes]
        | add _ _ _ _ _ ihx ihy =>
          rw [map_add, add_mul, mul_add, ihx, ihy, smul_add]
        | mem_mul m₂ hm₂ i x₂ _hx₂ ih₂ =>
          obtain ⟨v₂, rfl⟩ := hm₂
          -- this is the second interesting goal
          rw [map_mul, map_apply_ι, Nat.cast_succ, ← mul_assoc,
            ι_mul_ι_comm_of_isOrtho (hf _ _), neg_mul, mul_assoc, ih₂, mul_smul_comm,
            ← mul_assoc, ← Units.neg_smul, uzpow_add, uzpow_one, mul_neg_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e06d940aa2396412dcbba58d8895f1d6810bd6c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
