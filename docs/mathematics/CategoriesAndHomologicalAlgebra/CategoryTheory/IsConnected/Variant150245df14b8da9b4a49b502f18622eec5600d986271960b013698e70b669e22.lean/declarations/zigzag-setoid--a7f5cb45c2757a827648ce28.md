# Zigzag.setoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea86f51dac524a4d5fb66d640cec9903ee7d0d13e66bac3cd1738e73e39c7305",
  "kind": "def",
  "lexical_name": "Zigzag.setoid",
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
  "slug": "zigzag-setoid--a7f5cb45c2757a827648ce28",
  "source": {
    "blob": "36a222b3d352896e19a8297d987be96023f4dc24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 375,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant150245df14b8da9b4a49b502f18622eec5600d986271960b013698e70b669e22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7f5cb45c2757a827648ce2887d148dd78cf0a891319ca73d437865c5c7cb7a6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant150245df14b8da9b4a49b502f18622eec5600d986271960b013698e70b669e22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea86f51dac524a4d5fb66d640cec9903ee7d0d13e66bac3cd1738e73e39c7305`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Zigzag.setoid (J : Type u₂) [Category.{v₁} J] : Setoid J where
  r := Zigzag
  iseqv := zigzag_equivalence

/-- If there is a zigzag from `j₁` to `j₂`, then there is a zigzag from `F j₁` to
`F j₂` as long as `F` is a prefunctor.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant150245df14b8da9b4a49b502f18622eec5600d986271960b013698e70b669e22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant150245df14b8da9b4a49b502f18622eec5600d986271960b013698e70b669e22.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36a222b3d352896e19a8297d987be96023f4dc24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
