# fejer_sum_eq_integral_alt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcf74389-0f91-2435-d714-6e3349d0cb48",
  "kind": "theorem",
  "lexical_name": "fejer_sum_eq_integral_alt",
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
  "slug": "fejer-sum-eq-integral-alt--869de663ebcf76de61edaf1b",
  "source": {
    "blob": "05981873a9aec6e28dbb56a9d9fb76c5e5eaa1c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 604,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:869de663ebcf76de61edaf1bc39171718811efe38079ab5d92452a70674932e8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcf74389-0f91-2435-d714-6e3349d0cb48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 604–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_sum_eq_integral_alt {f : ℝ → ℝ} (hf_int : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (hf_per : Function.Periodic f (2 * Real.pi)) (n : ℕ) (x : ℝ) :
    fejer_sum f n x = (1 / Real.pi) * ∫ t in (-Real.pi)..Real.pi, f (x - t) * fejer_kernel n t := by
      convert fejer_sum_eq_integral hf_int hf_per n x using 1;
      -- By substitution using $ u = x - t $, we can rewrite the integral.
      have h_subst : ∀ a b : ℝ, ∫ t in a..b, f (x - t) * fejer_kernel n t = ∫ u in (x - b).. (x - a), f u * fejer_kernel n (x - u) := by
        norm_num [ ← intervalIntegral.integral_comp_sub_left ];
      norm_num [ h_subst ];
      convert integral_periodic_shift _ _ _ _ using 2;
      · intro u; simp +decide [ hf_per, fejer_kernel ];
        simp +decide [ dirichlet_kernel, hf_per ];
        norm_num [ hf_per, mul_add, mul_sub, Real.cos_add, Real.cos_sub ];
        norm_num [ show ∀ k : ℕ, Real.sin ( k * ( 2 * Real.pi ) ) = 0 from fun k => Real.sin_eq_zero_iff.mpr ⟨ k * 2, by push_cast; ring ⟩, hf_per ];
        exact Or.inl <| hf_per u;
      · apply_rules [ IntervalIntegrable.mul_continuousOn, hf_int ];
        refine' Continuous.continuousOn _;
        refine' Continuous.mul _ _;
        · continuity;
        · refine' continuous_finset_sum _ fun i hi => _;
          exact continuous_const.add ( continuous_finset_sum _ fun j hj => Real.continuous_cos.comp ( by continuity ) )

/-
Lemma: The integrand f(x-t)K_n(t) is 2pi-periodic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean#L604).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05981873a9aec6e28dbb56a9d9fb76c5e5eaa1c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
