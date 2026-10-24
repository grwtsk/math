# invHomId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b99a3485d6252cb9e8657630b1f4a3f368173a86e128426052d5fd0b74dd9e3e",
  "kind": "def",
  "lexical_name": "invHomId",
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
  "slug": "invhomid--dd0e0e5f3e37bfc7a6fe7a05",
  "source": {
    "blob": "188d3865b1ff0472c16818406bb304fa74035dad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 174,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentIso/Variant3a2d331cdc2351e97920a0eb58f568d5649bab31475bce270a1f0e5d321591eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd0e0e5f3e37bfc7a6fe7a0570e34a8ad4965097f32f57882d33e81071e12f93",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentIso/Variant3a2d331cdc2351e97920a0eb58f568d5649bab31475bce270a1f0e5d321591eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b99a3485d6252cb9e8657630b1f4a3f368173a86e128426052d5fd0b74dd9e3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invHomId : Edge.CompStruct.{u} inv hom (Edge.id x₁) where
  simplex := ComposableArrows.mk₂ WalkingIso.iso.inv WalkingIso.iso.hom
  d₂ := ComposableArrows.ext₁ rfl rfl rfl
  d₀ := ComposableArrows.ext₁ rfl rfl rfl
  d₁ := ComposableArrows.ext₁ rfl rfl rfl

/-- The forwards edge of `coherentIso` has an inverse. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentIso/Variant3a2d331cdc2351e97920a0eb58f568d5649bab31475bce270a1f0e5d321591eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentIso/Variant3a2d331cdc2351e97920a0eb58f568d5649bab31475bce270a1f0e5d321591eb.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `188d3865b1ff0472c16818406bb304fa74035dad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
