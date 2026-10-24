# _root_.IsAdjoinRootMonic.mkOfPrimitiveElement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09736ba9c3289d49e7cda04ded2677f28ff69f63f8b77aad3c4fcf5e32efe7f4",
  "kind": "abbrev",
  "lexical_name": "_root_.IsAdjoinRootMonic.mkOfPrimitiveElement",
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
  "slug": "root-isadjoinrootmonic-mkofprimitiveelement--4a70db5c87df53598f924757",
  "source": {
    "blob": "1a48e2502d24d9469b08075dd030abe64a293090",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 731,
    "line": 724,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a70db5c87df53598f924757b8e969cb54c5a922f7242be14feb60e9eae85bce",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09736ba9c3289d49e7cda04ded2677f28ff69f63f8b77aad3c4fcf5e32efe7f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 724–731.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev _root_.IsAdjoinRootMonic.mkOfPrimitiveElement
    {α : E} (hα : IsIntegral F α) (hα₂ : F⟮α⟯ = ⊤) : IsAdjoinRootMonic E (minpoly F α) where
  __ := IsAdjoinRoot.mkOfPrimitiveElement hα hα₂
  monic := minpoly.monic hα

end IsAdjoinRoot

end Field
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.lean#L724).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a48e2502d24d9469b08075dd030abe64a293090` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
