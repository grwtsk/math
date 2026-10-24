# gluedSection_isAmalgamation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2a1bcc0622e29c7d2f80c77563d756e8d41d1dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f3bf7a9-4446-6311-d5b2-7f3e04c024e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95b5cbb7-5e9f-b120-484e-3a7a3cea08b0",
  "kind": "theorem",
  "lexical_name": "gluedSection_isAmalgamation",
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
  "slug": "gluedsection-isamalgamation--b0f2a5804fbbe4fb72f6db8f",
  "source": {
    "blob": "c2a1bcc0622e29c7d2f80c77563d756e8d41d1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 255,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0f2a5804fbbe4fb72f6db8f29f10f633100f22923d69beefeea3bdbb47d8c8a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95b5cbb7-5e9f-b120-484e-3a7a3cea08b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gluedSection_isAmalgamation : x.IsAmalgamation (gluedSection hu ℱ hS hx) := by
  intro V fV hV
  -- porting note: next line was `ext W`
  -- Now `ext` can't see that `ran` is defined as a limit.
  -- See https://github.com/leanprover-community/mathlib4/issues/5229
  refine limit.hom_ext (λ (W : StructuredArrow (op V) G.op) => ?_)
  simp only [Functor.comp_map, limit.lift_pre, coyoneda_obj_map, ran_obj_map, gluedSection]
  erw [limit.lift_π]
  symm
  convert helper hu ℱ hS hx _ (x fV hV) _ _ using 1
  intro V' fV' hV'
  convert hx fV' (𝟙 _) hV hV' (by rw [Category.id_comp])
  simp only [op_id, FunctorToTypes.map_id_apply]
set_option linter.uppercaseLean3 false in
#align category_theory.Ran_is_sheaf_of_cover_lifting.glued_section_is_amalgamation CategoryTheory.RanIsSheafOfCoverLifting.gluedSection_isAmalgamation

/-- Verify that the amalgamation is indeed unique. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2a1bcc0622e29c7d2f80c77563d756e8d41d1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
