# G_circ_mul_cpow_integrable_vseg_general

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ec4a79c-f7f3-8b11-2abd-ea20ae09a596",
  "kind": "lemma",
  "lexical_name": "G_circ_mul_cpow_integrable_vseg_general",
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
  "slug": "g-circ-mul-cpow-integrable-vseg-general--705d316c448e67d2ebd87441",
  "source": {
    "blob": "46d07824909f05f0ffe5b70a4f74a8f7078179e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1579,
    "line": 1547,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:705d316c448e67d2ebd87441adb0ea00ea2197a42de357a7c07a59b699aa5a1b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ec4a79c-f7f3-8b11-2abd-ea20ae09a596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1547–1579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma G_circ_mul_cpow_integrable_vseg_general (l : LadderParams) (G_circ : ℂ → ℂ)
    (hG_circ_mero : MeromorphicOn G_circ l.R)
    (x₀ x : ℝ) (hx₀ : 1 ≤ x₀) (hx : x₀ < x) (S : Set ℂ)
    (h_subset_R : S ⊆ l.R)
    (hGc_nopoles : ∀ s ∈ S, 0 ≤ meromorphicOrderAt G_circ s)
    (c a b : ℝ) (hab : a ≤ b)
    (h_maps_S : ∀ t ∈ Set.Icc a b, c + t * Complex.I ∈ S) :
    IntervalIntegrable (fun t : ℝ ↦ (G_circ (c + t * Complex.I) * (x : ℂ) ^ (c + t * Complex.I)) * Complex.I) volume a b := by
  let H_upper := fun (t : ℝ) ↦
    toMeromorphicNFOn G_circ l.R (c + t * Complex.I) *
    (x : ℂ) ^ (c + t * Complex.I) * Complex.I
  have h_maps_R : ∀ t ∈ Set.uIcc a b, c + t * Complex.I ∈ l.R := by
    intro t ht
    rw [Set.uIcc_of_le hab] at ht
    exact h_subset_R (h_maps_S t ht)
  have h_ae : (fun t : ℝ ↦ G_circ (c + t * Complex.I))
      =ᵐ[MeasureTheory.volume.restrict (Set.uIoc a b)]
      (fun t : ℝ ↦ toMeromorphicNFOn G_circ l.R (c + t * Complex.I)) :=
    ae_eq_NF_vseg_general l c h_maps_R hG_circ_mero
  have h_ae_full : (fun t : ℝ ↦ (G_circ (c + t * Complex.I) * (x : ℂ) ^ (c + t * Complex.I)) * Complex.I)
      =ᵐ[MeasureTheory.volume.restrict (Set.uIoc a b)] H_upper := by
    filter_upwards [h_ae] with t ht
    dsimp [H_upper]
    rw [ht]
  refine IntervalIntegrable.congr_ae ?_ h_ae_full.symm
  refine ContinuousOn.intervalIntegrable ?_
  rw [Set.uIcc_of_le hab]
  have h_cont_sum_NF : ContinuousOn (toMeromorphicNFOn G_circ l.R) S :=
    continuousOn_toMeromorphicNFOn_subset l h_subset_R hG_circ_mero hGc_nopoles
  have h_maps : Set.MapsTo (fun t : ℝ ↦ c + t * Complex.I) (Set.Icc a b) S := h_maps_S
  exact (ContinuousOn.comp h_cont_sum_NF (Continuous.continuousOn (by fun_prop)) h_maps).mul
    (continuousOn_cpow_vertical_path hx₀ hx c _) |>.mul_const Complex.I

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean#L1547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d07824909f05f0ffe5b70a4f74a8f7078179e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
