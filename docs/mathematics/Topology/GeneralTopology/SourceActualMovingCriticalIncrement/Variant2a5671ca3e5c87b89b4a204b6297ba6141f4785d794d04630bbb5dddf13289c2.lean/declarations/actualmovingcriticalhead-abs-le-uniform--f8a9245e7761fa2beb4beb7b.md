# actualMovingCriticalHead_abs_le_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:faa16472-03a3-4826-5d44-ec66baa0a1d9",
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
  "slug": "actualmovingcriticalhead-abs-le-uniform--f8a9245e7761fa2beb4beb7b",
  "source": {
    "blob": "eb3cc4357f2d1c77a452e62c556f416c66115688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 245,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variant2a5671ca3e5c87b89b4a204b6297ba6141f4785d794d04630bbb5dddf13289c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8a9245e7761fa2beb4beb7b90da7872c697060cb968371a719b9cbb816b32a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variant2a5671ca3e5c87b89b4a204b6297ba6141f4785d794d04630bbb5dddf13289c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faa16472-03a3-4826-5d44-ec66baa0a1d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–253.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variant2a5671ca3e5c87b89b4a204b6297ba6141f4785d794d04630bbb5dddf13289c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variant2a5671ca3e5c87b89b4a204b6297ba6141f4785d794d04630bbb5dddf13289c2.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb3cc4357f2d1c77a452e62c556f416c66115688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
