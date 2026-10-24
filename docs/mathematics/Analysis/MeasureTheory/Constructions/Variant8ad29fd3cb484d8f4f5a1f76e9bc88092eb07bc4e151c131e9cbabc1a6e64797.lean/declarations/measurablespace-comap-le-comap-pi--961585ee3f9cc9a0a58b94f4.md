# MeasurableSpace.comap_le_comap_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23c0d788-c3a2-c4b3-3aea-916c5016f0fd",
  "kind": "theorem",
  "lexical_name": "MeasurableSpace.comap_le_comap_pi",
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
  "slug": "measurablespace-comap-le-comap-pi--961585ee3f9cc9a0a58b94f4",
  "source": {
    "blob": "a8f2e33dfeb38e66172d859d925dacb7d77e30ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 595,
    "path": "GRWTSK/Analysis/MeasureTheory/Constructions/Variant8ad29fd3cb484d8f4f5a1f76e9bc88092eb07bc4e151c131e9cbabc1a6e64797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:961585ee3f9cc9a0a58b94f4676155de2d9c0ce820a1dcb2d9eb7f51bc860dcc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Constructions/Variant8ad29fd3cb484d8f4f5a1f76e9bc88092eb07bc4e151c131e9cbabc1a6e64797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23c0d788-c3a2-c4b3-3aea-916c5016f0fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasurableSpace.comap_le_comap_pi {g : (a : δ) → β → X a} (a : δ) :
    .comap (g a) inferInstance ≤ pi.comap (fun b c ↦ g c b) := by
  simpa only [pi, comap_iSup] using le_iSup_of_le a <| by measurability

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Constructions/Variant8ad29fd3cb484d8f4f5a1f76e9bc88092eb07bc4e151c131e9cbabc1a6e64797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Constructions/Variant8ad29fd3cb484d8f4f5a1f76e9bc88092eb07bc4e151c131e9cbabc1a6e64797.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8f2e33dfeb38e66172d859d925dacb7d77e30ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
