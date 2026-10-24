# galRestrictHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ad298a2754986f0a2e946a20ad0cc67376eccc9c860df6a588c76f973e6b39d",
  "kind": "def",
  "lexical_name": "galRestrictHom",
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
  "slug": "galrestricthom--2fc95d81b7dc3c38ea173f96",
  "source": {
    "blob": "d112392a109bfa1ec4da6a15a10b36ddfd3d2433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 69,
    "path": "GRWTSK/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2fc95d81b7dc3c38ea173f966c816bc3bc3d8a6e3872089d3d2f4a1b050132a4",
  "verification": {
    "reference": "docs/verification/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ad298a2754986f0a2e946a20ad0cc67376eccc9c860df6a588c76f973e6b39d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def galRestrictHom : (L →ₐ[K] L) ≃* (B →ₐ[A] B) where
  toFun := fun f ↦ (IsIntegralClosure.equiv A (integralClosure A L) L B).toAlgHom.comp
      (((f.restrictScalars A).comp (IsScalarTower.toAlgHom A B L)).codRestrict
        (integralClosure A L) (fun x ↦ IsIntegral.map _ (IsIntegralClosure.isIntegral A L x)))
  map_mul' := by
    intros σ₁ σ₂
    ext x
    apply (IsIntegralClosure.equiv A (integralClosure A L) L B).symm.injective
    ext
    dsimp
    simp only [AlgEquiv.symm_apply_apply, AlgHom.coe_codRestrict, AlgHom.coe_restrictScalars',
      AlgHom.coe_comp, AlgHom.restrictDomain, IsScalarTower.coe_toAlgHom', Function.comp_apply,
      AlgHom.mul_apply, IsIntegralClosure.algebraMap_equiv, Subalgebra.algebraMap_eq]
    rfl
  invFun := galLift A K L B
  left_inv σ :=
    have := (IsFractionRing.injective A K).isDomain
    have := IsIntegralClosure.isLocalization A K L B
    AlgHom.coe_ringHom_injective <| IsLocalization.ringHom_ext (Algebra.algebraMapSubmonoid B A⁰)
      <| RingHom.ext fun x ↦ by simp [Subalgebra.algebraMap_eq, AlgHom.restrictDomain, galLift]
  right_inv σ :=
    have := (IsFractionRing.injective A K).isDomain
    have := IsIntegralClosure.isLocalization A K L B
    AlgHom.ext fun x ↦ IsIntegralClosure.algebraMap_injective B A L
      (by simp [AlgHom.restrictDomain, Subalgebra.algebraMap_eq, galLift])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d112392a109bfa1ec4da6a15a10b36ddfd3d2433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
