# instBraidedCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0207cfea2863300cd31a1151747ff36c31237136befbb63572008d7943cadc0",
  "kind": "instance",
  "lexical_name": "instBraidedCategory",
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
  "slug": "instbraidedcategory--9e9f71f5b5a4a044b88a899e",
  "source": {
    "blob": "32fbf35fad6a76392250f509ee3bd513c9e6ec77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e9f71f5b5a4a044b88a899ef1a3bc154258a4d447576eebb8fa0ce9a612a689",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0207cfea2863300cd31a1151747ff36c31237136befbb63572008d7943cadc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instBraidedCategory [BraidedCategory C] : BraidedCategory (Skeleton C) := by
  letI := braidedCategoryOfFullyFaithful
    (Monoidal.equivalenceTransported (skeletonEquivalence C).symm).inverse
  exact this

/--
The skeleton of a braided monoidal category can be viewed as a commutative monoid, where the
multiplication is given by the tensor product, and satisfies the monoid axioms since it is a
skeleton.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fbf35fad6a76392250f509ee3bd513c9e6ec77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
