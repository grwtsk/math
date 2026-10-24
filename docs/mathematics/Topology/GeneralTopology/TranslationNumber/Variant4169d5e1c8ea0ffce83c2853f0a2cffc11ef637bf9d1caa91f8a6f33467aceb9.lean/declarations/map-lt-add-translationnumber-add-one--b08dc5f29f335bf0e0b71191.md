# map_lt_add_translationNumber_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9eb07a8d-6a33-c35a-70ee-2d77023f09f6",
  "kind": "theorem",
  "lexical_name": "map_lt_add_translationNumber_add_one",
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
  "slug": "map-lt-add-translationnumber-add-one--b08dc5f29f335bf0e0b71191",
  "source": {
    "blob": "95ea821f39bc037850094907e864039d77a0051c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 886,
    "line": 881,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b08dc5f29f335bf0e0b71191db76917b43b3849a3c9ac543a69b6bc188b4d42f",
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

Occurrence: `result:9eb07a8d-6a33-c35a-70ee-2d77023f09f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 881–886.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_lt_add_translationNumber_add_one (x : ℝ) : f x < x + τ f + 1 :=
  calc
    f x < x + ⌊τ f⌋ + 1 := f.map_lt_add_floor_translationNumber_add_one x
    _ ≤ x + τ f + 1 := by gcongr; apply floor_le
#align circle_deg1_lift.map_lt_add_translation_number_add_one CircleDeg1Lift.map_lt_add_translationNumber_add_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean#L881).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95ea821f39bc037850094907e864039d77a0051c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
