# actualMovingCriticalHead_abs_le_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:266ade98-20d1-4e08-9d11-577eccf8eb48",
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
  "slug": "actualmovingcriticalhead-abs-le-uniform--59d0d02edaaaa15fced0cab2",
  "source": {
    "blob": "8873834b18836b1c30f99b3b20cf7592340a841d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variantff1317a8bfb5b449bcd3adcebd2cc82eb2a7710ad6f68e3ba3627f6ce2a5d600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59d0d02edaaaa15fced0cab206e6c629f9c8ff5f7940d5e34eb42e62fa0a5e3c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03/Variantff1317a8bfb5b449bcd3adcebd2cc82eb2a7710ad6f68e3ba3627f6ce2a5d600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:266ade98-20d1-4e08-9d11-577eccf8eb48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–216.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03/Variantff1317a8bfb5b449bcd3adcebd2cc82eb2a7710ad6f68e3ba3627f6ce2a5d600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03/Variantff1317a8bfb5b449bcd3adcebd2cc82eb2a7710ad6f68e3ba3627f6ce2a5d600.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8873834b18836b1c30f99b3b20cf7592340a841d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
