# hasCoequalizer_of_common_section

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5a998eb-1769-aa6e-92f8-a4d98537e714",
  "kind": "theorem",
  "lexical_name": "hasCoequalizer_of_common_section",
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
  "slug": "hascoequalizer-of-common-section--4ab3a0b7498985779d5e1ae9",
  "source": {
    "blob": "79a872a233132bbe5306e111c17c69930954e06a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 160,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ab3a0b7498985779d5e1ae95761b23b4b318a2d27f7cb1a04036628c0fac677",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5a998eb-1769-aa6e-92f8-a4d98537e714`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasCoequalizer_of_common_section [HasReflexiveCoequalizers C] {A B : C} {f g : A ⟶ B}
    (r : B ⟶ A) (rf : r ≫ f = 𝟙 _) (rg : r ≫ g = 𝟙 _) : HasCoequalizer f g := by
  letI := IsReflexivePair.mk' r rf rg
  infer_instance
#align category_theory.limits.has_coequalizer_of_common_section CategoryTheory.Limits.hasCoequalizer_of_common_section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79a872a233132bbe5306e111c17c69930954e06a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
