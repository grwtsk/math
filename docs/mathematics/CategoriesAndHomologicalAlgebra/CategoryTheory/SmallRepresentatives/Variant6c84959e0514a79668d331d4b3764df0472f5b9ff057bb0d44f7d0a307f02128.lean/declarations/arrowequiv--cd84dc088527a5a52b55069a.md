# arrowEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be72fdd4822c9eda3b0cee6c1c58b23f6374e2ce216e323fc572e63bf1962cc8",
  "kind": "def",
  "lexical_name": "arrowEquiv",
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
  "slug": "arrowequiv--cd84dc088527a5a52b55069a",
  "source": {
    "blob": "148521d5078d99d85c7656ebfefbc3ef587cf7b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 139,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd84dc088527a5a52b55069a340d2b5255008145bfa44e8707777f4e8461277a",
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

Occurrence: `declaration:be72fdd4822c9eda3b0cee6c1c58b23f6374e2ce216e323fc572e63bf1962cc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def arrowEquiv : Arrow h.smallCategoryOfSet.obj ≃ Arrow C :=
  Equiv.ofBijective h.functor.mapArrow.obj (by
    constructor
    · rintro ⟨x, y, f⟩ ⟨x', y', g⟩ hfg
      obtain rfl : x = x' := by simpa using! congr_arg Arrow.leftFunc.obj hfg
      obtain rfl : y = y' := by simpa using! congr_arg Arrow.rightFunc.obj hfg
      obtain rfl : f = g := by simpa [Arrow.mk_eq_mk_iff] using! hfg
      rfl
    · rintro ⟨X, Y, f⟩
      obtain ⟨x, rfl⟩ := h.objEquiv.surjective X
      obtain ⟨y, rfl⟩ := h.objEquiv.surjective Y
      obtain ⟨f, rfl⟩ := h.homEquiv.surjective f
      exact ⟨Arrow.mk f, rfl⟩)

end CoreSmallCategoryOfSet

namespace SmallCategoryOfSet

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `148521d5078d99d85c7656ebfefbc3ef587cf7b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
