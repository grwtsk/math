# exp_weight_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f326ae7-269c-4325-abc6-19c9fe1d1152",
  "kind": "theorem",
  "lexical_name": "exp_weight_primitive",
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
  "slug": "exp-weight-primitive--fb1a3d8c37075364cdf7ce97",
  "source": {
    "blob": "84c1772ee49667a306095c2edbaed5789f876c7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualLayerCake/Variantb3b472d8a45d806577222058dbcb2d357197cbc665b8e8bdf177d4a645bedc2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb1a3d8c37075364cdf7ce97541ea3e4e100ccfeafd23a2bf1846dacc4f4372a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualLayerCake/Variantb3b472d8a45d806577222058dbcb2d357197cbc665b8e8bdf177d4a645bedc2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f326ae7-269c-4325-abc6-19c9fe1d1152`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_weight_primitive (A β : ℝ) :
    (∫ σ in (1/2 : ℝ)..β, densityWeight A σ) =
      Real.exp (2*A*(β-1/2))-1 := by
  have hd (σ : ℝ) : HasDerivAt (fun x => Real.exp (2*A*(x-1/2)))
      (densityWeight A σ) σ := by
    convert (((hasDerivAt_id σ).sub_const (1/2)).const_mul (2*A)).exp using 1 <;>
      simp [densityWeight, mul_comm]
  simpa using intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun σ _ => hd σ) (densityWeight_integrable A (1/2) β)

/-- Per occurrence identity, including points on or left of the critical line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualLayerCake/Variantb3b472d8a45d806577222058dbcb2d357197cbc665b8e8bdf177d4a645bedc2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualLayerCake/Variantb3b472d8a45d806577222058dbcb2d357197cbc665b8e8bdf177d4a645bedc2c.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84c1772ee49667a306095c2edbaed5789f876c7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
