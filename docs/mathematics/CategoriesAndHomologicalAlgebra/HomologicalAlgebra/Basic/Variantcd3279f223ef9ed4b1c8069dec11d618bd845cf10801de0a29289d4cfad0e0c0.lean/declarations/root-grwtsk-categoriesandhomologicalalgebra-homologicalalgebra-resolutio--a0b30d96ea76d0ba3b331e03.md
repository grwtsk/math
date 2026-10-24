# _root_.GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ResolutionX.Variant894d44893c995096ce5b1b83f3cbe9d3e35b56b86bf0c6944fceaac36ee13110.continuousCohomology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0dfb5ed35353a399615eb6c5b78083ef6b1d68ab1219383f3ac5f76d57ac9e97",
  "kind": "abbrev",
  "lexical_name": "_root_.GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ResolutionX.Variant894d44893c995096ce5b1b83f3cbe9d3e35b56b86bf0c6944fceaac36ee13110.continuousCohomology",
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
  "slug": "root-grwtsk-categoriesandhomologicalalgebra-homologicalalgebra-resolutio--a0b30d96ea76d0ba3b331e03",
  "source": {
    "blob": "d4cd913b7b0f976cbebbb46a427942ea8d10e7d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 139,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantcd3279f223ef9ed4b1c8069dec11d618bd845cf10801de0a29289d4cfad0e0c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0b30d96ea76d0ba3b331e03e4b6a0e29a9df871b2a60c03eaadfd7d0901e0d2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantcd3279f223ef9ed4b1c8069dec11d618bd845cf10801de0a29289d4cfad0e0c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0dfb5ed35353a399615eb6c5b78083ef6b1d68ab1219383f3ac5f76d57ac9e97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev _root_.GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ResolutionX.Variant894d44893c995096ce5b1b83f3cbe9d3e35b56b86bf0c6944fceaac36ee13110.continuousCohomology (n : ℕ) (A : TopRep k G) :
    TopModuleCat k := (homogeneousCochains A).homology n

end TopRep

namespace ContinuousCohomology

open TopRep

/-- The `n`-cocycles `Zⁿ(G, A)` of a `k`-linear `G`-representation `A`, i.e. the kernel of the
`n`th differential in the complex of homogeneous cochains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantcd3279f223ef9ed4b1c8069dec11d618bd845cf10801de0a29289d4cfad0e0c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantcd3279f223ef9ed4b1c8069dec11d618bd845cf10801de0a29289d4cfad0e0c0.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4cd913b7b0f976cbebbb46a427942ea8d10e7d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
