# forgetImage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34c51a46ffa3c58948b060912725c0802b5f488c78c3cec1bb9e69a4023fee81",
  "kind": "def",
  "lexical_name": "forgetImage",
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
  "slug": "forgetimage--3495242086c1ef1a96b25ab8",
  "source": {
    "blob": "5b0c9b0e2ca6b55bbbb88761755b8b2286c89f75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 417,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3495242086c1ef1a96b25ab8db57f089579be03297ef907a13a73ff8b285d262",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34c51a46ffa3c58948b060912725c0802b5f488c78c3cec1bb9e69a4023fee81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forgetImage : forget X ⋙ image ≅ 𝟭 (MonoOver X) :=
  asIso (Adjunction.counit imageForgetAdj)

end Image

section Exists

variable [HasImages C]

/-- In the case where `f` is not a monomorphism but `C` has images,
we can still take the "forward map" under it, which agrees with `MonoOver.map f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb4ed0cdd1469ce204ade8e9f5d79ce1fb03c8e77ecaede5c721868e5e6a3b39c.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b0c9b0e2ca6b55bbbb88761755b8b2286c89f75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
