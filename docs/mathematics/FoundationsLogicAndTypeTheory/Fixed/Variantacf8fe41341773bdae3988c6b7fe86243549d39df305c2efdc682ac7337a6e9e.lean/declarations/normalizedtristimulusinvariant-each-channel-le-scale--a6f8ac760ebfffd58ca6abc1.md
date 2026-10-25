# normalizedTristimulusInvariant_each_channel_le_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ce163c6-394d-cd21-d6ca-36484e3a7e92",
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
  "slug": "normalizedtristimulusinvariant-each-channel-le-scale--a6f8ac760ebfffd58ca6abc1",
  "source": {
    "blob": "d172d4334d01d82eedf57db46cf3ff6749b51783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variantacf8fe41341773bdae3988c6b7fe86243549d39df305c2efdc682ac7337a6e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6f8ac760ebfffd58ca6abc1a62fb1d19e6df0c2cc7046e06c4228ea75480d34",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Fixed/Variantacf8fe41341773bdae3988c6b7fe86243549d39df305c2efdc682ac7337a6e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ce163c6-394d-cd21-d6ca-36484e3a7e92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–208.

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

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Fixed/Variantacf8fe41341773bdae3988c6b7fe86243549d39df305c2efdc682ac7337a6e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variantacf8fe41341773bdae3988c6b7fe86243549d39df305c2efdc682ac7337a6e9e.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d172d4334d01d82eedf57db46cf3ff6749b51783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
