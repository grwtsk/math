# IsAffineOpen.exists_basicOpen_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "941355433d09b45c53809ac658b279827279d001",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 435,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b761832f-dc46-de13-8c44-a252224efafe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72b51a17-c8eb-1f6c-5082-8f34e1c0e5b4",
  "kind": "theorem",
  "lexical_name": "IsAffineOpen.exists_basicOpen_le",
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
  "slug": "isaffineopen-exists-basicopen-le--560cab892596981a8a9f0e82",
  "source": {
    "blob": "941355433d09b45c53809ac658b279827279d001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 435,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:560cab892596981a8a9f0e828acb5d4ecb5cc15cf200859ad3141804b7563694",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72b51a17-c8eb-1f6c-5082-8f34e1c0e5b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAffineOpen.exists_basicOpen_le {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    {V : Opens X} (x : V) (h : ↑x ∈ U) :
    ∃ f : X.presheaf.obj (op U), X.basicOpen f ≤ V ∧ ↑x ∈ X.basicOpen f := by
  haveI : IsAffine _ := hU
  obtain ⟨_, ⟨_, ⟨r, rfl⟩, rfl⟩, h₁, h₂⟩ :=
    (isBasis_basicOpen (X.restrict U.openEmbedding)).exists_subset_of_mem_open (x.2 : ⟨x, h⟩ ∈ _)
      ((Opens.map U.inclusion).obj V).isOpen
  have :
    U.openEmbedding.isOpenMap.functor.obj ((X.restrict U.openEmbedding).basicOpen r) =
      X.basicOpen (X.presheaf.map (eqToHom U.openEmbedding_obj_top.symm).op r) := by
    refine' (Scheme.image_basicOpen (X.ofRestrict U.openEmbedding) r).trans _
    erw [← Scheme.basicOpen_res_eq _ _ (eqToHom U.openEmbedding_obj_top).op]
    rw [← comp_apply, ← CategoryTheory.Functor.map_comp, ← op_comp, eqToHom_trans, eqToHom_refl,
      op_id, CategoryTheory.Functor.map_id, Scheme.Hom.invApp]
    erw [PresheafedSpace.IsOpenImmersion.ofRestrict_invApp]
    congr
  use X.presheaf.map (eqToHom U.openEmbedding_obj_top.symm).op r
  rw [← this]
  exact ⟨Set.image_subset_iff.mpr h₂, ⟨_, h⟩, h₁, rfl⟩
#align algebraic_geometry.is_affine_open.exists_basic_open_le AlgebraicGeometry.IsAffineOpen.exists_basicOpen_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `941355433d09b45c53809ac658b279827279d001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
