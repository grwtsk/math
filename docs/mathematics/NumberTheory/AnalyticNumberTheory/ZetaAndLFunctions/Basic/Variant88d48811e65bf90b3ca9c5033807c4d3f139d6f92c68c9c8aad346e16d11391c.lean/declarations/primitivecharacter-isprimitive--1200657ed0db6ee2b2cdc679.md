# primitiveCharacter_isPrimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a0b51ad-a938-e893-727a-5025e10084a6",
  "kind": "lemma",
  "lexical_name": "primitiveCharacter_isPrimitive",
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
  "slug": "primitivecharacter-isprimitive--1200657ed0db6ee2b2cdc679",
  "source": {
    "blob": "e69d8e2ecf3d44b09a13530ed6281a60abe644ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 260,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variant88d48811e65bf90b3ca9c5033807c4d3f139d6f92c68c9c8aad346e16d11391c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1200657ed0db6ee2b2cdc679a3ca44cd46c005e901237b4a8595cb76d41d870f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variant88d48811e65bf90b3ca9c5033807c4d3f139d6f92c68c9c8aad346e16d11391c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a0b51ad-a938-e893-727a-5025e10084a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma primitiveCharacter_isPrimitive : IsPrimitive (χ.primitiveCharacter) := by
  by_cases h : χ.conductor = 0
  · rw [isPrimitive_def]
    convert conductor_eq_zero_iff_level_eq_zero.mpr h
  · exact le_antisymm (Nat.le_of_dvd (Nat.pos_of_ne_zero h) (conductor_dvd_level _)) <|
      conductor_le_conductor_mem_conductorSet <| conductor_mem_conductorSet χ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variant88d48811e65bf90b3ca9c5033807c4d3f139d6f92c68c9c8aad346e16d11391c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variant88d48811e65bf90b3ca9c5033807c4d3f139d6f92c68c9c8aad346e16d11391c.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69d8e2ecf3d44b09a13530ed6281a60abe644ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
