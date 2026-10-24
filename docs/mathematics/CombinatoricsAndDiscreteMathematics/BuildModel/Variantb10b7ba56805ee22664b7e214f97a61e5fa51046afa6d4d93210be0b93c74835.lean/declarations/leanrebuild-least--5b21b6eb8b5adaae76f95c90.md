# leanRebuild_least

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8782d9af-5594-52ca-6246-366adfcf06ec",
  "kind": "theorem",
  "lexical_name": "leanRebuild_least",
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
  "slug": "leanrebuild-least--5b21b6eb8b5adaae76f95c90",
  "source": {
    "blob": "4725b712e93c6b1fdcdfaf4ce595bb56a38dea7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 183,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b21b6eb8b5adaae76f95c908000f44a84ef53e83eae581777fb17f21bce5b51",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8782d9af-5594-52ca-6246-366adfcf06ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leanRebuild_least
    {G : DependencyGraph}
    (changes : ChangeSet G)
    (S : Finset G.ProjectId)
    (hImpl : changes.implementationChangedSet ⊆ S)
    (hPub : dependentsClosure G changes.publicChangedSet ⊆ S) :
    leanRebuild changes ⊆ S :=
  Finset.union_subset hImpl hPub

namespace Tenant

/-- A tenant is operationally affected when its closure meets the rebuild set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4725b712e93c6b1fdcdfaf4ce595bb56a38dea7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
