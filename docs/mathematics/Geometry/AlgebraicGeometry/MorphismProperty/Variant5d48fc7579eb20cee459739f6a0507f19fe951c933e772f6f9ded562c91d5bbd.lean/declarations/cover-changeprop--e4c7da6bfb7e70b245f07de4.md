# Cover.changeProp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:606e432a11e9620d9880dc6494012271dd3ccc37768623f93f8cc714f345b80a",
  "kind": "def",
  "lexical_name": "Cover.changeProp",
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
  "slug": "cover-changeprop--e4c7da6bfb7e70b245f07de4",
  "source": {
    "blob": "2bef7487fffea6a2e187bffba3447b36efc4a716",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4c7da6bfb7e70b245f07de45e444fffd6ad33b6ce95bd697a5839b4c6f04038",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:606e432a11e9620d9880dc6494012271dd3ccc37768623f93f8cc714f345b80a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cover.changeProp (Q : MorphismProperty Scheme.{u}) (𝒰 : X.Cover P) (h : ∀ j, Q (𝒰.map j)) :
    X.Cover Q where
  J := 𝒰.J
  obj := 𝒰.obj
  map := 𝒰.map
  f := 𝒰.f
  covers := 𝒰.covers
  map_prop := h

/-- Given a `P`-cover `{ Uᵢ }` of `X`, and for each `Uᵢ` a `P`-cover, we may combine these
covers to form a `P`-cover of `X`. -/
@[simps! J obj map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bef7487fffea6a2e187bffba3447b36efc4a716` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
