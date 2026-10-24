# exp_mul_of_derivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3bcd372-51d7-08c0-8547-1496acb7d5a6",
  "kind": "theorem",
  "lexical_name": "exp_mul_of_derivation",
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
  "slug": "exp-mul-of-derivation--0b9dab80f06989ca126300d9",
  "source": {
    "blob": "175ac44866ac33810397d3fe5cbc8f0111e23ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 234,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b9dab80f06989ca126300d9188fbaef397ec6388da4f6ad784c73ffb7b7a05a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3bcd372-51d7-08c0-8547-1496acb7d5a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_mul_of_derivation (R B : Type*) [CommRing R] [NonUnitalNonAssocRing B]
    [Module R B] [SMulCommClass R B B] [IsScalarTower R B B] [Module ℚ B]
    (D : B →ₗ[R] B) (h_der : ∀ x y, D (x * y) = x * D y + (D x) * y)
    (h_nil : IsNilpotent D) (x y : B) :
    exp D (x * y) = (exp D x) * (exp D y) := by
  let DL : Module.End R (B ⊗[R] B) := D.lTensor B
  let DR : Module.End R (B ⊗[R] B) := D.rTensor B
  have h_nilL : IsNilpotent DL := h_nil.map <| lTensorAlgHom R B B
  have h_nilR : IsNilpotent DR := h_nil.map <| rTensorAlgHom R B B
  have h_comm : Commute DL DR := by ext; simp [DL, DR]
  set m : B ⊗[R] B →ₗ[R] B := LinearMap.mul' R B with hm
  have h₁ : exp D (x * y) = m (exp (DL + DR) (x ⊗ₜ[R] y)) := by
    suffices exp D ∘ₗ m = m ∘ₗ exp (DL + DR) by simpa using LinearMap.congr_fun this (x ⊗ₜ[R] y)
    apply commute_exp_left_of_commute (h_comm.isNilpotent_add h_nilL h_nilR) h_nil
    ext
    simp [DL, DR, hm, h_der]
  have h₂ : exp DL = (exp D).lTensor B := (h_nil.map_exp (lTensorAlgHom R B B)).symm
  have h₃ : exp DR = (exp D).rTensor B := (h_nil.map_exp (rTensorAlgHom R B B)).symm
  simp [h₁, exp_add_of_commute h_comm h_nilL h_nilR, h₂, h₃, hm]

end Module.End
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `175ac44866ac33810397d3fe5cbc8f0111e23ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
