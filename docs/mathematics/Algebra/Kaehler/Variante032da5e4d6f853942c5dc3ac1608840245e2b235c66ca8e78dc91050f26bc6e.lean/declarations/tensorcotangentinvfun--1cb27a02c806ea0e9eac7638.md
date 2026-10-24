# tensorCotangentInvFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:faa8f78b352718bcf818eeecce81336933cbe8c064b5b2f060db5535b6a7815e",
  "kind": "def",
  "lexical_name": "tensorCotangentInvFun",
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
  "slug": "tensorcotangentinvfun--1cb27a02c806ea0e9eac7638",
  "source": {
    "blob": "d18ddd3379148e9a1f7571baceac8cb5e73722dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 153,
    "path": "GRWTSK/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cb27a02c806ea0e9eac76381c8080b0daa1e6cbf0b973c54ae6665e0ddecb94",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:faa8f78b352718bcf818eeecce81336933cbe8c064b5b2f060db5535b6a7815e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorCotangentInvFun
    [alg : Algebra P.Ring Q.Ring] (halg : algebraMap P.Ring Q.Ring = f.toRingHom)
    (H : Function.Bijective ((f.mapKer halg).liftBaseChange Q.Ring)) :
    Q.Cotangent →+ T ⊗[S] P.Cotangent :=
  letI := ((algebraMap S T).comp (algebraMap P.Ring S)).toAlgebra
  haveI : IsScalarTower P.Ring S T := .of_algebraMap_eq' rfl
  haveI : IsScalarTower P.Ring Q.Ring T :=
    .of_algebraMap_eq fun r ↦ halg ▸ (f.algebraMap_toRingHom r).symm
  letI e := LinearEquiv.ofBijective _ H
  letI f' : Q.ker →ₗ[Q.Ring] T ⊗[S] P.Cotangent :=
    (LinearMap.liftBaseChange _
      ((TensorProduct.mk _ _ _ 1).restrictScalars _ ∘ₗ Cotangent.mk)) ∘ₗ e.symm.toLinearMap
  QuotientAddGroup.lift _ f' <| by
    intro x hx
    refine Submodule.smul_induction_on hx ?_ fun _ _ ↦ add_mem
    clear x hx
    rintro a ha b -
    obtain ⟨x, hx⟩ := e.surjective ⟨a, ha⟩
    obtain rfl : (e x).1 = a := congr_arg Subtype.val hx
    obtain ⟨y, rfl⟩ := e.surjective b
    simp only [AddMonoidHom.mem_ker, AddMonoidHom.coe_coe, map_smul,
      LinearMap.coe_comp, LinearEquiv.coe_coe, Function.comp_apply,
      LinearEquiv.symm_apply_apply, f']
    clear hx ha
    induction x with
    | add x y _ _ =>
      simp only [map_add, Submodule.coe_add, add_smul, zero_add, *]
    | tmul a b =>
      induction y with
      | add x y hx hy => simp only [LinearMap.map_add, smul_add, hx, hy, zero_add]
      | tmul c d =>
        simp only [LinearMap.liftBaseChange_tmul, LinearMap.coe_comp, SetLike.val_smul,
          LinearMap.coe_restrictScalars, Function.comp_apply, mk_apply, smul_eq_mul, e,
          LinearMap.liftBaseChange_tmul, LinearEquiv.ofBijective_apply]
        have h₂ : b.1 • Cotangent.mk d = 0 := by ext; simp [Cotangent.smul_eq_zero_of_mem _ b.2]
        rw [TensorProduct.smul_tmul', mul_smul, f.mapKer_apply_coe, ← halg,
          algebraMap_smul, ← TensorProduct.tmul_smul, h₂, tmul_zero, smul_zero]

omit [IsScalarTower R S T] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d18ddd3379148e9a1f7571baceac8cb5e73722dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
