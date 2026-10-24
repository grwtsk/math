# mem_fromOverSubfunctor_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:320aa2ff-2be3-dfd6-8203-240b06554a74",
  "kind": "lemma",
  "lexical_name": "mem_fromOverSubfunctor_iff",
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
  "slug": "mem-fromoversubfunctor-iff--2d3a64e628049ed0df5709b1",
  "source": {
    "blob": "8f42614e0f2cd86e9843a511ecb72e614ff29bda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 83,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TypeValuedFlat/Variant41801dfde0ddd5d2c3ce5f6f2c4a85bd977785e03ba6d6e85d2883e064d4ced3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d3a64e628049ed0df5709b15c8b2fc53b0985835da5c4e387b566c9ee93b792",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TypeValuedFlat/Variant41801dfde0ddd5d2c3ce5f6f2c4a85bd977785e03ba6d6e85d2883e064d4ced3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:320aa2ff-2be3-dfd6-8203-240b06554a74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_fromOverSubfunctor_iff {U : Over X} (u : F.obj U.left) :
    u ∈ (fromOverSubfunctor F x).obj U ↔ F.map U.hom u = x := Iff.rfl

/-- Given a functor `F : C ⥤ Type w`, an object `X : C` and `x : F.obj X`,
this is the functor `Over X ⥤ Type w` which sends an object of `Over X`
corresponding to a morphism `f : Y ⟶ X` to the subtype of `F.obj Y`
consisting of those elements `y : F.obj Y` such that `F.map f y = x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TypeValuedFlat/Variant41801dfde0ddd5d2c3ce5f6f2c4a85bd977785e03ba6d6e85d2883e064d4ced3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TypeValuedFlat/Variant41801dfde0ddd5d2c3ce5f6f2c4a85bd977785e03ba6d6e85d2883e064d4ced3.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f42614e0f2cd86e9843a511ecb72e614ff29bda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
