# weighted_degree_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d567d7cc-e29c-131e-5e56-3f1ac3298c35",
  "kind": "theorem",
  "lexical_name": "weighted_degree_le",
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
  "slug": "weighted-degree-le--8fc9615ab0de286e7d1812f8",
  "source": {
    "blob": "5f66deb4cb0654d61d5f05eaf3596512e635d3e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 91,
    "path": "GRWTSK/LinearAlgebra/OrientedRealLine/FiniteComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fc9615ab0de286e7d1812f860f10624195097ba5c3d55d8730c13122d79766f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OrientedRealLine/FiniteComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d567d7cc-e29c-131e-5e56-3f1ac3298c35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_degree_le {ι : Type*} [Fintype ι] (R : FiniteComparisonRepair ι)
    (weight : ι → ℝ) (α β A E : ℝ) (hα : 0 < α)
    (hweight : ∀ i, 0 ≤ weight i)
    (htheta : ∀ i, 0 ≤ (R.thetaObject i).coordinate (R.theta i))
    (hq : 0 ≤ R.qObject.coordinate R.q)
    (hcoefficient : ∀ i, 0 ≤ R.coefficient i)
    (hscaleLower : ∀ i, α ≤ (R.thetaMap i).scale)
    (hscaleUpper : R.qMap.scale ≤ β)
    (hmass : (∑ i, weight i * R.coefficient i) ≤ A)
    (herror : (∑ i, weight i * R.error i) ≤ E) :
    (∑ i, weight i * (R.thetaObject i).coordinate (R.theta i)) ≤
      (A * β * R.qObject.coordinate R.q + E) / α := by
  apply (le_div_iff₀ hα).mpr
  simpa only [mul_comm] using
    R.weighted_bound weight α β A E hweight htheta hq hcoefficient
      hscaleLower hscaleUpper hmass herror

end FiniteComparisonRepair

end GRWTSK.LinearAlgebra.OrientedRealLine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OrientedRealLine/FiniteComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/OrientedRealLine/FiniteComparison.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f66deb4cb0654d61d5f05eaf3596512e635d3e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
