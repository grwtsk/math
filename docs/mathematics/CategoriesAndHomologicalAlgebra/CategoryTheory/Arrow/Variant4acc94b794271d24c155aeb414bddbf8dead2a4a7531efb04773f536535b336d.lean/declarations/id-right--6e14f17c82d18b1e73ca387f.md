# id_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66b93001-c929-c513-a0cd-d23fb2931603",
  "kind": "theorem",
  "lexical_name": "id_right",
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
  "slug": "id-right--6e14f17c82d18b1e73ca387f",
  "source": {
    "blob": "ceedb382349c897e7cfdee926b72e47fde6c755e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variant4acc94b794271d24c155aeb414bddbf8dead2a4a7531efb04773f536535b336d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e14f17c82d18b1e73ca387fe3d6df4302c733659c6933451228b2e16196ae82",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variant4acc94b794271d24c155aeb414bddbf8dead2a4a7531efb04773f536535b336d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66b93001-c929-c513-a0cd-d23fb2931603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem id_right (f : Arrow T) : CommaMorphism.right (𝟙 f) = 𝟙 f.right :=
  rfl
#align category_theory.arrow.id_right CategoryTheory.Arrow.id_right

-- porting note: added to ease automation
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variant4acc94b794271d24c155aeb414bddbf8dead2a4a7531efb04773f536535b336d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variant4acc94b794271d24c155aeb414bddbf8dead2a4a7531efb04773f536535b336d.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceedb382349c897e7cfdee926b72e47fde6c755e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
