# of_opens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7104152-4314-7121-4309-21ee5f5d54ae",
  "kind": "lemma",
  "lexical_name": "of_opens",
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
  "slug": "of-opens--a3ec60bb64305949d9f83ccc",
  "source": {
    "blob": "23c6443c76265e8edb72ffe0f16497aae96eaf1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 417,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3ec60bb64305949d9f83cccd49bd3579e22b5b7047287fd732a1413c6015576",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7104152-4314-7121-4309-21ee5f5d54ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_opens [IsManifold I n M] (s : TopologicalSpace.Opens M) (y : s) :
    IsImmersionAtOfComplement PUnit I I n (Subtype.val : s → M) y := by
  apply mk_of_continuousAt_of_extChartAt (by fun_prop) (.prodUnique 𝕜 E _)
  intro x hx
  suffices I ((chartAt H y) ((chartAt H y).symm (I.symm x))) = x by simpa +contextual
  simp_all

/-- Every `ModelWithCorners 𝕜 E H` is an immersion when viewed as a map `H → E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23c6443c76265e8edb72ffe0f16497aae96eaf1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
