# isUnit_res_of_isUnit_germ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "732c281b05c9737018aaca674827f19d81d7e9cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88161e28-9d32-1f90-09d0-6bf3247f1d8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc49183b-eaa5-68ce-b9a5-c58a66c3ebca",
  "kind": "theorem",
  "lexical_name": "isUnit_res_of_isUnit_germ",
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
  "slug": "isunit-res-of-isunit-germ--b70f37b0e08f38aeae4f785e",
  "source": {
    "blob": "732c281b05c9737018aaca674827f19d81d7e9cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 58,
    "path": "GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b70f37b0e08f38aeae4f785e0fb5a0eaee32a5003172c703a3cc9cb79eb12050",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc49183b-eaa5-68ce-b9a5-c58a66c3ebca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_res_of_isUnit_germ (U : Opens X) (f : X.presheaf.obj (op U)) (x : U)
    (h : IsUnit (X.presheaf.germ x f)) :
    ∃ (V : Opens X) (i : V ⟶ U) (_ : x.1 ∈ V), IsUnit (X.presheaf.map i.op f) := by
  obtain ⟨g', heq⟩ := h.exists_right_inv
  obtain ⟨V, hxV, g, rfl⟩ := X.presheaf.germ_exist x.1 g'
  let W := U ⊓ V
  have hxW : x.1 ∈ W := ⟨x.2, hxV⟩
  -- Porting note : `erw` can't write into `HEq`, so this is replaced with another `HEq` in the
  -- desired form
  replace heq : (X.presheaf.germ ⟨x.val, hxW⟩) ((X.presheaf.map (U.infLELeft V).op) f *
    (X.presheaf.map (U.infLERight V).op) g) = (X.presheaf.germ ⟨x.val, hxW⟩) 1
  · dsimp [germ]
    erw [map_mul, map_one, show X.presheaf.germ ⟨x, hxW⟩ ((X.presheaf.map (U.infLELeft V).op) f) =
      X.presheaf.germ x f from X.presheaf.germ_res_apply (Opens.infLELeft U V) ⟨x.1, hxW⟩ f,
      show X.presheaf.germ ⟨x, hxW⟩ (X.presheaf.map (U.infLERight V).op g) =
      X.presheaf.germ ⟨x, hxV⟩ g from X.presheaf.germ_res_apply (Opens.infLERight U V) ⟨x.1, hxW⟩ g]
    exact heq
  obtain ⟨W', hxW', i₁, i₂, heq'⟩ := X.presheaf.germ_eq x.1 hxW hxW _ _ heq
  use W', i₁ ≫ Opens.infLELeft U V, hxW'
  rw [(X.presheaf.map i₂.op).map_one, (X.presheaf.map i₁.op).map_mul] at heq'
  rw [← comp_apply, ←X.presheaf.map_comp, ←comp_apply, ←X.presheaf.map_comp, ←op_comp] at heq'
  exact isUnit_of_mul_eq_one _ _ heq'
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.RingedSpace.is_unit_res_of_is_unit_germ AlgebraicGeometry.RingedSpace.isUnit_res_of_isUnit_germ

/-- If a section `f` is a unit in each stalk, `f` must be a unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `732c281b05c9737018aaca674827f19d81d7e9cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
