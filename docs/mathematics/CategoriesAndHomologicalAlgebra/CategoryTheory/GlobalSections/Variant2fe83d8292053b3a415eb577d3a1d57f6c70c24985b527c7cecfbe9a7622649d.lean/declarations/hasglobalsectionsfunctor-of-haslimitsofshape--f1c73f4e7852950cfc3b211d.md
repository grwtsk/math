# hasGlobalSectionsFunctor_of_hasLimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27a4c260ea74fabe4ffcfd811fcae69e4e2cf32a5d2025708ed6d0ca9e7ff088",
  "kind": "instance",
  "lexical_name": "hasGlobalSectionsFunctor_of_hasLimitsOfShape",
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
  "slug": "hasglobalsectionsfunctor-of-haslimitsofshape--f1c73f4e7852950cfc3b211d",
  "source": {
    "blob": "1087644bba67d500371bf11e5e2edeb3f39b96a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1c73f4e7852950cfc3b211d4ae0a3ab6253e301d13c6105f70289b2675f0c77",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27a4c260ea74fabe4ffcfd811fcae69e4e2cf32a5d2025708ed6d0ca9e7ff088`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasGlobalSectionsFunctor_of_hasLimitsOfShape [HasLimitsOfShape Cᵒᵖ A] :
    HasGlobalSectionsFunctor J A :=
  ⟨sheafToPresheaf J A ⋙ lim, ⟨constLimAdj.comp (sheafificationAdjunction J A)⟩⟩

/-- Global sections of sheaves are naturally isomorphic to the limits of the underlying presheaves.
Note that while `HasLimitsOfShape Cᵒᵖ A` is needed here to talk about `lim` as a functor, global
sections are still limits without it - see `Sheaf.isLimitConeΓ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1087644bba67d500371bf11e5e2edeb3f39b96a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
