# continuousSemilinearEquivClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6442ebe266627dcd5f71acf4f9ad0fe029d375f9e2184c65f2fea0ca621d82db",
  "kind": "instance",
  "lexical_name": "continuousSemilinearEquivClass",
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
  "slug": "continuoussemilinearequivclass--9c88414fd1642bb1122263da",
  "source": {
    "blob": "d5a7b0730e93bc941e79cfa8beeea0777006a036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1848,
    "line": 1823,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c88414fd1642bb1122263daf0f75ff959c9536ab5acb10c3c27a2260e8a04b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6442ebe266627dcd5f71acf4f9ad0fe029d375f9e2184c65f2fea0ca621d82db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1823–1848.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance continuousSemilinearEquivClass :
    ContinuousSemilinearEquivClass (M₁ ≃SL[σ₁₂] M₂) σ₁₂ M₁ M₂ where
  coe f := f.toFun
  inv f := f.invFun
  coe_injective' f g h₁ h₂ := by
    cases' f with f' _
    cases' g with g' _
    rcases f' with ⟨⟨⟨_, _⟩, _⟩, _⟩
    rcases g' with ⟨⟨⟨_, _⟩, _⟩, _⟩
    congr
  left_inv f := f.left_inv
  right_inv f := f.right_inv
  map_add f := f.map_add'
  map_smulₛₗ f := f.map_smul'
  map_continuous := continuous_toFun
  inv_continuous := continuous_invFun
#align continuous_linear_equiv.continuous_semilinear_equiv_class ContinuousLinearEquiv.continuousSemilinearEquivClass

-- see Note [function coercion]
-- /-- Coerce continuous linear equivs to maps. -/
-- instance : CoeFun (M₁ ≃SL[σ₁₂] M₂) fun _ => M₁ → M₂ :=
-- ⟨fun f => f⟩

-- Porting note: Syntactic tautology.
#noalign continuous_linear_equiv.coe_def_rev

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean#L1823).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a7b0730e93bc941e79cfa8beeea0777006a036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
