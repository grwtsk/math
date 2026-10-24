# actualMovingCriticalHead_abs_le_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0233ce4-eb73-cc5d-f153-0e103be6241a",
  "kind": "theorem",
  "lexical_name": "actualMovingCriticalHead_abs_le_uniform",
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
  "slug": "actualmovingcriticalhead-abs-le-uniform--532755f2dc62e8fac9dee100",
  "source": {
    "blob": "37cfea76d1825af7810c50f4cfb4aaf574793cbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 243,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:532755f2dc62e8fac9dee10042ad294488acde126699257187022d3914c6c4b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0233ce4-eb73-cc5d-f153-0e103be6241a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMovingCriticalHead_abs_le_uniform {A : ℝ} (hA : 1 ≤ A) :
    |actualMovingCriticalHead A| ≤ Real.sqrt 7 / 2 * B := by
  exact (actualMovingCriticalHead_abs_le hA).trans
    (mul_le_mul_of_nonneg_left
      (actualCenteredMangoldtLogError_abs_le (by linarith : 0 ≤ 2 * A))
      (by positivity))

/-- Uniform lower bounds are equivalent at the same valid real radius.
The forward and reverse constants pay only the displayed actual lower head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37cfea76d1825af7810c50f4cfb4aaf574793cbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
