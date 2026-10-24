# _root_.GRWTSK.Geometry.ConvexGeometry.WSameSide.Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.Function.Injective.wOppSide_map_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee1f1b89-1c21-b733-b8e5-f748d2ae4aa6",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Geometry.ConvexGeometry.WSameSide.Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.Function.Injective.wOppSide_map_iff",
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
  "slug": "root-grwtsk-geometry-convexgeometry-wsameside-variant9dfea142b1439de2ac2--df0a8ba5998cec3b32681772",
  "source": {
    "blob": "57630cbda5d143c6bb8150def59664c519757323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 110,
    "path": "GRWTSK/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df0a8ba5998cec3b326817725c0b0af2fd2e321e8f4c116bcd95d0b385d40cf9",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee1f1b89-1c21-b733-b8e5-f748d2ae4aa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Geometry.ConvexGeometry.WSameSide.Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.Function.Injective.wOppSide_map_iff {s : AffineSubspace R P} {x y : P}
    {f : P →ᵃ[R] P'} (hf : Function.Injective f) :
    (s.map f).WOppSide (f x) (f y) ↔ s.WOppSide x y := by
  refine ⟨fun h => ?_, fun h => h.map _⟩
  rcases h with ⟨fp₁, hfp₁, fp₂, hfp₂, h⟩
  rw [mem_map] at hfp₁ hfp₂
  rcases hfp₁ with ⟨p₁, hp₁, rfl⟩
  rcases hfp₂ with ⟨p₂, hp₂, rfl⟩
  refine ⟨p₁, hp₁, p₂, hp₂, ?_⟩
  simp_rw [← linearMap_vsub, (f.linear_injective_iff.2 hf).sameRay_map_iff] at h
  exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57630cbda5d143c6bb8150def59664c519757323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
