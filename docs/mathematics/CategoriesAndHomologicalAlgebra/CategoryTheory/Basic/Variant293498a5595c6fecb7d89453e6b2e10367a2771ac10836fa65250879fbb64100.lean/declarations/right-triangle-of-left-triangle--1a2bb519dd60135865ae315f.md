# right_triangle_of_left_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9c4d30c13e6e16172dc8d0858ee78542ef9cbad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:727b0188-50f0-fe72-c8b3-7c4ee3f36ca6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:158fde41-acd8-3fa9-74e6-da52620ebce0",
  "kind": "theorem",
  "lexical_name": "right_triangle_of_left_triangle",
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
  "slug": "right-triangle-of-left-triangle--1a2bb519dd60135865ae315f",
  "source": {
    "blob": "a9c4d30c13e6e16172dc8d0858ee78542ef9cbad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 201,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a2bb519dd60135865ae315fbd66232c36bf73351897f610569a246240a4cacf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:158fde41-acd8-3fa9-74e6-da52620ebce0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem right_triangle_of_left_triangle (h : leftZigzag η.hom ε.hom = (λ_ f).hom ≫ (ρ_ f).inv) :
    rightZigzag η.hom ε.hom = (ρ_ g).hom ≫ (λ_ g).inv := by
  rw [← cancel_epi (rightZigzag η.hom ε.hom ≫ (λ_ g).hom ≫ (ρ_ g).inv)]
  calc
    _ = rightZigzag η.hom ε.hom ⊗≫ rightZigzag η.hom ε.hom := by bicategory
    _ = rightZigzag η.hom ε.hom := rightZigzag_idempotent_of_left_triangle _ _ h
    _ = _ := by simp

/-- An auxiliary definition for `mkOfAdjointifyCounit`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c4d30c13e6e16172dc8d0858ee78542ef9cbad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
