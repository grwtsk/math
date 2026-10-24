# functorialityCounit'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d50dd1ceb0e4a29b9fad69d716785fad7af82ecff1be9f92d5777aaa00d2000",
  "kind": "def",
  "lexical_name": "functorialityCounit'",
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
  "slug": "functorialitycounit--ec5a98d0cd0e73a3260e2fa3",
  "source": {
    "blob": "fcd5c405348ac3aadd15a07ac60beae012f11538",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 193,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec5a98d0cd0e73a3260e2fa3dbb38dcc84c2c58e7af0704c34d81bd4cacacb68",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d50dd1ceb0e4a29b9fad69d716785fad7af82ecff1be9f92d5777aaa00d2000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorialityCounit' :
  Cones.functoriality _ G ⋙ functorialityLeftAdjoint adj K ⟶ 𝟭 (Cone K) where
    app c := { Hom := adj.counit.app c.pt }
#align category_theory.adjunction.functoriality_counit' CategoryTheory.Adjunction.functorialityCounit'

/-- The functor `Cones.functoriality K G : Cone K ⥤ Cone (K ⋙ G)` is a right adjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant51a20b23707eedf0df2eef9e81af844518f869dd95a15b76d113a6cca862e3d3.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcd5c405348ac3aadd15a07ac60beae012f11538` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
