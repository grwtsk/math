# actual_first_derivative_hasDerivAt_of_ne_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5416946-7914-bc24-dd42-03e8e7fc5369",
  "kind": "theorem",
  "lexical_name": "actual_first_derivative_hasDerivAt_of_ne_endpoints",
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
  "slug": "actual-first-derivative-hasderivat-of-ne-endpoints--fa4d2c34e27c350ca8028589",
  "source": {
    "blob": "9ead2f1dc4e88c5e2571c167505ec26ea0021cb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa4d2c34e27c350ca80285893788363affa3f7a0fc8b9a971c9d02bee3547838",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5416946-7914-bc24-dd42-03e8e7fc5369`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_first_derivative_hasDerivAt_of_ne_endpoints (A x : ℝ) (hA : 0 < A)
    (hx0 : x ≠ -A) (hx1 : x ≠ A) :
    HasDerivAt (deriv (normalizedTest explicitSecondDerivative A))
      (actualSecondProfile A x) x := by
  by_cases hm : x ∈ Icc (-A) A
  · have hxi : x ∈ Ioo (-A) A :=
      ⟨lt_of_le_of_ne hm.1 hx0.symm, lt_of_le_of_ne hm.2 hx1⟩
    have he : deriv (normalizedTest explicitSecondDerivative A) =ᶠ[𝓝 x]
        normalizedInteriorDerivative A := by
      filter_upwards [isOpen_Ioo.mem_nhds hxi] with y hy
      rw [actual_first_derivative_eq_indicator A hA,
        indicator_of_mem (Ioo_subset_Icc_self hy)]
    rw [actualSecondProfile_eq_interior A x hA hm]
    exact (normalizedInteriorDerivative_hasDerivAt_second A x).congr_of_eventuallyEq he
  · have he : deriv (normalizedTest explicitSecondDerivative A) =ᶠ[𝓝 x]
        fun _ => (0 : ℝ) := by
      filter_upwards [isClosed_Icc.isOpen_compl.mem_nhds hm] with y hy
      rw [actual_first_derivative_eq_indicator A hA, indicator_of_notMem hy]
    have hv : actualSecondProfile A x = 0 := by
      rw [actualSecondProfile_eq_indicator A hA, indicator_of_notMem hm]
    rw [hv]
    exact (hasDerivAt_const x (0 : ℝ)).congr_of_eventuallyEq he

/-- Almost-everywhere ordinary derivatives have the actual weak polynomial values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ead2f1dc4e88c5e2571c167505ec26ea0021cb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
