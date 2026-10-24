# inverseImage_opEquivalence_inverse_trW_inverseImage_ι_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a615e6a12a50a7150c4611b1a585d5c408236b5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70ecf1574929e5706f16e8d56fca2347f3e07b5e75dd69d4a965bafdfd9a9882.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac1c740e-f99e-4329-5ce8-8bbafdc17dd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ca56cda-3826-04a7-b84a-823024f21e4b",
  "kind": "lemma",
  "lexical_name": "inverseImage_opEquivalence_inverse_trW_inverseImage_ι_op",
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
  "slug": "inverseimage-opequivalence-inverse-trw-inverseimage-op--04c9dddcc5020af3f2744ddb",
  "source": {
    "blob": "a615e6a12a50a7150c4611b1a585d5c408236b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 195,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variant70ecf1574929e5706f16e8d56fca2347f3e07b5e75dd69d4a965bafdfd9a9882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04c9dddcc5020af3f2744ddb6479ec1b6c293eff4004d9fddaf928b60119d177",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variant70ecf1574929e5706f16e8d56fca2347f3e07b5e75dd69d4a965bafdfd9a9882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ca56cda-3826-04a7-b84a-823024f21e4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inverseImage_opEquivalence_inverse_trW_inverseImage_ι_op [A.IsTriangulated]
    [B.IsTriangulated] [B.IsClosedUnderIsomorphisms] :
    (B.op.inverseImage A.op.ι).trW.inverseImage A.opEquivalence.inverse =
      (B.inverseImage A.ι).op.trW := by
  ext ⟨X₁⟩ ⟨X₂⟩ a
  simp [trW_op, trW_inverseImage_ι_iff, ← op_inf]

variable [IsTriangulated C] [A.IsTriangulated] [B.IsTriangulated] [B.IsClosedUnderIsomorphisms]

section

variable [A.IsVerdierRightLocalizing B]
  (L₁ : A.FullSubcategory ⥤ D₁) (L₂ : C ⥤ D₂)
  [L₁.IsLocalization (B.inverseImage A.ι).trW] [L₂.IsLocalization B.trW]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variant70ecf1574929e5706f16e8d56fca2347f3e07b5e75dd69d4a965bafdfd9a9882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variant70ecf1574929e5706f16e8d56fca2347f3e07b5e75dd69d4a965bafdfd9a9882.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a615e6a12a50a7150c4611b1a585d5c408236b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
