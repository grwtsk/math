# mul_floor_map_zero_le_floor_iterate_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9648437-5fb8-8f5c-33ed-cbda01281eb0",
  "kind": "theorem",
  "lexical_name": "mul_floor_map_zero_le_floor_iterate_zero",
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
  "slug": "mul-floor-map-zero-le-floor-iterate-zero--3373b1191d29a23e499f3caf",
  "source": {
    "blob": "95ea821f39bc037850094907e864039d77a0051c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 621,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3373b1191d29a23e499f3cafdc25cf0dba3c03ce9040b9eef6818ea7e630cad6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9648437-5fb8-8f5c-33ed-cbda01281eb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_floor_map_zero_le_floor_iterate_zero (n : ℕ) : ↑n * ⌊f 0⌋ ≤ ⌊f^[n] 0⌋ := by
  rw [le_floor, Int.cast_mul, Int.cast_ofNat, ← zero_add ((n : ℝ) * _)]
  apply le_iterate_of_add_int_le_map
  simp [floor_le]
#align circle_deg1_lift.mul_floor_map_zero_le_floor_iterate_zero CircleDeg1Lift.mul_floor_map_zero_le_floor_iterate_zero

/-!
### Definition of translation number
-/

noncomputable section

/-- An auxiliary sequence used to define the translation number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95ea821f39bc037850094907e864039d77a0051c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
