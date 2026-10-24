# _root_.Module.End.divisionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6f51578dde651d379706ed43f6760e53f96e58bcbafbefd14d46db3ba0153b4",
  "kind": "instance",
  "lexical_name": "_root_.Module.End.divisionRing",
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
  "slug": "root-module-end-divisionring--482872458af6a8e5326e5196",
  "source": {
    "blob": "6168c37b7cde5485f3350fa35ddef8ff4416fe27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 165,
    "path": "GRWTSK/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:482872458af6a8e5326e519603eb3a7fdde250834a31b8b1de6bc9c8192a19e3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6f51578dde651d379706ed43f6760e53f96e58bcbafbefd14d46db3ba0153b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance _root_.Module.End.divisionRing
    [DecidableEq (Module.End R M)] [IsSimpleModule R M] : DivisionRing (Module.End R M) :=
  {
    (Module.End.ring :
      Ring
        (Module.End R
          M)) with
    inv := fun f =>
      if h : f = 0 then 0
      else
        LinearMap.inverse f (Equiv.ofBijective _ (bijective_of_ne_zero h)).invFun
          (Equiv.ofBijective _ (bijective_of_ne_zero h)).left_inv
          (Equiv.ofBijective _ (bijective_of_ne_zero h)).right_inv
    exists_pair_ne :=
      ⟨0, 1, by
        haveI := IsSimpleModule.nontrivial R M
        have h := exists_pair_ne M
        contrapose! h
        intro x y
        simp_rw [ext_iff, one_apply, zero_apply] at h
        rw [← h x, h y]⟩
    mul_inv_cancel := by
      intro a a0
      change a * dite _ _ _ = 1
      ext x
      rw [dif_neg a0, mul_eq_comp, one_apply, comp_apply]
      exact (Equiv.ofBijective _ (bijective_of_ne_zero a0)).right_inv x
    inv_zero := dif_pos rfl }
#align module.End.division_ring Module.End.divisionRing

end LinearMap

-- Porting note: adding a namespace with all the new statements; existing result is not used in ML3
namespace JordanHolderModule

-- Porting note: jordanHolderModule was timing out so outlining the fields

/-- An isomorphism `X₂ / X₁ ∩ X₂ ≅ Y₂ / Y₁ ∩ Y₂` of modules for pairs
`(X₁,X₂) (Y₁,Y₂) : Submodule R M` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SimpleModule/Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6168c37b7cde5485f3350fa35ddef8ff4416fe27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
