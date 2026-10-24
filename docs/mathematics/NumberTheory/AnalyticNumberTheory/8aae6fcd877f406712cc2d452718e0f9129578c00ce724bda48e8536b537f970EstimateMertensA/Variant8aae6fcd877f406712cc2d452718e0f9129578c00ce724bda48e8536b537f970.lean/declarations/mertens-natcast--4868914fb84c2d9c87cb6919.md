# mertens_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4c2eedfafc495c872420077e3fb844443f59dac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66dc4caf-f2b8-beef-9146-0dcc9c7c3366",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4940a83d-ba7b-11cd-dca5-2c25b12a21c5",
  "kind": "theorem",
  "lexical_name": "mertens_natCast",
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
  "slug": "mertens-natcast--4868914fb84c2d9c87cb6919",
  "source": {
    "blob": "e4c2eedfafc495c872420077e3fb844443f59dac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4868914fb84c2d9c87cb6919405d3e4170b9bb9996c6de47ebfb6ca807fca9c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4940a83d-ba7b-11cd-dca5-2c25b12a21c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertens_natCast (N : ℕ) :
    mertens (N : ℝ) = mertensNat N := by
  simp [mertens, mertensNat]

/-- Generic closed-right Möbius Abel formula on a nonnegative real interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4c2eedfafc495c872420077e3fb844443f59dac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
