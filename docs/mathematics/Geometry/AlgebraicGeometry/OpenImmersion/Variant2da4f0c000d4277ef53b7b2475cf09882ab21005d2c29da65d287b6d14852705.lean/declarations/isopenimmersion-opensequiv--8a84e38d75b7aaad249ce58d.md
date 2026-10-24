# IsOpenImmersion.opensEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:518772f12811b83da4e1736770ebfd13ee96d7544cac3982c9e74f3f9bf8369a",
  "kind": "def",
  "lexical_name": "IsOpenImmersion.opensEquiv",
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
  "slug": "isopenimmersion-opensequiv--8a84e38d75b7aaad249ce58d",
  "source": {
    "blob": "3b5a95cde2e52256787a5d77014cc6bb79cfb9d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 313,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a84e38d75b7aaad249ce58d030618723f4458fb7cc7bccfa7697508f2d3796b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:518772f12811b83da4e1736770ebfd13ee96d7544cac3982c9e74f3f9bf8369a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsOpenImmersion.opensEquiv {X Y : Scheme.{u}} (f : X ⟶ Y) [IsOpenImmersion f] :
    X.Opens ≃ { U : Y.Opens // U ≤ f.opensRange } where
  toFun U := ⟨f ''ᵁ U, Set.image_subset_range _ _⟩
  invFun U := f ⁻¹ᵁ U
  left_inv _ := Opens.ext (Set.preimage_image_eq _ f.isOpenEmbedding.injective)
  right_inv U := Subtype.ext (Opens.ext (Set.image_preimage_eq_of_subset U.2))

namespace Scheme

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b5a95cde2e52256787a5d77014cc6bb79cfb9d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
