# indResHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56217a7f786282ce7dc3574b42525cc994bb1c45e36be7bc6557dab2302813f6",
  "kind": "def",
  "lexical_name": "indResHomEquiv",
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
  "slug": "indreshomequiv--6f3e26fafd46e1a7ed0acf0e",
  "source": {
    "blob": "111dea6307881f12dbfd4fc37e93f0f1a7d27032",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 140,
    "path": "GRWTSK/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f3e26fafd46e1a7ed0acf0e5983c73d97240fe7a0d6415816b2bba2048a1350",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56217a7f786282ce7dc3574b42525cc994bb1c45e36be7bc6557dab2302813f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def indResHomEquiv (A : Rep.{max w v' u} k G) (B : Rep.{max w v' u} k H) :
    (ind φ A ⟶ B) ≃ₗ[k] (A ⟶ res φ B) where
  toFun f := Rep.ofHom ⟨f.hom.toLinearMap ∘ₗ IndV.mk φ A.ρ 1, fun g ↦ by
    ext x
    have := (hom_comm_apply f (φ g) (IndV.mk φ A.ρ 1 x)).symm
    simp_all [← Coinvariants.mk_inv_tmul] ⟩
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
  invFun f := Rep.ofHom ⟨Representation.Coinvariants.lift _
    (TensorProduct.lift <| (Finsupp.lift _ _ _ fun h => B.ρ h⁻¹ ∘ₗ f.hom.toLinearMap) ∘ₗ
      (MonoidAlgebra.coeffLinearEquiv k).toLinearMap)
    fun g ↦ by
      ext h x
      simp only [LinearMap.coe_comp, Function.comp_apply, MonoidAlgebra.lsingle_apply]
      simp [ofMulAction_single, mul_inv_rev, hom_comm_apply f g], fun g ↦ by ext; simp⟩
  left_inv f := by
    ext h a
    simpa using (hom_comm_apply f h⁻¹ (IndV.mk φ A.ρ 1 a)).symm
  right_inv _ := by ext; simp

variable (k) in
/-- Given a group homomorphism `φ : G →* H`, the induction functor `Rep k G ⥤ Rep k H` is left
adjoint to the restriction functor along `φ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `111dea6307881f12dbfd4fc37e93f0f1a7d27032` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
