# IsCompact.measure_eq_biInf_integral_hasCompactSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d7e88c666147c86eb1b9d9168e7f4ddcbcd54c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bd548a3-3619-cc70-53e8-e6b793732a6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d9d9451-04a2-d006-e441-14d379c2d282",
  "kind": "lemma",
  "lexical_name": "IsCompact.measure_eq_biInf_integral_hasCompactSupport",
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
  "slug": "iscompact-measure-eq-biinf-integral-hascompactsupport--4664f7f652ffb0cf273e5a2b",
  "source": {
    "blob": "6d7e88c666147c86eb1b9d9168e7f4ddcbcd54c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4664f7f652ffb0cf273e5a2ba2d048e5d2f00a98201f48160b231b9f9e3046ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d9d9451-04a2-d006-e441-14d379c2d282`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCompact.measure_eq_biInf_integral_hasCompactSupport
    {X : Type*} [TopologicalSpace X] [MeasurableSpace X] [BorelSpace X]
    {k : Set X} (hk : IsCompact k)
    (μ : Measure X) [IsFiniteMeasureOnCompacts μ] [InnerRegularCompactLTTop μ]
    [LocallyCompactSpace X] [RegularSpace X] :
    μ k = ⨅ (f : X → ℝ) (_ : Continuous f) (_ : HasCompactSupport f) (_ : EqOn f 1 k)
      (_ : 0 ≤ f), ENNReal.ofReal (∫ x, f x ∂μ) := by
  apply le_antisymm
  · simp only [le_iInf_iff]
    intro f f_cont f_comp fk f_nonneg
    apply (f_cont.integrable_of_hasCompactSupport f_comp).measure_le_integral
    · exact Eventually.of_forall f_nonneg
    · exact fun x hx ↦ by simp [fk hx]
  · apply le_of_forall_lt' (fun r hr ↦ ?_)
    simp only [iInf_lt_iff, exists_prop, exists_and_left]
    obtain ⟨U, kU, U_open, mu_U⟩ : ∃ U, k ⊆ U ∧ IsOpen U ∧ μ U < r :=
      hk.exists_isOpen_lt_of_lt r hr
    obtain ⟨⟨f, f_cont⟩, fk, fU, f_comp, f_range⟩ : ∃ (f : C(X, ℝ)), EqOn f 1 k ∧ EqOn f 0 Uᶜ
        ∧ HasCompactSupport f ∧ ∀ (x : X), f x ∈ Icc 0 1 := exists_continuous_one_zero_of_isCompact
      hk U_open.isClosed_compl (disjoint_compl_right_iff_subset.mpr kU)
    refine ⟨f, f_cont, f_comp, fk, fun x ↦ (f_range x).1, ?_⟩
    exact (integral_le_measure (fun x _hx ↦ (f_range x).2) (fun x hx ↦ (fU hx).le)).trans_lt mu_U

namespace MeasureTheory

/-- The parameterized integral `x ↦ ∫ y, g (y⁻¹ * x) ∂μ` depends continuously on `y` when `g` is a
compactly supported continuous function on a topological group `G`, and `μ` is finite on compact
sets. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d7e88c666147c86eb1b9d9168e7f4ddcbcd54c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
