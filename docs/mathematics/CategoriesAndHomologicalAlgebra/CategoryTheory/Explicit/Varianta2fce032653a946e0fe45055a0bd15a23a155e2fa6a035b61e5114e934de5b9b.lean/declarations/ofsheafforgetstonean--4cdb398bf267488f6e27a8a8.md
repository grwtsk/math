# ofSheafForgetStonean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f80a7d5e85a9477f3194bbd9c814fc9c5047c4a1e1fc79d30b1109628abe85c",
  "kind": "def",
  "lexical_name": "ofSheafForgetStonean",
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
  "slug": "ofsheafforgetstonean--4cdb398bf267488f6e27a8a8",
  "source": {
    "blob": "2a5d0af7ed54d1783bcb714a435a79b195738c23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Varianta2fce032653a946e0fe45055a0bd15a23a155e2fa6a035b61e5114e934de5b9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cdb398bf267488f6e27a8a8652d7daed28ed75c517fd27b0d12b0f795ae0931",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Varianta2fce032653a946e0fe45055a0bd15a23a155e2fa6a035b61e5114e934de5b9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f80a7d5e85a9477f3194bbd9c814fc9c5047c4a1e1fc79d30b1109628abe85c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofSheafForgetStonean
    [∀ X, HasLimitsOfShape (StructuredArrow X Stonean.toCompHaus.op) A]
    [HasForget A] [ReflectsFiniteProducts (CategoryTheory.forget A)]
    (F : Stonean.{u}ᵒᵖ ⥤ A) [PreservesFiniteProducts (F ⋙ CategoryTheory.forget A)] :
    Condensed A :=
  StoneanCompHaus.equivalence A |>.functor.obj {
    val := F
    cond := by
      apply isSheaf_coherent_of_projective_of_comp F (CategoryTheory.forget A)
      rw [isSheaf_iff_preservesFiniteProducts_of_projective]
      exact ⟨fun _ ↦ inferInstance⟩ }

/--
The condensed object associated to a presheaf on `Profinite` which preserves finite products and
satisfies the equalizer condition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Varianta2fce032653a946e0fe45055a0bd15a23a155e2fa6a035b61e5114e934de5b9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Varianta2fce032653a946e0fe45055a0bd15a23a155e2fa6a035b61e5114e934de5b9b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a5d0af7ed54d1783bcb714a435a79b195738c23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
