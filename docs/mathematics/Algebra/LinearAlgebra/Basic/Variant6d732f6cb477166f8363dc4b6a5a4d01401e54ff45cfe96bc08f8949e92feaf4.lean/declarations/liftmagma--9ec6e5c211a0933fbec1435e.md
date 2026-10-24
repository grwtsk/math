# liftMagma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42c61fec085b7f41784bf9c97d930ea9a8fad0d5bde433a4658207843531aac7",
  "kind": "def",
  "lexical_name": "liftMagma",
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
  "slug": "liftmagma--9ec6e5c211a0933fbec1435e",
  "source": {
    "blob": "e956b8d63c139f052f52d5e6554f5dbd6b0f8b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant6d732f6cb477166f8363dc4b6a5a4d01401e54ff45cfe96bc08f8949e92feaf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ec6e5c211a0933fbec1435e198ecbae2d2fd727bc26cfddca7e3ec1b3e4a5b3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant6d732f6cb477166f8363dc4b6a5a4d01401e54ff45cfe96bc08f8949e92feaf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42c61fec085b7f41784bf9c97d930ea9a8fad0d5bde433a4658207843531aac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftMagma [Module k A] [IsScalarTower k A A] [SMulCommClass k A A] :
    (G →ₙ* A) ≃ (MonoidAlgebra k G →ₙₐ[k] A) where
  toFun f :=
    { liftAddHom fun x => (smulAddHom k A).flip (f x) with
      toFun := fun a => a.sum fun m t => t • f m
      map_smul' := fun t' a => by
        rw [Finsupp.smul_sum, sum_smul_index']
        · simp_rw [smul_assoc, MonoidHom.id_apply]
        · intro m
          exact zero_smul k (f m)
      map_mul' := fun a₁ a₂ => by
        let g : G → k → A := fun m t => t • f m
        have h₁ : ∀ m, g m 0 = 0 := by
          intro m
          exact zero_smul k (f m)
        have h₂ : ∀ (m) (t₁ t₂ : k), g m (t₁ + t₂) = g m t₁ + g m t₂ := by
          intros
          rw [← add_smul]
        -- Porting note: `reducible` cannot be `local` so proof gets long.
        simp_rw [Finsupp.mul_sum, Finsupp.sum_mul, smul_mul_smul_comm, ← f.map_mul, mul_def,
          sum_comm a₂ a₁]
        rw [sum_sum_index h₁ h₂]; congr; ext
        rw [sum_sum_index h₁ h₂]; congr; ext
        rw [sum_single_index (h₁ _)] }
  invFun F := F.toMulHom.comp (ofMagma k G)
  left_inv f := by
    ext m
    simp only [NonUnitalAlgHom.coe_mk, ofMagma_apply, NonUnitalAlgHom.toMulHom_eq_coe,
      sum_single_index, Function.comp_apply, one_smul, zero_smul, MulHom.coe_comp,
      NonUnitalAlgHom.coe_to_mulHom]
  right_inv F := by
    ext m
    simp only [NonUnitalAlgHom.coe_mk, ofMagma_apply, NonUnitalAlgHom.toMulHom_eq_coe,
      sum_single_index, Function.comp_apply, one_smul, zero_smul, MulHom.coe_comp,
      NonUnitalAlgHom.coe_to_mulHom]

end NonUnitalNonAssocAlgebra

/-! #### Algebra structure -/

section Algebra

/-- The instance `Algebra k (MonoidAlgebra A G)` whenever we have `Algebra k A`.

In particular this provides the instance `Algebra k (MonoidAlgebra k G)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant6d732f6cb477166f8363dc4b6a5a4d01401e54ff45cfe96bc08f8949e92feaf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant6d732f6cb477166f8363dc4b6a5a4d01401e54ff45cfe96bc08f8949e92feaf4.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e956b8d63c139f052f52d5e6554f5dbd6b0f8b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
