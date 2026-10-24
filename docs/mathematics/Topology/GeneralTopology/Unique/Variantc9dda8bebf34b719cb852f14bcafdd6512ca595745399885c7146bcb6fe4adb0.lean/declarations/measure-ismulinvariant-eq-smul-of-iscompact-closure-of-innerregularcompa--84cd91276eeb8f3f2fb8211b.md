# measure_isMulInvariant_eq_smul_of_isCompact_closure_of_innerRegularCompactLTTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2442e71c-7164-d370-e4cf-3c48634cf075",
  "kind": "lemma",
  "lexical_name": "measure_isMulInvariant_eq_smul_of_isCompact_closure_of_innerRegularCompactLTTop",
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
  "slug": "measure-ismulinvariant-eq-smul-of-iscompact-closure-of-innerregularcompa--84cd91276eeb8f3f2fb8211b",
  "source": {
    "blob": "39ab965024e0bac57bd24f01951a70af90276218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 559,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84cd91276eeb8f3f2fb8211bb4a2c4246300d1d5ed7b1e438f57dba7dd263681",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2442e71c-7164-d370-e4cf-3c48634cf075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_isMulInvariant_eq_smul_of_isCompact_closure_of_innerRegularCompactLTTop
    [LocallyCompactSpace G]
    (μ' μ : Measure G) [IsHaarMeasure μ] [IsFiniteMeasureOnCompacts μ'] [IsMulLeftInvariant μ']
    [InnerRegularCompactLTTop μ]
    {s : Set G} (hs : MeasurableSet s) (h's : IsCompact (closure s)) :
    μ' s = haarScalarFactor μ' μ • μ s := by
  apply le_antisymm ?_ (smul_measure_isMulInvariant_le_of_isCompact_closure μ' μ hs h's)
  let ν := haarScalarFactor μ' μ • μ
  change μ' s ≤ ν s
  obtain ⟨⟨f, f_cont⟩, hf, -, f_comp, -⟩ : ∃ f : C(G, ℝ), EqOn f 1 (closure s) ∧ EqOn f 0 ∅
      ∧ HasCompactSupport f ∧ ∀ x, f x ∈ Icc (0 : ℝ) 1 :=
    exists_continuous_one_zero_of_isCompact h's isClosed_empty (disjoint_empty _)
  let t := f ⁻¹' {1}
  have t_closed : IsClosed t := isClosed_singleton.preimage f_cont
  have t_comp : IsCompact t := f_comp.isCompact_preimage f_cont isClosed_singleton (by simp)
  have st : s ⊆ t := (IsClosed.closure_subset_iff t_closed).mp hf
  have A : ν (t \ s) ≤ μ' (t \ s) := by
    apply smul_measure_isMulInvariant_le_of_isCompact_closure _ _ (t_closed.measurableSet.diff hs)
    exact t_comp.closure_of_subset diff_subset
  have B : μ' t = ν t :=
    measure_preimage_isMulLeftInvariant_eq_smul_of_hasCompactSupport _ _ f_cont f_comp
  rwa [measure_diff st hs.nullMeasurableSet, measure_diff st hs.nullMeasurableSet, ← B,
    ENNReal.sub_le_sub_iff_left] at A
  · exact measure_mono st
  · exact t_comp.measure_lt_top.ne
  · exact ((measure_mono st).trans_lt t_comp.measure_lt_top).ne
  · exact ((measure_mono st).trans_lt t_comp.measure_lt_top).ne

/-- Given an invariant measure then it gives the same mass to measurable sets with
compact closure as any other invariant measure, up to the scalar `haarScalarFactor μ' μ`.

Auxiliary lemma in the proof of the more general
`measure_isMulInvariant_eq_smul_of_isCompact_closure`, which removes the
measurability assumption. -/
@[to_additive measure_isAddInvariant_eq_smul_of_isCompact_closure_of_measurableSet
"Given an invariant measure then it gives the same mass to measurable sets with
compact closure as any other invariant measure, up to the scalar `addHaarScalarFactor μ' μ`.

Auxiliary lemma in the proof of the more general
`measure_isAddInvariant_eq_smul_of_isCompact_closure`, which removes the
measurability assumption."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39ab965024e0bac57bd24f01951a70af90276218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
