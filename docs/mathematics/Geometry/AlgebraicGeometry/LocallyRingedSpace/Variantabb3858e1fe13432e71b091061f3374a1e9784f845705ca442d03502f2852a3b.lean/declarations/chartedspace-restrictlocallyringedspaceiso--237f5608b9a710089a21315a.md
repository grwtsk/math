# ChartedSpace.restrictLocallyRingedSpaceIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0ef1697dd0f6f66a646fa8531c9a4f41cd0ea2f3362958c7e5eee780da8ce80",
  "kind": "def",
  "lexical_name": "ChartedSpace.restrictLocallyRingedSpaceIso",
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
  "slug": "chartedspace-restrictlocallyringedspaceiso--237f5608b9a710089a21315a",
  "source": {
    "blob": "ada5df6ed732fe48a4068fd8d0e7e01bd3b74db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 236,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantabb3858e1fe13432e71b091061f3374a1e9784f845705ca442d03502f2852a3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:237f5608b9a710089a21315aee7457b99d4920423b22e4ee9bcfafc3f76cb8e6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantabb3858e1fe13432e71b091061f3374a1e9784f845705ca442d03502f2852a3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0ef1697dd0f6f66a646fa8531c9a4f41cd0ea2f3362958c7e5eee780da8ce80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ChartedSpace.restrictLocallyRingedSpaceIso (U : Opens M) :
    (locallyRingedSpace IM M).restrict U.isOpenEmbedding ≅
      locallyRingedSpace IM U where
  hom := LocallyRingedSpace.IsOpenImmersion.lift
    (locallyRingedSpaceMap _ contMDiff_subtype_val)
    (LocallyRingedSpace.ofRestrict _ _) (by rfl)
  inv := LocallyRingedSpace.IsOpenImmersion.lift
    ((locallyRingedSpace IM M).ofRestrict U.isOpenEmbedding)
    (locallyRingedSpaceMap _ contMDiff_subtype_val) (by rfl)
  hom_inv_id := by
    simp [← cancel_mono ((locallyRingedSpace IM M).ofRestrict U.isOpenEmbedding)]
  inv_hom_id := by
    simp [← cancel_mono (locallyRingedSpaceMap _ contMDiff_subtype_val)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantabb3858e1fe13432e71b091061f3374a1e9784f845705ca442d03502f2852a3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantabb3858e1fe13432e71b091061f3374a1e9784f845705ca442d03502f2852a3b.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ada5df6ed732fe48a4068fd8d0e7e01bd3b74db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
