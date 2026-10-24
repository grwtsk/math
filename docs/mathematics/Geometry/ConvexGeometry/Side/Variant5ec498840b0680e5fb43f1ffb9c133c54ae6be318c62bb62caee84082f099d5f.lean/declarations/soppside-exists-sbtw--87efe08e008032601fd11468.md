# SOppSide.exists_sbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f64a10fa-2491-ca00-f50b-6aa80641cd62",
  "kind": "theorem",
  "lexical_name": "SOppSide.exists_sbtw",
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
  "slug": "soppside-exists-sbtw--87efe08e008032601fd11468",
  "source": {
    "blob": "57630cbda5d143c6bb8150def59664c519757323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 652,
    "line": 644,
    "path": "GRWTSK/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87efe08e008032601fd114684e8cd9ae3c6bb8314c061ce34ee4ff4cd8c6832d",
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

Occurrence: `result:f64a10fa-2491-ca00-f50b-6aa80641cd62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–652.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SOppSide.exists_sbtw {s : AffineSubspace R P} {x y : P} (h : s.SOppSide x y) :
    ∃ p ∈ s, Sbtw R x p y := by
  obtain ⟨p, hp, hw⟩ := wOppSide_iff_exists_wbtw.1 h.wOppSide
  refine ⟨p, hp, hw, ?_, ?_⟩
  · rintro rfl
    exact h.2.1 hp
  · rintro rfl
    exact h.2.2 hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57630cbda5d143c6bb8150def59664c519757323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
