# inducedFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32c93aa1ce1fb4b10391cd6ee169210f761715b3c75713919c5991902e77d9ea",
  "kind": "def",
  "lexical_name": "inducedFunctor",
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
  "slug": "inducedfunctor--9370a5f8eb90644af69a3509",
  "source": {
    "blob": "6d4f872a4541d98c3586765805e53e7ee678bd71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9370a5f8eb90644af69a3509979849be1969da3c067eb9c1fd517648188834b7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32c93aa1ce1fb4b10391cd6ee169210f761715b3c75713919c5991902e77d9ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inducedFunctor : Fib p S ⥤ Fiber p S :=
  Fiber.inducedFunctor (comp_const S)

/-- The natural transformation `ι S ≅ (inducedFunctor p S) ⋙ (fiberInclusion p S)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d4f872a4541d98c3586765805e53e7ee678bd71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
