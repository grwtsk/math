# IsKernelPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:018ff0fb236432c49f93a4150db5aa547051ec49b4b60710b6a7c962cd31280e",
  "kind": "abbrev",
  "lexical_name": "IsKernelPair",
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
  "slug": "iskernelpair--83a9c781c56a95b29b042a71",
  "source": {
    "blob": "fc72d8a6b155c3fed940cce4bca724aa389b6ce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83a9c781c56a95b29b042a71fe2a6f74cd999c4702886fa33ef3510e01be85f6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:018ff0fb236432c49f93a4150db5aa547051ec49b4b60710b6a7c962cd31280e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev IsKernelPair :=
  IsPullback a b f f
#align category_theory.is_kernel_pair CategoryTheory.IsKernelPair

namespace IsKernelPair

/-- The data expressing that `(a, b)` is a kernel pair is subsingleton. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc72d8a6b155c3fed940cce4bca724aa389b6ce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
