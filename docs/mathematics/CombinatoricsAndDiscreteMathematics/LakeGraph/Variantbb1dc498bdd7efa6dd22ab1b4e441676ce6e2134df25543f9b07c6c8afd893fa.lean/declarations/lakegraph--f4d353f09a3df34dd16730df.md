# LakeGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:534648eeaa2e5422570d247669e1a742af071cb83a88868d0b320e34e51ab6e3",
  "kind": "structure",
  "lexical_name": "LakeGraph",
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
  "slug": "lakegraph--f4d353f09a3df34dd16730df",
  "source": {
    "blob": "7f28a8a3de642c423b8dfd112633c85fe0617e5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LakeGraph/Variantbb1dc498bdd7efa6dd22ab1b4e441676ce6e2134df25543f9b07c6c8afd893fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4d353f09a3df34dd16730dff99141ed0a2bcf529273f5d2618366e1a8d4bab4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LakeGraph/Variantbb1dc498bdd7efa6dd22ab1b4e441676ce6e2134df25543f9b07c6c8afd893fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:534648eeaa2e5422570d247669e1a742af071cb83a88868d0b320e34e51ab6e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LakeGraph where
  packages : Finset LakePackageNode
  edges : Finset LakeDependencyEdge
  closed :
    ∀ edge ∈ edges,
      (∃ package ∈ packages, package.packageId = edge.consumer) ∧
      (∃ package ∈ packages, package.packageId = edge.dependency)
  graphDigest : Digest

end Mathematics.Toolchain
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LakeGraph/Variantbb1dc498bdd7efa6dd22ab1b4e441676ce6e2134df25543f9b07c6c8afd893fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LakeGraph/Variantbb1dc498bdd7efa6dd22ab1b4e441676ce6e2134df25543f9b07c6c8afd893fa.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f28a8a3de642c423b8dfd112633c85fe0617e5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
