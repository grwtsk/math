# coeqHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a78eda8da95809ee5c23240836ef21ebc2f03f88e43b16c0abe6d5b4917b9e7",
  "kind": "def",
  "lexical_name": "coeqHom",
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
  "slug": "coeqhom--1b403c3f3b915b8b6c76c54a",
  "source": {
    "blob": "2d130e88eae454a3b1310ab9d0ce6ebf7f58630b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd946fda134ab6fdbf29ea4c5401fa50046efb928b6202df2ece503b464fb2201.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b403c3f3b915b8b6c76c54afff05d76162b858bdf1c04cc5027c87c1c98e4bb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd946fda134ab6fdbf29ea4c5401fa50046efb928b6202df2ece503b464fb2201.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a78eda8da95809ee5c23240836ef21ebc2f03f88e43b16c0abe6d5b4917b9e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coeqHom {j j' : C} (f f' : j ⟶ j') : j' ⟶ coeq f f' :=
  (IsFilteredOrEmpty.cocone_maps f f').choose_spec.choose
#align category_theory.is_filtered.coeq_hom CategoryTheory.IsFiltered.coeqHom

-- porting note: the simp tag has been removed as the linter complained
/-- `coeq_condition f f'`, for morphisms `f f' : j ⟶ j'`, is the proof that
`f ≫ coeqHom f f' = f' ≫ coeqHom f f'`.
-/
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd946fda134ab6fdbf29ea4c5401fa50046efb928b6202df2ece503b464fb2201.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd946fda134ab6fdbf29ea4c5401fa50046efb928b6202df2ece503b464fb2201.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d130e88eae454a3b1310ab9d0ce6ebf7f58630b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
