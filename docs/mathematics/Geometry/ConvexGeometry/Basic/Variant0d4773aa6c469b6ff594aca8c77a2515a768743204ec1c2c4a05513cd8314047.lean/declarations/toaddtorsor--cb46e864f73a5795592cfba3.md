# toAddTorsor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b924cd252b43538cd99c00c99e05289c330526acdc4d4eb0778a330f200c1441",
  "kind": "abbrev",
  "lexical_name": "toAddTorsor",
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
  "slug": "toaddtorsor--cb46e864f73a5795592cfba3",
  "source": {
    "blob": "64f0f720776871fe16dbdb8efbc65369b3c8789f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 72,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant0d4773aa6c469b6ff594aca8c77a2515a768743204ec1c2c4a05513cd8314047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb46e864f73a5795592cfba3d2b8d297ecb00ab4279b2e65bcf061990dd1f119",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variant0d4773aa6c469b6ff594aca8c77a2515a768743204ec1c2c4a05513cd8314047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b924cd252b43538cd99c00c99e05289c330526acdc4d4eb0778a330f200c1441`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev toAddTorsor (s : AffineSubspace k P) [Nonempty s] : AddTorsor s.direction s where
  vadd a b := ⟨(a : V) +ᵥ (b : P), vadd_mem_of_mem_direction a.2 b.2⟩
  zero_vadd := fun a => by
    ext
    exact zero_vadd _ _
  add_vadd a b c := by
    ext
    apply add_vadd
  vsub a b := ⟨(a : P) -ᵥ (b : P), (vsub_left_mem_direction_iff_mem a.2 _).mpr b.2⟩
  vsub_vadd' a b := by
    ext
    apply AddTorsor.vsub_vadd'
  vadd_vsub' a b := by
    ext
    apply AddTorsor.vadd_vsub'

attribute [local instance] toAddTorsor

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variant0d4773aa6c469b6ff594aca8c77a2515a768743204ec1c2c4a05513cd8314047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variant0d4773aa6c469b6ff594aca8c77a2515a768743204ec1c2c4a05513cd8314047.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64f0f720776871fe16dbdb8efbc65369b3c8789f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
