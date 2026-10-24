# tendsto_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e2f2643-f941-29cc-39ca-8029f0007c9c",
  "kind": "theorem",
  "lexical_name": "tendsto_atBot",
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
  "slug": "tendsto-atbot--41c81bc40beeca6796520eb9",
  "source": {
    "blob": "95ea821f39bc037850094907e864039d77a0051c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 549,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41c81bc40beeca6796520eb94b24dfa916231c40e017cd0d3be714597a13a4a3",
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

Occurrence: `result:6e2f2643-f941-29cc-39ca-8029f0007c9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem tendsto_atBot : Tendsto f atBot atBot :=
  tendsto_atBot_mono f.map_le_of_map_zero <| tendsto_atBot_add_const_left _ _ <|
    (tendsto_atBot_mono fun x => (ceil_lt_add_one x).le) <|
      tendsto_atBot_add_const_right _ _ tendsto_id
#align circle_deg1_lift.tendsto_at_bot CircleDeg1Lift.tendsto_atBot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95ea821f39bc037850094907e864039d77a0051c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
