# HasCompactMulSupport.eq_one_or_finiteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb81e651-6663-8ba4-a152-d8e5e31aa231",
  "kind": "theorem",
  "lexical_name": "HasCompactMulSupport.eq_one_or_finiteDimensional",
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
  "slug": "hascompactmulsupport-eq-one-or-finitedimensional--bc2dc937dd5fb55a53991e68",
  "source": {
    "blob": "c536b44ca373d3bed427c4225dd17f6a03117da1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 500,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc2dc937dd5fb55a53991e6802034a04fcfd9d3a9e4b25d6419fcc563f0f3b9d",
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

Occurrence: `result:bb81e651-6663-8ba4-a152-d8e5e31aa231`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasCompactMulSupport.eq_one_or_finiteDimensional {X : Type*} [TopologicalSpace X] [One X]
    [T2Space X] {f : E → X} (hf : HasCompactMulSupport f) (h'f : Continuous f) :
    f = 1 ∨ FiniteDimensional 𝕜 E := by
  by_cases h : ∀ x, f x = 1
  · apply Or.inl
    ext x
    exact h x
  apply Or.inr
  push_neg at h
  obtain ⟨x, hx⟩ : ∃ x, f x ≠ 1 := h
  have : Function.mulSupport f ∈ 𝓝 x := h'f.isOpen_mulSupport.mem_nhds hx
  -- Porting note: moved type ascriptions because of exists_prop changes
  obtain ⟨r : ℝ, rpos : 0 < r, hr : Metric.closedBall x r ⊆ Function.mulSupport f⟩ :=
    Metric.nhds_basis_closedBall.mem_iff.1 this
  have : IsCompact (Metric.closedBall x r) :=
    isCompact_of_isClosed_subset hf Metric.isClosed_ball (hr.trans (subset_mulTSupport _))
  exact finiteDimensional_of_isCompact_closedBall 𝕜 rpos this
#align has_compact_mul_support.eq_one_or_finite_dimensional HasCompactMulSupport.eq_one_or_finiteDimensional
#align has_compact_support.eq_zero_or_finite_dimensional HasCompactSupport.eq_zero_or_finiteDimensional

end Riesz

/-- An injective linear map with finite-dimensional domain is a closed embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant564f5f03de80859fd8c7bfe13ecf9e956c8375007af02bf958c1ab8c7f6af562.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c536b44ca373d3bed427c4225dd17f6a03117da1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
