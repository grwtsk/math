# singleMapHomologicalComplex_hom_app_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1789f68d-d380-56f5-ddfd-00b4eb138e69",
  "kind": "theorem",
  "lexical_name": "singleMapHomologicalComplex_hom_app_self",
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
  "slug": "singlemaphomologicalcomplex-hom-app-self--d05b51cf0c9af1a09a9c953e",
  "source": {
    "blob": "4313636324d0a2fab5311e3b923471507f6cbfc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 276,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d05b51cf0c9af1a09a9c953e7193b9d0587e5366a55bf5d2e882338ac8b70a8a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1789f68d-d380-56f5-ddfd-00b4eb138e69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singleMapHomologicalComplex_hom_app_self (j : ι) (X : W₁) :
    ((singleMapHomologicalComplex F c j).hom.app X).f j =
      F.map (singleObjXSelf c j X).hom ≫ (singleObjXSelf c j (F.obj X)).inv := by
  simp [singleMapHomologicalComplex, singleObjXSelf, singleObjXIsoOfEq, eqToHom_map]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4313636324d0a2fab5311e3b923471507f6cbfc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
