# IsIntegralClosure.range_le_span_dualBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9808d94-89b5-7bbb-fe11-893af93839a4",
  "kind": "theorem",
  "lexical_name": "IsIntegralClosure.range_le_span_dualBasis",
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
  "slug": "isintegralclosure-range-le-span-dualbasis--66d18ad71825e377a9105748",
  "source": {
    "blob": "2cee1e848c2096ae7d81d1384e6e40ead6d45652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 103,
    "path": "GRWTSK/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66d18ad71825e377a910574806e83ce796d0f9c958f69c9e644caf2dc52a573c",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9808d94-89b5-7bbb-fe11-893af93839a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegralClosure.range_le_span_dualBasis [IsSeparable K L] {ι : Type*} [Fintype ι]
    [DecidableEq ι] (b : Basis ι K L) (hb_int : ∀ i, IsIntegral A (b i)) [IsIntegrallyClosed A] :
    LinearMap.range ((Algebra.linearMap C L).restrictScalars A) ≤
    Submodule.span A (Set.range <| (traceForm K L).dualBasis (traceForm_nondegenerate K L) b) := by
  let db := (traceForm K L).dualBasis (traceForm_nondegenerate K L) b
  rintro _ ⟨x, rfl⟩
  simp only [LinearMap.coe_restrictScalars, Algebra.linearMap_apply]
  have hx : IsIntegral A (algebraMap C L x) := (IsIntegralClosure.isIntegral A L x).algebraMap
  rsuffices ⟨c, x_eq⟩ : ∃ c : ι → A, algebraMap C L x = ∑ i, c i • db i
  · rw [x_eq]
    refine' Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (Submodule.subset_span _)
    rw [Set.mem_range]
    exact ⟨i, rfl⟩
  suffices ∃ c : ι → K, (∀ i, IsIntegral A (c i)) ∧ algebraMap C L x = ∑ i, c i • db i by
    obtain ⟨c, hc, hx⟩ := this
    have hc' : ∀ i, IsLocalization.IsInteger A (c i) := fun i =>
      IsIntegrallyClosed.isIntegral_iff.mp (hc i)
    use fun i => Classical.choose (hc' i)
    refine' hx.trans (Finset.sum_congr rfl fun i _ => _)
    conv_lhs => rw [← Classical.choose_spec (hc' i)]
    rw [← IsScalarTower.algebraMap_smul K (Classical.choose (hc' i)) (db i)]
  refine' ⟨fun i => db.repr (algebraMap C L x) i, fun i => _, (db.sum_repr _).symm⟩
  simp_rw [BilinForm.dualBasis_repr_apply]
  exact isIntegral_trace (isIntegral_mul hx (hb_int i))
#align is_integral_closure.range_le_span_dual_basis IsIntegralClosure.range_le_span_dualBasis

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cee1e848c2096ae7d81d1384e6e40ead6d45652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
