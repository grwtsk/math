# induced_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c893879e2587054470b6ae7d55f3c6f4097f172fd890d6193afc9d7844c3795",
  "kind": "def",
  "lexical_name": "induced_equiv",
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
  "slug": "induced-equiv--e8fd69a41524b2eccdf4d72b",
  "source": {
    "blob": "5440521e91d9736dddb16a72c02e4565a090982e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 287,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Variantdfd685b6162fe56176a5adf010b04d5e996dc309d90677cffc0d33e6a8109778.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8fd69a41524b2eccdf4d72b8d26c073f187b543d6617eb76cde9c3f3e715de5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Variantdfd685b6162fe56176a5adf010b04d5e996dc309d90677cffc0d33e6a8109778.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c893879e2587054470b6ae7d55f3c6f4097f172fd890d6193afc9d7844c3795`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def induced_equiv [Fintype ι'] (I : Ideal R) (e : (ι → R) ≃ₗ[R] ι' → R) :
    ((ι → R) ⧸ I.pi ι) ≃ₗ[R ⧸ I] (ι' → R) ⧸ I.pi ι' := by
  refine'
    { toFun := induced_map I e
      invFun := induced_map I e.symm.. }
  all_goals
    first |rintro ⟨a⟩ ⟨b⟩|rintro ⟨a⟩
  -- porting note: the next 4 lines were necessary because Lean couldn't correctly infer `(I.pi ι)`
  -- and `(I.pi ι')` on its own.
  pick_goal 3
  convert_to Ideal.Quotient.mk (I.pi ι) _ = Ideal.Quotient.mk (I.pi ι) _
  congr
  simp only [LinearEquiv.coe_coe, LinearEquiv.symm_apply_apply]
  all_goals
    convert_to Ideal.Quotient.mk (I.pi ι') _ = Ideal.Quotient.mk (I.pi ι') _
    congr
    simp only [map_add, LinearEquiv.coe_coe, LinearEquiv.map_smulₛₗ, RingHom.id_apply,
      LinearEquiv.apply_symm_apply]
#noalign induced_equiv
-- porting note: `#noalign` since this is marked `private`

end

section

attribute [local instance] Ideal.Quotient.field

/-- Nontrivial commutative rings have the invariant basis number property.

In fact, any nontrivial commutative ring satisfies the strong rank condition, see
`commRing_strongRankCondition`. We prove this instance separately to avoid dependency on
`LinearAlgebra.Charpoly.Basic`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Variantdfd685b6162fe56176a5adf010b04d5e996dc309d90677cffc0d33e6a8109778.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Variantdfd685b6162fe56176a5adf010b04d5e996dc309d90677cffc0d33e6a8109778.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5440521e91d9736dddb16a72c02e4565a090982e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
