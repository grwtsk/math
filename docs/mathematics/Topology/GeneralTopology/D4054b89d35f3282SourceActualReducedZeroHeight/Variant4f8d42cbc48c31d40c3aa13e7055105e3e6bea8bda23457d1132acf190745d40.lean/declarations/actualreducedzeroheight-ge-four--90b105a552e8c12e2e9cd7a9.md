# actualReducedZeroHeight_ge_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8297b10b-0e95-b455-41b5-81dd26484f28",
  "kind": "theorem",
  "lexical_name": "actualReducedZeroHeight_ge_four",
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
  "slug": "actualreducedzeroheight-ge-four--90b105a552e8c12e2e9cd7a9",
  "source": {
    "blob": "d7e5b8346bc0c5c7e81d46199fc3678d26ebe913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variant4f8d42cbc48c31d40c3aa13e7055105e3e6bea8bda23457d1132acf190745d40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90b105a552e8c12e2e9cd7a931a9b8728b885b8f9e3e087ee747e31861aaea35",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variant4f8d42cbc48c31d40c3aa13e7055105e3e6bea8bda23457d1132acf190745d40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8297b10b-0e95-b455-41b5-81dd26484f28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualReducedZeroHeight_ge_four {A : ℝ} (hA : 200 ≤ A) :
    4 ≤ actualReducedZeroHeight A := by
  have hp : 0 < A := by linarith
  have he := Real.pow_div_factorial_le_exp (A / 5) (show 0 ≤ A / 5 by positivity) 2
  norm_num at he
  have ha : 4 * A ≤ (A / 5)^2 / 2 := by
    nlinarith [mul_nonneg hp.le (show 0 ≤ A - 200 by linarith)]
  exact (le_div_iff₀ hp).mpr (ha.trans he)

/-- The literal full actual tail beyond the smaller height has one all-real quantitative bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variant4f8d42cbc48c31d40c3aa13e7055105e3e6bea8bda23457d1132acf190745d40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variant4f8d42cbc48c31d40c3aa13e7055105e3e6bea8bda23457d1132acf190745d40.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e5b8346bc0c5c7e81d46199fc3678d26ebe913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
