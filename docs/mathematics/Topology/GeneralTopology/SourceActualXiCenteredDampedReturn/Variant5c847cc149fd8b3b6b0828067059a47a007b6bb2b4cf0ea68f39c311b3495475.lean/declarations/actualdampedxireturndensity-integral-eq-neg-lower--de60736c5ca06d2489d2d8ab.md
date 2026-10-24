# actualDampedXiReturnDensity_integral_eq_neg_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d226079c-81d8-c9eb-487f-8746b8e0cb66",
  "kind": "theorem",
  "lexical_name": "actualDampedXiReturnDensity_integral_eq_neg_lower",
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
  "slug": "actualdampedxireturndensity-integral-eq-neg-lower--de60736c5ca06d2489d2d8ab",
  "source": {
    "blob": "b27fc819065b5fb07075ed71f97960f4dda3eb2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant5c847cc149fd8b3b6b0828067059a47a007b6bb2b4cf0ea68f39c311b3495475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de60736c5ca06d2489d2d8ab13c8e7bdcf5c78c86a42a91841c65dc29a19b52b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant5c847cc149fd8b3b6b0828067059a47a007b6bb2b4cf0ea68f39c311b3495475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d226079c-81d8-c9eb-487f-8746b8e0cb66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiReturnDensity_integral_eq_neg_lower {A : ℝ} (hA : 91 ≤ A) :
    (∫ t in Real.log 7..2 * A, actualDampedXiReturnDensity A t) =
      -actualDampedXiReturnTest A (Real.log 7) := by
  have hp : 0 < A := by linarith
  have hi : IntervalIntegrable (actualDampedXiReturnDensity A) volume
      (Real.log 7) (2 * A) := (returnDensity_continuous hp).intervalIntegrable _ _
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => actualDampedXiReturnTest_hasDerivAt A t hp) hi
  simpa only [actualDampedXiReturnTest_at_upper hA, zero_sub] using h

/-- The literal centered source integrand has genuine finite L1 before linearity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant5c847cc149fd8b3b6b0828067059a47a007b6bb2b4cf0ea68f39c311b3495475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant5c847cc149fd8b3b6b0828067059a47a007b6bb2b4cf0ea68f39c311b3495475.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b27fc819065b5fb07075ed71f97960f4dda3eb2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
