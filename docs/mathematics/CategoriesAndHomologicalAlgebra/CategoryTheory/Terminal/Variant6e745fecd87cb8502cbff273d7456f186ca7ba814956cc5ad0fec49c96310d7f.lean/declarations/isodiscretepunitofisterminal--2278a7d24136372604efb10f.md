# isoDiscretePUnitOfIsTerminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e59e2e40d6e1fa89b66184c07e377911d704d18589ea8aa29bf5a3110c3847b",
  "kind": "def",
  "lexical_name": "isoDiscretePUnitOfIsTerminal",
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
  "slug": "isodiscretepunitofisterminal--2278a7d24136372604efb10f",
  "source": {
    "blob": "304b05888772c45f451092a00060790dccde85b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant6e745fecd87cb8502cbff273d7456f186ca7ba814956cc5ad0fec49c96310d7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2278a7d24136372604efb10f7816d22891cd1d3224dd3ecf58ac9047e42c6ef4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant6e745fecd87cb8502cbff273d7456f186ca7ba814956cc5ad0fec49c96310d7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e59e2e40d6e1fa89b66184c07e377911d704d18589ea8aa29bf5a3110c3847b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoDiscretePUnitOfIsTerminal {T : Type u} [Category.{u} T] (hT : IsTerminal (Cat.of T)) :
    Cat.of T ≅ Cat.of (Discrete PUnit) :=
  IsTerminal.uniqueUpToIso hT isTerminalDiscretePUnit

end CategoryTheory.Cat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant6e745fecd87cb8502cbff273d7456f186ca7ba814956cc5ad0fec49c96310d7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant6e745fecd87cb8502cbff273d7456f186ca7ba814956cc5ad0fec49c96310d7f.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `304b05888772c45f451092a00060790dccde85b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
