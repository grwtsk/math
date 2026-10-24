# mem_direction_iff_eq_vsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfa37fec91ccf232a951e4526b4d13d6283bc3fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3300e323-1b18-054f-a5fd-13562f7e9117",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1181a24-da91-1373-ddf2-e7310f76f738",
  "kind": "theorem",
  "lexical_name": "mem_direction_iff_eq_vsub",
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
  "slug": "mem-direction-iff-eq-vsub--8e349733fc2c21e8b566161c",
  "source": {
    "blob": "bfa37fec91ccf232a951e4526b4d13d6283bc3fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 248,
    "path": "GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e349733fc2c21e8b566161c3da8f512ab2274bcdd54469ad1a45e9f8eb168bc",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1181a24-da91-1373-ddf2-e7310f76f738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_direction_iff_eq_vsub {s : AffineSubspace k P} (h : (s : Set P).Nonempty) (v : V) :
    v ∈ s.direction ↔ ∃ p1 ∈ s, ∃ p2 ∈ s, v = p1 -ᵥ p2 := by
  rw [← SetLike.mem_coe, coe_direction_eq_vsub_set h]
  exact
    ⟨fun ⟨p1, p2, hp1, hp2, hv⟩ => ⟨p1, hp1, p2, hp2, hv.symm⟩, fun ⟨p1, hp1, p2, hp2, hv⟩ =>
      ⟨p1, p2, hp1, hp2, hv.symm⟩⟩
#align affine_subspace.mem_direction_iff_eq_vsub AffineSubspace.mem_direction_iff_eq_vsub

/-- Adding a vector in the direction to a point in the subspace produces a point in the
subspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa37fec91ccf232a951e4526b4d13d6283bc3fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
