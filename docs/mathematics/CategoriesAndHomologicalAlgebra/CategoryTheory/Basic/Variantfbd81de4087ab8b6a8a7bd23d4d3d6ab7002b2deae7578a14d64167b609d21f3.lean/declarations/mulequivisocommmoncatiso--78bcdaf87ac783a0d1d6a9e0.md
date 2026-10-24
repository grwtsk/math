# mulEquivIsoCommMonCatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22527c5c42cc5e9b1ab9b1d9452afc9988bb78f323473c8923e266f5064257a2",
  "kind": "def",
  "lexical_name": "mulEquivIsoCommMonCatIso",
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
  "slug": "mulequivisocommmoncatiso--78bcdaf87ac783a0d1d6a9e0",
  "source": {
    "blob": "3fb910e24afe996a8dac7c1f14ac6e0594428ae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 388,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78bcdaf87ac783a0d1d6a9e09af969c328368e2d2647be68546aa667ed1cf656",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22527c5c42cc5e9b1ab9b1d9452afc9988bb78f323473c8923e266f5064257a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulEquivIsoCommMonCatIso {X Y : Type u} [CommMonoid X] [CommMonoid Y] :
    X ≃* Y ≅ CommMonCat.of X ≅ CommMonCat.of Y
    where
  hom e := e.toCommMonCatIso
  inv i := i.commMonCatIsoToMulEquiv
set_option linter.uppercaseLean3 false in
#align mul_equiv_iso_CommMon_iso mulEquivIsoCommMonCatIso
set_option linter.uppercaseLean3 false in
#align add_equiv_iso_AddCommMon_iso addEquivIsoAddCommMonCatIso

/-- additive equivalences between `AddCommMonoid`s are
the same as (isomorphic to) isomorphisms in `AddCommMonCat` -/
add_decl_doc addEquivIsoAddCommMonCatIso

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb910e24afe996a8dac7c1f14ac6e0594428ae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
