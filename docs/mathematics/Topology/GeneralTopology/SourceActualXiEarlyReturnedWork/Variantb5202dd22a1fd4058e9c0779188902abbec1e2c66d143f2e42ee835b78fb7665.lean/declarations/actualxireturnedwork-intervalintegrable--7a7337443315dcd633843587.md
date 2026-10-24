# actualXiReturnedWork_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5524e3b-bfae-d960-25ed-f8e1c3ac8300",
  "kind": "theorem",
  "lexical_name": "actualXiReturnedWork_intervalIntegrable",
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
  "slug": "actualxireturnedwork-intervalintegrable--7a7337443315dcd633843587",
  "source": {
    "blob": "64b45c1062a3a82282147d580d2a734679536cd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualXiEarlyReturnedWork/Variantb5202dd22a1fd4058e9c0779188902abbec1e2c66d143f2e42ee835b78fb7665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a7337443315dcd633843587a26806bf9924c4fe0565a9bd5fd444466ec81eac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualXiEarlyReturnedWork/Variantb5202dd22a1fd4058e9c0779188902abbec1e2c66d143f2e42ee835b78fb7665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5524e3b-bfae-d960-25ed-f8e1c3ac8300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiReturnedWork_intervalIntegrable {A b : ℝ} (hA : 91 ≤ A)
    (hb : Real.log 7 ≤ b) :
    IntervalIntegrable (fun t =>
      actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t)
      volume (Real.log 7) b := by
  have hp : 0 < A := by linarith
  have hc := actual_correlation_contDiff_four A hp
  have hfirst : Continuous (deriv (sourceCorrelation explicitSecondDerivative A)) := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      hc.continuous_iteratedDeriv 1 (by norm_num)
  have hi : IntervalIntegrable actualDampedXiFinitePrimitive volume (Real.log 7) b :=
    (actualDampedXiFinitePrimitive_absolutelyContinuous hb).continuousOn.intervalIntegrable
  apply hi.mul_continuousOn
  unfold actualDampedXiReturnDensity
  exact ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul
    ((hc.continuous_iteratedDeriv 3 (by norm_num)).sub
      (hfirst.div_const 4))).continuousOn

/-- Both actual odd zero traces control the source returned density near the origin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualXiEarlyReturnedWork/Variantb5202dd22a1fd4058e9c0779188902abbec1e2c66d143f2e42ee835b78fb7665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualXiEarlyReturnedWork/Variantb5202dd22a1fd4058e9c0779188902abbec1e2c66d143f2e42ee835b78fb7665.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64b45c1062a3a82282147d580d2a734679536cd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
