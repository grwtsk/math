# summable_mul_of_bigO_atTop'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b181e3fb-d99c-e23a-6108-717b5345e929",
  "kind": "theorem",
  "lexical_name": "summable_mul_of_bigO_atTop'",
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
  "slug": "summable-mul-of-bigo-attop--ef3ef68529bcbabfca2dd78e",
  "source": {
    "blob": "cec01fe997c5e206a52de1c5096b54955e018d5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 360,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef3ef68529bcbabfca2dd78ed4bc8f573a9271836dbb56d8421c6a3fc0a2e1c0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b181e3fb-d99c-e23a-6108-717b5345e929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_mul_of_bigO_atTop'
    (hf_diff : ∀ t ∈ Set.Ici 1, DifferentiableAt ℝ (fun x ↦ ‖f x‖) t)
    (hf_int : LocallyIntegrableOn (deriv (fun t ↦ ‖f t‖)) (Set.Ici 1))
    (h_bdd : (fun n : ℕ ↦ ‖f n‖ * ∑ k ∈ Icc 1 n, ‖c k‖) =O[atTop] fun _ ↦ (1 : ℝ))
    {g : ℝ → ℝ} (hg₁ : (fun t ↦ deriv (fun t ↦ ‖f t‖) t * ∑ k ∈ Icc 1 ⌊t⌋₊, ‖c k‖) =O[atTop] g)
    (hg₂ : IntegrableAtFilter g atTop) :
    Summable (fun n : ℕ ↦ f n * c n) := by
  have h : ∀ n, ∑ k ∈ Icc 1 n, ‖c k‖ = ∑ k ∈ Icc 0 n, ‖(fun n ↦ if n = 0 then 0 else c n) k‖ := by
    intro n
    rw [Icc_eq_cons_Ioc n.zero_le, sum_cons, ← Icc_add_one_left_eq_Ioc, zero_add]
    simp_rw [if_pos, norm_zero, zero_add]
    exact Finset.sum_congr rfl fun _ h ↦ by rw [if_neg (zero_lt_one.trans_le (mem_Icc.mp h).1).ne']
  simp_rw [h] at h_bdd hg₁
  refine Summable.congr_atTop (summable_mul_of_bigO_atTop_aux (fun n ↦ if n = 0 then 0 else c n) 1
    h_bdd (by rwa [Nat.cast_one]) (fun n ↦ ?_) hg₁ hg₂) ?_
  · exact_mod_cast sum_mul_eq_sub_integral_mul₀' _ (by simp only [reduceIte, norm_zero]) n
      (fun _ ht ↦ hf_diff _ ht.1)
      (hf_int.integrableOn_compact_subset Set.Icc_subset_Ici_self isCompact_Icc)
  · filter_upwards [eventually_ne_atTop 0] with k hk
    simp_rw [if_neg hk]

end summable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cec01fe997c5e206a52de1c5096b54955e018d5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
