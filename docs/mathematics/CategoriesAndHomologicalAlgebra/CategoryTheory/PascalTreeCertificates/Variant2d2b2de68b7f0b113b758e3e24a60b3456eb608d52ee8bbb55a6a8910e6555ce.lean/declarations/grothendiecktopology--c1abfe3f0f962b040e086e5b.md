# GrothendieckTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aae21176c1f28750afa36deba862feb97c2bb4228dc7661b95f47859f7f65933",
  "kind": "structure",
  "lexical_name": "GrothendieckTopology",
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
  "slug": "grothendiecktopology--c1abfe3f0f962b040e086e5b",
  "source": {
    "blob": "b1f7516b2f852be84b0b23e71bbb1e534faf7105",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PascalTreeCertificates/Variant2d2b2de68b7f0b113b758e3e24a60b3456eb608d52ee8bbb55a6a8910e6555ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1abfe3f0f962b040e086e5b0f762beb2b971d5867c0d19eeeafd803d943a854",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PascalTreeCertificates/Variant2d2b2de68b7f0b113b758e3e24a60b3456eb608d52ee8bbb55a6a8910e6555ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aae21176c1f28750afa36deba862feb97c2bb4228dc7661b95f47859f7f65933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GrothendieckTopology (C : SmallCategory.{u, v}) where
  covers : (X : C.Obj) → Sieve C X → Prop
  topMem : (X : C.Obj) → covers X (Sieve.top C X)
  pullbackMem : {X Y : C.Obj} → (S : Sieve C X) →
    covers X S → (f : C.Hom Y X) → covers Y (Sieve.pullback S f)
  transitive : {X : C.Obj} → (S R : Sieve C X) → covers X S →
    ((Y : C.Obj) → (f : C.Hom Y X) → S.arrows f →
      covers Y (Sieve.pullback R f)) → covers X R

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PascalTreeCertificates/Variant2d2b2de68b7f0b113b758e3e24a60b3456eb608d52ee8bbb55a6a8910e6555ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PascalTreeCertificates/Variant2d2b2de68b7f0b113b758e3e24a60b3456eb608d52ee8bbb55a6a8910e6555ce.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1f7516b2f852be84b0b23e71bbb1e534faf7105` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
