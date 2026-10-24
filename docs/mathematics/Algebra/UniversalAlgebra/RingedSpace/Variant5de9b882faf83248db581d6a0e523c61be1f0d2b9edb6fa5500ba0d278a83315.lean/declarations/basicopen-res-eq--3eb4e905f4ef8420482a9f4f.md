# basicOpen_res_eq

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
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:351d960c-562e-c38a-fc54-34abdf994e5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b930300c-b29e-6b70-7aac-1fc68fb5e054",
  "kind": "theorem",
  "lexical_name": "basicOpen_res_eq",
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
  "slug": "basicopen-res-eq--3eb4e905f4ef8420482a9f4f",
  "source": {
    "blob": "732c281b05c9737018aaca674827f19d81d7e9cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 205,
    "path": "GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3eb4e905f4ef8420482a9f4f0d085977193ada1a815dc8d64a8a0a299da20f4b",
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

Occurrence: `result:b930300c-b29e-6b70-7aac-1fc68fb5e054`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basicOpen_res_eq {U V : (Opens X)ᵒᵖ} (i : U ⟶ V) [IsIso i] (f : X.presheaf.obj U) :
    @basicOpen X (unop V) (X.presheaf.map i f) = @RingedSpace.basicOpen X (unop U) f := by
  apply le_antisymm
  · rw [X.basicOpen_res i f]; exact inf_le_right
  · have := X.basicOpen_res (inv i) (X.presheaf.map i f)
    rw [← comp_apply, ← X.presheaf.map_comp, IsIso.hom_inv_id, X.presheaf.map_id, id_apply] at this
    rw [this]
    exact inf_le_right
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.RingedSpace.basic_open_res_eq AlgebraicGeometry.RingedSpace.basicOpen_res_eq

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `732c281b05c9737018aaca674827f19d81d7e9cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
