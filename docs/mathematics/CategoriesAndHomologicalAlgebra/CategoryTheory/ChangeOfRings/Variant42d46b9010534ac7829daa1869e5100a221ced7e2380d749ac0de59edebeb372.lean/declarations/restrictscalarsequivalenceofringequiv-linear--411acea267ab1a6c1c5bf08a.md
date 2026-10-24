# restrictScalarsEquivalenceOfRingEquiv_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b554e4a41a000f02ef4342fa0b380f31bc14685c6ce96399299799cd24f9117b",
  "kind": "instance",
  "lexical_name": "restrictScalarsEquivalenceOfRingEquiv_linear",
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
  "slug": "restrictscalarsequivalenceofringequiv-linear--411acea267ab1a6c1c5bf08a",
  "source": {
    "blob": "212d42c388d1d661392c23767d7806dd65cfdc44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 339,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant42d46b9010534ac7829daa1869e5100a221ced7e2380d749ac0de59edebeb372.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:411acea267ab1a6c1c5bf08ab007452334bf166ddbda8fb84c21b242db98b30e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant42d46b9010534ac7829daa1869e5100a221ced7e2380d749ac0de59edebeb372.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b554e4a41a000f02ef4342fa0b380f31bc14685c6ce96399299799cd24f9117b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance restrictScalarsEquivalenceOfRingEquiv_linear
    {R₀ R S : Type*} [CommSemiring R₀] [Ring R] [Ring S] [Algebra R₀ R] [Algebra R₀ S]
    (e : R ≃ₐ[R₀] S) :
    (restrictScalarsEquivalenceOfRingEquiv e.toRingEquiv).functor.Linear R₀ :=
  inferInstanceAs ((restrictScalars e.toAlgHom.toRingHom).Linear R₀)

end Algebra

open TensorProduct

variable {R : Type u₁} {S : Type u₂} [CommRing R] [CommRing S] (f : R →+* S)

section ModuleCat.Unbundled

variable (M : Type v) [AddCommMonoid M] [Module R M]

/-- Tensor product of elements along a base change.

This notation is necessary because we need to reason about `s ⊗ₜ m` where `s : S` and `m : M`;
without this notation, one needs to work with `s : (restrictScalars f).obj ⟨S⟩`. -/
scoped[ChangeOfRings] notation:100 s:100 " ⊗ₜ[" R "," f "] " m:101 =>
  @TensorProduct.tmul R _ _ _ _ _ (Module.compHom _ f) _ s m

end Unbundled

open scoped ChangeOfRings

namespace ExtendScalars

variable (M : ModuleCat.{v} R)

set_option backward.isDefEq.respectTransparency false in
/-- Extension of scalars turns an `R`-module into an `S`-module by M ↦ S ⨂ M
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant42d46b9010534ac7829daa1869e5100a221ced7e2380d749ac0de59edebeb372.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant42d46b9010534ac7829daa1869e5100a221ced7e2380d749ac0de59edebeb372.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `212d42c388d1d661392c23767d7806dd65cfdc44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
