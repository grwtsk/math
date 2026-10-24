# nerveFunctor₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6954d98725876d81939d87d003ec1a4f60f82e48dfbc4dd29136e61162343fd",
  "kind": "def",
  "lexical_name": "nerveFunctor₂",
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
  "slug": "nervefunctor--18ea68484df5d3110f9e88f2",
  "source": {
    "blob": "4315185d264e1eef5e7f3775c9182262d4fc5810",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 252,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantaa2f1792c22deebf27e83e8d52fde4e28c038f3bda1662eae3237e7bec4513bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18ea68484df5d3110f9e88f23b4270a20db968c9cb104fae486e84398be0204f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantaa2f1792c22deebf27e83e8d52fde4e28c038f3bda1662eae3237e7bec4513bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6954d98725876d81939d87d003ec1a4f60f82e48dfbc4dd29136e61162343fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nerveFunctor₂ : Cat.{v, u} ⥤ SSet.Truncated 2 := nerveFunctor ⋙ truncation 2

/-- The natural isomorphism between `nerveFunctor` and `nerveFunctor₂ ⋙ Truncated.cosk 2` whose
components `nerve C ≅ (Truncated.cosk 2).obj (nerveFunctor₂.obj C)` shows that nerves of categories
are 2-coskeletal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantaa2f1792c22deebf27e83e8d52fde4e28c038f3bda1662eae3237e7bec4513bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantaa2f1792c22deebf27e83e8d52fde4e28c038f3bda1662eae3237e7bec4513bc.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4315185d264e1eef5e7f3775c9182262d4fc5810` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
