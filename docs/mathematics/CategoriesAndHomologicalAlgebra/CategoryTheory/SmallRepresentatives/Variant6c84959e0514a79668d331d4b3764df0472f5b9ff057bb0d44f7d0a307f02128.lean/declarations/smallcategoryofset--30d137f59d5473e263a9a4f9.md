# smallCategoryOfSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:056851f132c11e825779888326484aa19a050cb96ec28a35cdac18f4a114485f",
  "kind": "def",
  "lexical_name": "smallCategoryOfSet",
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
  "slug": "smallcategoryofset--30d137f59d5473e263a9a4f9",
  "source": {
    "blob": "148521d5078d99d85c7656ebfefbc3ef587cf7b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30d137f59d5473e263a9a4f9b6d9e011f223fda1bbc587545a25ff53ff1b5902",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:056851f132c11e825779888326484aa19a050cb96ec28a35cdac18f4a114485f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def smallCategoryOfSet : SmallCategoryOfSet Ω where
  obj := h.obj
  hom := h.hom
  id X := h.homEquiv.symm (𝟙 _)
  comp f g := h.homEquiv.symm (h.homEquiv f ≫ h.homEquiv g)

set_option backward.isDefEq.respectTransparency.types false in
/-- Given `h : CoreSmallCategoryOfSet Ω C`, this is the
obvious functor `h.smallCategoryOfSet.obj ⥤ C`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `148521d5078d99d85c7656ebfefbc3ef587cf7b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
