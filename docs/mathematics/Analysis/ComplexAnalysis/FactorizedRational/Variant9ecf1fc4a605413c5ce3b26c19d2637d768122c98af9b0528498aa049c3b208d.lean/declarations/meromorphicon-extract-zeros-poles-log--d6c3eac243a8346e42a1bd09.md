# MeromorphicOn.extract_zeros_poles_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00075985-8f42-a232-ccec-9a17c5a699ac",
  "kind": "theorem",
  "lexical_name": "MeromorphicOn.extract_zeros_poles_log",
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
  "slug": "meromorphicon-extract-zeros-poles-log--d6c3eac243a8346e42a1bd09",
  "source": {
    "blob": "dbe66c7dd187061a3d6beccaad0ace845f6a120a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 253,
    "path": "GRWTSK/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6c3eac243a8346e42a1bd0943a89ffebeed6e87c9a0b148a7fd42b4b0070eb9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00075985-8f42-a232-ccec-9a17c5a699ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicOn.extract_zeros_poles_log {f g : 𝕜 → E} {D : Function.locallyFinsuppWithin U ℤ}
    (hg : ∀ u : U, g u ≠ 0) (h : f =ᶠ[codiscreteWithin U] (∏ᶠ u, (· - u) ^ D u) • g) :
    (log ‖f ·‖) =ᶠ[codiscreteWithin U] ∑ᶠ u, (D u * log ‖· - u‖) + (log ‖g ·‖) := by
  -- Identify support of the sum in the goal
  have t₁ : (fun u ↦ (D u * log ‖· - u‖)).support = D.support := by
    ext u
    rw [← not_iff_not]
    simp only [Function.mem_mulSupport, ne_eq, not_not, Function.mem_support, Decidable.not_not]
    constructor <;> intro hx
    · obtain ⟨y, hy⟩ := NormedField.exists_one_lt_norm 𝕜
      have := congrFun hx (y + u)
      simp only [add_sub_cancel_right, Pi.zero_apply, mul_eq_zero, Int.cast_eq_zero, log_eq_zero,
        norm_eq_zero] at this
      rcases this with h | h | h | h
      · assumption
      · simp only [h, norm_zero] at hy
        linarith
      · simp only [h, lt_self_iff_false] at hy
      · simp only [h, lt_neg_self_iff] at hy
        linarith
    · simp_all [Pi.zero_def]
  -- Trivial case: the support of D is infinite
  by_cases h₃f : D.support.Finite
  case neg =>
    rw [finsum_of_infinite_support (by simpa [t₁] using h₃f)]
    rw [finprod_of_infinite_mulSupport (by simpa [mulSupport] using h₃f)] at h
    filter_upwards [h] with x hx
    simp [hx]
  -- General case
  filter_upwards [h, D.eq_zero_codiscreteWithin, self_mem_codiscreteWithin U] with z hz h₂z h₃z
  rw [Pi.zero_apply] at h₂z
  rw [hz, finprod_eq_prod_of_mulSupport_subset (s := h₃f.toFinset) _
    (by simp_all [mulSupport]), finsum_eq_sum_of_support_subset (s := h₃f.toFinset) _ (by simp_all)]
  have : ∀ x ∈ h₃f.toFinset, ‖z - x‖ ^ D x ≠ 0 := by
    intro x hx
    rw [Finite.mem_toFinset, Function.mem_support] at hx
    rw [ne_eq, zpow_eq_zero_iff hx, norm_eq_zero, sub_eq_zero, eq_comm]
    apply ne_of_apply_ne D
    rwa [h₂z]
  simp only [Pi.smul_apply', Finset.prod_apply, Pi.pow_apply, norm_smul, norm_prod, norm_zpow]
  rw [log_mul (Finset.prod_ne_zero_iff.2 this) (by simp [hg ⟨z, h₃z⟩]), log_prod _ _ this]
  simp [log_zpow]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbe66c7dd187061a3d6beccaad0ace845f6a120a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
