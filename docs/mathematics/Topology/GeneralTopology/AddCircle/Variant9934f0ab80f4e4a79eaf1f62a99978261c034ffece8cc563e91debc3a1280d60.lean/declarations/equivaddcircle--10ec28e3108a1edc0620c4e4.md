# equivAddCircle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d562fe8be6283774ea7e7ec453e7e0e63f888725967161d1ee08cf0ceceb185",
  "kind": "def",
  "lexical_name": "equivAddCircle",
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
  "slug": "equivaddcircle--10ec28e3108a1edc0620c4e4",
  "source": {
    "blob": "d10558eef48b083c55a8d9a227c6084d37f1e92a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 323,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10ec28e3108a1edc0620c4e4225c0c55b404371a850a7abef4ab8a1cefd5f83f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d562fe8be6283774ea7e7ec453e7e0e63f888725967161d1ee08cf0ceceb185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivAddCircle (hp : p ≠ 0) (hq : q ≠ 0) : AddCircle p ≃+ AddCircle q :=
  QuotientAddGroup.congr _ _ (AddAut.mulRight <| (Units.mk0 p hp)⁻¹ * Units.mk0 q hq) <| by
    rw [AddMonoidHom.map_zmultiples, AddMonoidHom.coe_coe, AddAut.mulRight_apply, Units.val_mul,
      Units.val_mk0, Units.val_inv_eq_inv_val, Units.val_mk0, mul_inv_cancel_left₀ hp]
#align add_circle.equiv_add_circle AddCircle.equivAddCircle

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d10558eef48b083c55a8d9a227c6084d37f1e92a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
