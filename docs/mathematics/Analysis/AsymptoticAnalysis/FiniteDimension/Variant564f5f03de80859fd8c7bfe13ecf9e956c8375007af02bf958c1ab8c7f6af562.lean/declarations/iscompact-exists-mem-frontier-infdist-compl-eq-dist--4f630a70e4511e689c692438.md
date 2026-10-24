# IsCompact.exists_mem_frontier_infDist_compl_eq_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39938179-b5f5-9776-f788-a35053ba5c41",
  "kind": "theorem",
  "lexical_name": "IsCompact.exists_mem_frontier_infDist_compl_eq_dist",
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
  "slug": "iscompact-exists-mem-frontier-infdist-compl-eq-dist--4f630a70e4511e689c692438",
  "source": {
    "blob": "c536b44ca373d3bed427c4225dd17f6a03117da1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 643,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f630a70e4511e689c692438455db2ec738b385371bf7697f93a4b1e05f8eae6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39938179-b5f5-9776-f788-a35053ba5c41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem IsCompact.exists_mem_frontier_infDist_compl_eq_dist {E : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [Nontrivial E] {x : E} {K : Set E} (hK : IsCompact K)
    (hx : x ∈ K) :
    ∃ y ∈ frontier K, Metric.infDist x Kᶜ = dist x y := by
  obtain hx' | hx' : x ∈ interior K ∪ frontier K := by
    rw [← closure_eq_interior_union_frontier]
    exact subset_closure hx
  · rw [mem_interior_iff_mem_nhds, Metric.nhds_basis_closedBall.mem_iff] at hx'
    rcases hx' with ⟨r, hr₀, hrK⟩
    have : FiniteDimensional ℝ E :=
      finiteDimensional_of_isCompact_closedBall ℝ hr₀
        (isCompact_of_isClosed_subset hK Metric.isClosed_ball hrK)
    exact exists_mem_frontier_infDist_compl_eq_dist hx hK.ne_univ
  · refine' ⟨x, hx', _⟩
    rw [frontier_eq_closure_inter_closure] at hx'
    rw [Metric.infDist_zero_of_mem_closure hx'.2, dist_self]
#align is_compact.exists_mem_frontier_inf_dist_compl_eq_dist IsCompact.exists_mem_frontier_infDist_compl_eq_dist

/-- In a finite dimensional vector space over `ℝ`, the series `∑ x, ‖f x‖` is unconditionally
summable if and only if the series `∑ x, f x` is unconditionally summable. One implication holds in
any complete normed space, while the other holds only in finite dimensional spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c536b44ca373d3bed427c4225dd17f6a03117da1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
