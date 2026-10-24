# iIndepFun.process_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0778e0cd-5362-b547-5911-5fbe1555ee2c",
  "kind": "lemma",
  "lexical_name": "iIndepFun.process_congr",
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
  "slug": "iindepfun-process-congr--b16ba218731773f6e4fea283",
  "source": {
    "blob": "2362a7c914b9f8a3015e4c5c2628628019deb82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 204,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b16ba218731773f6e4fea283c82d015d2a9c102a418a688f733df2a32eaac611",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0778e0cd-5362-b547-5911-5fbe1555ee2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iIndepFun.process_congr {T : S → Type*} {𝓧 : (i : S) → (j : T i) → Type*}
    [∀ i j, MeasurableSpace (𝓧 i j)] {X X' : (i : S) → (j : T i) → Ω → 𝓧 i j}
    (h1 : iIndepFun (fun i ω j ↦ X i j ω) κ P) (h2 : ∀ i j, ∀ᵐ a ∂P, X i j =ᵐ[κ a] X' i j) :
    iIndepFun (fun i ω j ↦ X' i j ω) κ P := by
  intro s f hf
  choose! g mg hg using hf
  have h3 : ⋂ i ∈ s, f i = ⋂ i ∈ s, (fun i ω j ↦ X' i j ω) i ⁻¹' g i := (biInf_congr hg).symm
  have h3' a : ∏ i ∈ s, κ a (f i) = ∏ i ∈ s, κ a ((fun i ω j ↦ X' i j ω) i ⁻¹' g i) := by
    refine Finset.prod_congr rfl fun i hi ↦ ?_
    rw [hg i hi]
  simp_rw [h3, h3']
  choose! I u hI hu using fun i hi ↦ (mg i hi).eq_preimage_restrict_countable
  have h4 (f : (i : S) → (j : T i) → Ω → 𝓧 i j) : ⋂ i ∈ s, (fun i ω j ↦ f i j ω) i ⁻¹' g i =
      ⋂ i ∈ s, (fun i ω j ↦ f i j ω) i ⁻¹' (I i).domRestrict ⁻¹' u i :=
      (biInf_congr (fun i hi ↦ by rw [hu i hi])).symm
  have h4' a (f : (i : S) → (j : T i) → Ω → 𝓧 i j) :
      ∏ i ∈ s, κ a ((fun i ω j ↦ f i j ω) i ⁻¹' g i) =
      ∏ i ∈ s, κ a ((fun i ω j ↦ f i j ω) i ⁻¹' (I i).domRestrict ⁻¹' u i) := by
    refine Finset.prod_congr rfl fun i hi ↦ ?_
    rw [hu i hi]
  have h5 := h1 s (fun i hi ↦ ⟨g i, mg i hi, rfl⟩)
  simp_rw [h4, h4'] at h5 ⊢
  have h6 i (f : (j : T i) → Ω → 𝓧 i j) : (fun ω j ↦ f j ω) ⁻¹' (I i).domRestrict ⁻¹' (u i) =
      (fun ω (j : I i) ↦ f j ω) ⁻¹' (u i) := rfl
  simp_rw [h6] at h5 ⊢
  have h :
      ∀ᵐ a ∂P, ∀ i ∈ s, (fun ω (j : I i) ↦ X i j ω) =ᵐ[κ a] (fun ω (j : I i) ↦ X' i j ω) := by
    refine (ae_ball_iff s.countable_toSet).2 fun i hi ↦ ?_
    have := (hI i hi).to_subtype
    filter_upwards [ae_all_iff.2 fun (j : I i) ↦ h2 i j] with
      a (ha : ∀ (j : I i), ∀ᵐ ω ∂κ a, X i j ω = X' i j ω)
    filter_upwards [ae_all_iff.2 ha] with ω hω using by simp [hω]
  filter_upwards [h5, h] with a ha1 ha2
  refine .trans (measure_congr (ae_eq_set_biInter s.countable_toSet
    (fun i hi ↦ ((ha2 i hi).preimage _).symm))) (ha1.trans ?_)
  refine Finset.prod_congr rfl fun i hi ↦ ?_
  rw [measure_congr ((ha2 i hi).preimage _)]

/-- Stochastic processes $((X^s_t)_{t \in T_s})_{s \in S}$ are mutually independent if
for all $s_1, ..., s_n$ and all $t^{s_i}_1, ..., t^{s_i}_{p_i}$ the families
$(X^{s_1}_{t^{s_1}_1}, ..., X^{s_1}_{t^{s_1}_{p_1}}), ...,
(X^{s_n}_{t^{s_n}_1}, ..., X^{s_n}_{t^{s_n}_{p_n}})$ are mutually independent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2362a7c914b9f8a3015e4c5c2628628019deb82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
