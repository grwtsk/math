# ShiftMkCore.shiftFunctorAdd_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee271249d13116c05674a769ffdfbb16f79a4f95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3beec4a-55b7-087f-686f-c65d5c910671",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2301380-c7a0-30ce-43a3-f2f693054dd5",
  "kind": "lemma",
  "lexical_name": "ShiftMkCore.shiftFunctorAdd_eq",
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
  "slug": "shiftmkcore-shiftfunctoradd-eq--667f202ddc5b5db491bb71fa",
  "source": {
    "blob": "ee271249d13116c05674a769ffdfbb16f79a4f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 209,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:667f202ddc5b5db491bb71fa42cf4284552ae9b05b22b0ac6204fb063d8ea5f7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2301380-c7a0-30ce-43a3-f2f693054dd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ShiftMkCore.shiftFunctorAdd_eq (h : ShiftMkCore C A) (a b : A) :
    letI := hasShiftMk C A h;
    shiftFunctorAdd C a b = h.add a b := by
  letI := hasShiftMk C A h
  change (shiftFunctorAdd C a b).symm.symm = (h.add a b).symm.symm
  congr 1
  ext
  rfl
#align category_theory.shift_mk_core.shift_functor_add_eq CategoryTheory.ShiftMkCore.shiftFunctorAdd_eq

set_option quotPrecheck false in
/-- shifting an object `X` by `n` is obtained by the notation `X⟦n⟧` -/
notation -- Any better notational suggestions?
X "⟦" n "⟧" => (shiftFunctor _ n).obj X

set_option quotPrecheck false in
/-- shifting a morphism `f` by `n` is obtained by the notation `f⟦n⟧'` -/
notation f "⟦" n "⟧'" => (shiftFunctor _ n).map f

variable (C)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee271249d13116c05674a769ffdfbb16f79a4f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
