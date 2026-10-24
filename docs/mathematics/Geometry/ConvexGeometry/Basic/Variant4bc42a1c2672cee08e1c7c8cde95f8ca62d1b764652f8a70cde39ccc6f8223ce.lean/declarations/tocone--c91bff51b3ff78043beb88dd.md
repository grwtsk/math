# toCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01f4a349c2da4677ef906a8313cde04ac64aa694858f9a879f23c559fcf783f3",
  "kind": "def",
  "lexical_name": "toCone",
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
  "slug": "tocone--c91bff51b3ff78043beb88dd",
  "source": {
    "blob": "f25b233f3b80e72774972abb137702f61d24401d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 568,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant4bc42a1c2672cee08e1c7c8cde95f8ca62d1b764652f8a70cde39ccc6f8223ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c91bff51b3ff78043beb88dd2d2f28606c2c7fff0c1e0e810cd9e8fececdc6b1",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variant4bc42a1c2672cee08e1c7c8cde95f8ca62d1b764652f8a70cde39ccc6f8223ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01f4a349c2da4677ef906a8313cde04ac64aa694858f9a879f23c559fcf783f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCone (s : Set E) (hs : Convex 𝕜 s) : ConvexCone 𝕜 E := by
  apply ConvexCone.mk (⋃ (c : 𝕜) (_ : 0 < c), c • s) <;> simp only [mem_iUnion, mem_smul_set]
  · rintro c c_pos _ ⟨c', c'_pos, x, hx, rfl⟩
    exact ⟨c * c', mul_pos c_pos c'_pos, x, hx, (smul_smul _ _ _).symm⟩
  · rintro _ ⟨cx, cx_pos, x, hx, rfl⟩ _ ⟨cy, cy_pos, y, hy, rfl⟩
    have : 0 < cx + cy := add_pos cx_pos cy_pos
    refine ⟨_, this, _, convex_iff_div.1 hs hx hy cx_pos.le cy_pos.le this, ?_⟩
    simp only [smul_add, smul_smul, mul_div_assoc', mul_div_cancel_left₀ _ this.ne']

variable {s : Set E} (hs : Convex 𝕜 s) {x : E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variant4bc42a1c2672cee08e1c7c8cde95f8ca62d1b764652f8a70cde39ccc6f8223ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variant4bc42a1c2672cee08e1c7c8cde95f8ca62d1b764652f8a70cde39ccc6f8223ce.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f25b233f3b80e72774972abb137702f61d24401d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
