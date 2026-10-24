# resCoindHomLEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eeb581099465c4b82d6297c40c11055ae2cedd68737601a6c01099d523e76e49",
  "kind": "def",
  "lexical_name": "resCoindHomLEquiv",
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
  "slug": "rescoindhomlequiv--e7621e4d448d67e4703a98f6",
  "source": {
    "blob": "1c2de90464bb8006a9d235f030b1887a81928bdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 217,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coinduced/Variantfe3b5b9c10232ef3ce4bc0506578c1c82b673d164ea26a30ba5dd8732d79d505.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7621e4d448d67e4703a98f6d14b47e9bd361575c27c8451530d225343d1c79c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coinduced/Variantfe3b5b9c10232ef3ce4bc0506578c1c82b673d164ea26a30ba5dd8732d79d505.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eeb581099465c4b82d6297c40c11055ae2cedd68737601a6c01099d523e76e49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def resCoindHomLEquiv (B : Rep k H) (A : Rep k G) :
    ((Action.res _ φ).obj B ⟶ A) ≃ₗ[k] (B ⟶ coind φ A) where
  toFun f := {
    hom := ModuleCat.ofHom <| (LinearMap.pi fun h => f.hom.hom ∘ₗ Rep.ρ B h).codRestrict _
      fun _ _ _ => by simpa using hom_comm_apply f _ _
    comm _ := by ext; simp [ModuleCat.endRingEquiv] }
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
  invFun f := {
    hom := ModuleCat.ofHom (LinearMap.proj 1 ∘ₗ ((Rep.ρ A).coindV φ).subtype ∘ₗ f.hom.hom)
    comm g := by
      ext x
      have := ((f.hom x).2 g 1).symm
      have := hom_comm_apply f (φ g) x
      simp_all }
  left_inv := by intro; ext; simp
  right_inv z := by ext; have := hom_comm_apply z; simp_all

variable (k) in
/-- Given a monoid homomorphism `φ : G →* H`, the coinduction functor `Rep k G ⥤ Rep k H` is right
adjoint to the restriction functor along `φ`. -/
@[simps! counit_app_hom_hom unit_app_hom_hom]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coinduced/Variantfe3b5b9c10232ef3ce4bc0506578c1c82b673d164ea26a30ba5dd8732d79d505.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coinduced/Variantfe3b5b9c10232ef3ce4bc0506578c1c82b673d164ea26a30ba5dd8732d79d505.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c2de90464bb8006a9d235f030b1887a81928bdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
