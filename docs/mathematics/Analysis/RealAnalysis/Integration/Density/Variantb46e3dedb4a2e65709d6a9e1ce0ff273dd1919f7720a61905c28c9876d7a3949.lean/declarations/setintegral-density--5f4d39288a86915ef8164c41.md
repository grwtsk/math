# setIntegral_density

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d221eb4-4ee4-5686-83d9-f00e42754e04",
  "kind": "lemma",
  "lexical_name": "setIntegral_density",
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
  "slug": "setintegral-density--5f4d39288a86915ef8164c41",
  "source": {
    "blob": "2a49ff4eda35f74082be3ce99933db8f3ab08f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 540,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f4d39288a86915ef8164c41787a4dac098668d3009de6f901d42ea0155de217",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d221eb4-4ee4-5686-83d9-f00e42754e04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_density (hκν : fst κ ≤ ν) [IsFiniteKernel ν]
    (a : α) {s : Set β} (hs : MeasurableSet s) {A : Set γ} (hA : MeasurableSet A) :
    ∫ x in A, density κ ν a x s ∂(ν a) = (κ a).real (A ×ˢ s) := by
  have : IsFiniteKernel κ := isFiniteKernel_of_isFiniteKernel_fst (h := isFiniteKernel_of_le hκν)
  have hgen : ‹MeasurableSpace γ› =
      .generateFrom {s | ∃ n, MeasurableSet[countableFiltration γ n] s} := by
    rw [ofPred_exists, generateFrom_iUnion_measurableSet (countableFiltration γ),
      iSup_countableFiltration]
  have hpi : IsPiSystem {s | ∃ n, MeasurableSet[countableFiltration γ n] s} := by
    rw [ofPred_exists]
    exact isPiSystem_iUnion_of_monotone _
      (fun n ↦ @isPiSystem_measurableSet _ (countableFiltration γ n))
      fun _ _ ↦ (countableFiltration γ).mono
  induction A, hA using induction_on_inter hgen hpi with
  | empty => simp
  | basic s hs =>
    rcases hs with ⟨n, hn⟩
    exact setIntegral_density_of_measurableSet hκν n a hs hn
  | compl A hA hA_eq =>
    have h := integral_add_compl hA (integrable_density hκν a hs)
    rw [hA_eq, integral_density hκν a hs] at h
    have : Aᶜ ×ˢ s = univ ×ˢ s \ A ×ˢ s := by
      rw [prod_sdiff_prod, compl_eq_univ_sdiff]
      simp
    rw [this, measureReal_def,
      measure_sdiff (by intro; simp) (hA.prod hs).nullMeasurableSet (measure_ne_top (κ a) _),
      toReal_sub_of_le (measure_mono (by intro x; simp)) (measure_ne_top _ _)]
    rw [eq_tsub_iff_add_eq_of_le, add_comm]
    · exact h
    · gcongr <;> simp
  | iUnion f hf_disj hf h_eq =>
    rw [integral_iUnion hf hf_disj (integrable_density hκν _ hs).integrableOn]
    simp_rw [h_eq, measureReal_def]
    rw [← tsum_toReal_eq (fun _ ↦ measure_ne_top _ _)]
    congr
    rw [iUnion_prod_const, measure_iUnion]
    · exact hf_disj.mono fun _ _ h ↦ h.set_prod_left _ _
    · exact fun i ↦ (hf i).prod hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a49ff4eda35f74082be3ce99933db8f3ab08f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
