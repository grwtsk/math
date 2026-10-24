# index_of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a0e5fc8-7352-e234-37c3-eb046fce1404",
  "kind": "lemma",
  "lexical_name": "index_of_iso",
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
  "slug": "index-of-iso--9e6513d26be0a9d562a5b227",
  "source": {
    "blob": "1d319534ffa2fb9b1e080282105631fe7f1911d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 140,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e6513d26be0a9d562a5b2279adc48746f2a21596ef09c2711341d0e70a5d023",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a0e5fc8-7352-e234-37c3-eb046fce1404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma index_of_iso {Y : SSet.{u}} (e : X ≅ Y) {d : ℕ} (hd : x.dim = d) :
    (hxy.of_iso e).index hd = hxy.index hd := by
  obtain ⟨dx, x, rfl⟩ := x.mk_surjective
  obtain ⟨dy, y, rfl⟩ := y.mk_surjective
  obtain rfl : dy = dx + 1 := hxy.dim_eq
  obtain rfl : dx = d := hd
  symm
  simp [← (hxy.of_iso e).δ_eq_iff rfl,
    ← SSet.δ_naturality_apply, dsimp% hxy.δ_index rfl]

end IsUniquelyCodimOneFace

end SSet.S
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta9601eb3ccb2cad048fbdede3ec7124fcc90effe8770bbf602cd8bc6ad830b2a.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d319534ffa2fb9b1e080282105631fe7f1911d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
