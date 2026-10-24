# bounded_remainder_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86d3d1b14f46064f60e018d060c35b21379b156e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40cb3825-857c-b469-34b1-b06060a55891",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0509b29-5578-7733-91e1-c7e9a19cd090",
  "kind": "theorem",
  "lexical_name": "bounded_remainder_transfer",
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
  "slug": "bounded-remainder-transfer--01f3efbc17f27c63e2ed4a59",
  "source": {
    "blob": "86d3d1b14f46064f60e018d060c35b21379b156e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01f3efbc17f27c63e2ed4a59a1b647b6ec928d54c601e8bd16e0119815a8a312",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0509b29-5578-7733-91e1-c7e9a19cd090`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bounded_remainder_transfer (r R : ℝ → ℝ) (delta : ℝ) (hd : 0 < delta)
    (heq : ∀ A : ℝ, 1 ≤ A → r A = delta/4*normalizedSquare A (1/4)-R A)
    (hR : ∀ A : ℝ, 1 ≤ A → |R A| ≤ 3) : Tendsto r atTop atTop := by
  have hl := (quarter_square_tendsto_atTop.const_mul_atTop
    (show 0 < delta/4 by positivity)).atTop_add_const (-3)
  apply tendsto_atTop_mono' atTop _ hl
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [heq A hA]
  have hu := (abs_le.mp (hR A hA)).2
  linarith

/-- The scaled remainder is genuinely negligible at the same source scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86d3d1b14f46064f60e018d060c35b21379b156e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
