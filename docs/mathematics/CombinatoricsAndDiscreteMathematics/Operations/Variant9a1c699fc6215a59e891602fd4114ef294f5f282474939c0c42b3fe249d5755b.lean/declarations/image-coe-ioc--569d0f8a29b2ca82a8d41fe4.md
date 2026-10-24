# image_coe_Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d03b59b5-ee69-c14f-6b6c-cf3ddcf2d065",
  "kind": "theorem",
  "lexical_name": "image_coe_Ioc",
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
  "slug": "image-coe-ioc--569d0f8a29b2ca82a8d41fe4",
  "source": {
    "blob": "3f2a9b89a4990620d6f2e6783a0a96f6026cca6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 472,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Operations/Variant9a1c699fc6215a59e891602fd4114ef294f5f282474939c0c42b3fe249d5755b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:569d0f8a29b2ca82a8d41fe451cf1b46a7d972efe3b58848384eb6d202a0c8fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Operations/Variant9a1c699fc6215a59e891602fd4114ef294f5f282474939c0c42b3fe249d5755b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d03b59b5-ee69-c14f-6b6c-cf3ddcf2d065`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_coe_Ioc (x y : ℝ≥0) : (↑) '' Ioc x y = Ioc (x : ℝ≥0∞) y := WithTop.image_coe_Ioc

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Operations/Variant9a1c699fc6215a59e891602fd4114ef294f5f282474939c0c42b3fe249d5755b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Operations/Variant9a1c699fc6215a59e891602fd4114ef294f5f282474939c0c42b3fe249d5755b.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f2a9b89a4990620d6f2e6783a0a96f6026cca6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
