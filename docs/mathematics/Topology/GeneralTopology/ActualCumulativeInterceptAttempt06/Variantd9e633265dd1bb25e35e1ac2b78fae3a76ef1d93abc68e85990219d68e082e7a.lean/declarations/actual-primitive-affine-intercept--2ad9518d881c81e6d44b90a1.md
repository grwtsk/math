# actual_primitive_affine_intercept

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d5408ee-79b2-d490-5f77-7dea6847eb3a",
  "kind": "theorem",
  "lexical_name": "actual_primitive_affine_intercept",
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
  "slug": "actual-primitive-affine-intercept--2ad9518d881c81e6d44b90a1",
  "source": {
    "blob": "73202214c77eab1c4abb302d40655e277a23dc2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt06/Variantd9e633265dd1bb25e35e1ac2b78fae3a76ef1d93abc68e85990219d68e082e7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ad9518d881c81e6d44b90a13bf957f01c7ae0b1579fa1929efdc9fcb9fcf154",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt06/Variantd9e633265dd1bb25e35e1ac2b78fae3a76ef1d93abc68e85990219d68e082e7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d5408ee-79b2-d490-5f77-7dea6847eb3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_primitive_affine_intercept
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    Tendsto (fun u : ℝ => criticalDiscrepancyPrimitive u - actualAffineSlope*u)
      atTop (𝓝 actualPrimeIntercept) := by
  have ht := intervalIntegral_tendsto_integral_Ioi 0
    (actual_prime_remainder_integrable hI) (tendsto_id : Tendsto (fun u : ℝ => u) atTop atTop)
  have h := (ht.sub_const 2).add (decay_tendsto_zero.const_mul 2)
  simp only [mul_zero,add_zero] at h
  apply h.congr'
  filter_upwards [] with u
  dsimp only [id_eq]
  rw [actual_primitive_decomposition]
  ring

/-- The literal affine-subtracted remainder tends to zero on all real coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt06/Variantd9e633265dd1bb25e35e1ac2b78fae3a76ef1d93abc68e85990219d68e082e7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt06/Variantd9e633265dd1bb25e35e1ac2b78fae3a76ef1d93abc68e85990219d68e082e7a.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73202214c77eab1c4abb302d40655e277a23dc2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
