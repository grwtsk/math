# exists_even_smooth_test_positive_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3733806a-5e24-62b5-7126-7fd8b212ab9c",
  "kind": "theorem",
  "lexical_name": "exists_even_smooth_test_positive_pairing",
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
  "slug": "exists-even-smooth-test-positive-pairing--40c7026527fe41bb31f99c54",
  "source": {
    "blob": "53159b59a2f060d91e5c83a29746931dbceee1ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 25,
    "path": "GRWTSK/Analysis/TestFunctions/EvenSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40c7026527fe41bb31f99c541990acc487279fb2308b450d96f5f6a8cac3ff39",
  "verification": {
    "reference": "docs/verification/Analysis/TestFunctions/EvenSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3733806a-5e24-62b5-7126-7fd8b212ab9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_even_smooth_test_positive_pairing {f : ℝ → ℝ} {s : Set ℝ}
    (hf : Continuous f) (heven : Function.Even f) (hs : IsOpen s)
    (hneg : ∀ t ∈ s, -t ∈ s) {x : ℝ} (hx : x ∈ s) (hfx : f x ≠ 0) :
    ∃ g : ℝ → ℝ, Function.Even g ∧ HasCompactSupport g ∧ tsupport g ⊆ s ∧
      ContDiff ℝ ∞ g ∧ Integrable (fun t ↦ f t * g t) ∧ 0 < ∫ t, f t * g t := by
  obtain ⟨g, hc, hsupport, hsmooth, hi, hp⟩ :=
    exists_smooth_test_positive_pairing hf hs hx hfx
  have hcneg : HasCompactSupport (fun t ↦ g (-t)) :=
    hc.comp_homeomorph (Homeomorph.neg ℝ)
  have hsneg : tsupport (fun t ↦ g (-t)) ⊆ s := by
    intro t ht
    have htneg : -t ∈ tsupport g :=
      tsupport_comp_subset_preimage g continuous_neg ht
    simpa only [neg_neg] using hneg (-t) (hsupport htneg)
  have hsymcont := hf.mul (hsmooth.continuous.add (hsmooth.continuous.comp continuous_neg))
  have hisym : Integrable (fun t ↦ f t * (g t + g (-t))) :=
    hsymcont.integrable_of_hasCompactSupport ((hc.add hcneg).mul_left)
  have hnegcont := hf.mul (hsmooth.continuous.comp continuous_neg)
  have hineg : Integrable (fun t ↦ f t * g (-t)) :=
    hnegcont.integrable_of_hasCompactSupport hcneg.mul_left
  have hpair : (∫ t, f t * g (-t)) = ∫ t, f t * g t := by
    calc
      (∫ t, f t * g (-t)) = ∫ t, f (-t) * g (-t) := by
        apply integral_congr_ae
        exact Filter.Eventually.of_forall (fun t ↦ by simp only [heven t])
      _ = ∫ t, f t * g t := integral_neg_eq_self (fun t ↦ f t * g t) volume
  refine ⟨fun t ↦ g t + g (-t), ?_, hc.add hcneg, ?_,
    hsmooth.add (hsmooth.comp contDiff_id.neg), hisym, ?_⟩
  · intro t
    simp only [neg_neg, add_comm]
  · exact (tsupport_add g (fun t ↦ g (-t))).trans (union_subset hsupport hsneg)
  · have hsum : (∫ t, f t * (g t + g (-t))) =
        (∫ t, f t * g t) + ∫ t, f t * g (-t) := by
      simp_rw [mul_add]
      exact integral_add hi hineg
    rw [hsum, hpair]
    linarith

/-- Failure of interior C² supplies an even smooth separator for an even residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TestFunctions/EvenSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TestFunctions/EvenSeparation.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53159b59a2f060d91e5c83a29746931dbceee1ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
