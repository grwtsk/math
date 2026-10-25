# normalizedTristimulusInvariant_each_channel_le_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80906f34b81ce137f1e5e2b3e8723483c3b84f2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51074aa0-9967-ba23-c1a8-a9d140c77321",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30471735-da52-05ee-487e-6fc46afc016e",
  "kind": "theorem",
  "lexical_name": "normalizedTristimulusInvariant_each_channel_le_scale",
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
  "slug": "normalizedtristimulusinvariant-each-channel-le-scale--a1e397ef7fde6f799d731fda",
  "source": {
    "blob": "80906f34b81ce137f1e5e2b3e8723483c3b84f2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1e397ef7fde6f799d731fda941c2a763ccfd4bd54089590e61a63ec35cabcd5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Fixed/Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30471735-da52-05ee-487e-6fc46afc016e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedTristimulusInvariant_each_channel_le_scale
    (xyz : FixedXYZ xyzFormatV1)
    (hinvariant : normalizedTristimulusInvariant xyzFormatV1 xyz) :
    xyz.x.raw ≤ xyzFormatV1.scaleRaw ∧
      xyz.y.raw ≤ xyzFormatV1.scaleRaw ∧
      xyz.z.raw ≤ xyzFormatV1.scaleRaw := by
  have hx0 : 0 ≤ xyz.x.raw := by
    simpa [xyzFormatV1] using xyz.x.inRange.1
  have hy0 : 0 ≤ xyz.y.raw := by
    simpa [xyzFormatV1] using xyz.y.inRange.1
  have hz0 : 0 ≤ xyz.z.raw := by
    simpa [xyzFormatV1] using xyz.z.inRange.1
  unfold normalizedTristimulusInvariant at hinvariant
  omega

/-! ## Checked signed-integer arithmetic -/

/-- Positive half-open bound for a signed two's-complement width. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Fixed/Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80906f34b81ce137f1e5e2b3e8723483c3b84f2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
