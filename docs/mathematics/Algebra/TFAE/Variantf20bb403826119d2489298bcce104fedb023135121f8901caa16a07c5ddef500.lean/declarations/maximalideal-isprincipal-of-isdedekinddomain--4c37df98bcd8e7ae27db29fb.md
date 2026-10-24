# maximalIdeal_isPrincipal_of_isDedekindDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e019efb-d2f9-f98d-c8f9-5a908828346b",
  "kind": "theorem",
  "lexical_name": "maximalIdeal_isPrincipal_of_isDedekindDomain",
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
  "slug": "maximalideal-isprincipal-of-isdedekinddomain--4c37df98bcd8e7ae27db29fb",
  "source": {
    "blob": "21db9888471acfc028f5bff7e67dba94cf6e776b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 103,
    "path": "GRWTSK/Algebra/TFAE/Variantf20bb403826119d2489298bcce104fedb023135121f8901caa16a07c5ddef500.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c37df98bcd8e7ae27db29fb99a9225c0515f25c17687b290e14e9b5296a3563",
  "verification": {
    "reference": "docs/verification/Algebra/TFAE/Variantf20bb403826119d2489298bcce104fedb023135121f8901caa16a07c5ddef500.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e019efb-d2f9-f98d-c8f9-5a908828346b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maximalIdeal_isPrincipal_of_isDedekindDomain [IsLocalRing R] [IsDedekindDomain R] :
    (maximalIdeal R).IsPrincipal := by
  classical
  by_cases ne_bot : maximalIdeal R = ⊥
  · rw [ne_bot]; infer_instance
  obtain ⟨a, ha₁, ha₂⟩ : ∃ a ∈ maximalIdeal R, a ≠ (0 : R) := by
    by_contra! h'; apply ne_bot; rwa [eq_bot_iff]
  have hle : Ideal.span {a} ≤ maximalIdeal R := by rwa [Ideal.span_le, Set.singleton_subset_iff]
  have : (Ideal.span {a}).radical = maximalIdeal R := by
    rw [Ideal.radical_eq_sInf]
    apply le_antisymm
    · exact sInf_le ⟨hle, inferInstance⟩
    · refine
        le_sInf fun I hI =>
          (eq_maximalIdeal <| hI.2.isMaximal (fun e => ha₂ ?_)).ge
      rw [← Ideal.span_singleton_eq_bot, eq_bot_iff, ← e]; exact hI.1
  have : ∃ n, maximalIdeal R ^ n ≤ Ideal.span {a} := by
    rw [← this]; apply Ideal.exists_radical_pow_le_of_fg; exact IsNoetherian.noetherian _
  rcases hn : Nat.find this with - | n
  · have := Nat.find_spec this
    rw [hn, pow_zero, Ideal.one_eq_top] at this
    exact (Ideal.IsMaximal.ne_top inferInstance (eq_top_iff.mpr <| this.trans hle)).elim
  obtain ⟨b, hb₁, hb₂⟩ : ∃ b ∈ maximalIdeal R ^ n, b ∉ Ideal.span {a} := by
    by_contra! h'; rw [Nat.find_eq_iff] at hn; exact hn.2 n n.lt_succ_self fun x hx => h' x hx
  have hb₃ : ∀ m ∈ maximalIdeal R, ∃ k : R, k * a = b * m := by
    intro m hm; rw [← Ideal.mem_span_singleton']; apply Nat.find_spec this
    rw [hn, pow_succ]; exact Ideal.mul_mem_mul hb₁ hm
  have hb₄ : b ≠ 0 := by rintro rfl; apply hb₂; exact zero_mem _
  let K := FractionRing R
  let x : K := algebraMap R K b / algebraMap R K a
  let M := Submodule.map (Algebra.linearMap R K) (maximalIdeal R)
  have ha₃ : algebraMap R K a ≠ 0 := IsFractionRing.to_map_eq_zero_iff.not.mpr ha₂
  by_cases hx : ∀ y ∈ M, x * y ∈ M
  · have := isIntegral_of_smul_mem_submodule M ?_ ?_ x hx
    · obtain ⟨y, e⟩ := IsIntegrallyClosed.algebraMap_eq_of_integral this
      refine (hb₂ (Ideal.mem_span_singleton'.mpr ⟨y, ?_⟩)).elim
      apply IsFractionRing.injective R K
      rw [map_mul, e, div_mul_cancel₀ _ ha₃]
    · rw [Submodule.ne_bot_iff]; refine ⟨_, ⟨a, ha₁, rfl⟩, ?_⟩
      exact (IsFractionRing.to_map_eq_zero_iff (K := K)).not.mpr ha₂
    · apply Submodule.FG.map; exact IsNoetherian.noetherian _
  · have :
        (M.map (DistribSMul.toLinearMap R K x)).comap (Algebra.linearMap R K) = ⊤ := by
      contrapose! hx with h
      rintro m' ⟨m, hm, rfl : algebraMap R K m = m'⟩
      obtain ⟨k, hk⟩ := hb₃ m hm
      have hk' : x * algebraMap R K m = algebraMap R K k := by
        rw [← mul_div_right_comm, ← map_mul, ← hk, map_mul, mul_div_cancel_right₀ _ ha₃]
      exact ⟨k, le_maximalIdeal h ⟨_, ⟨_, hm, rfl⟩, hk'⟩, hk'.symm⟩
    obtain ⟨y, hy₁, hy₂⟩ : ∃ y ∈ maximalIdeal R, b * y = a := by
      rw [Ideal.eq_top_iff_one, Submodule.mem_comap] at this
      obtain ⟨_, ⟨y, hy, rfl⟩, hy' : x * algebraMap R K y = algebraMap R K 1⟩ := this
      rw [map_one, ← mul_div_right_comm, div_eq_one_iff_eq ha₃, ← map_mul] at hy'
      exact ⟨y, hy, IsFractionRing.injective R K hy'⟩
    refine ⟨⟨y, ?_⟩⟩
    apply le_antisymm
    · intro m hm; obtain ⟨k, hk⟩ := hb₃ m hm; rw [← hy₂, mul_comm, mul_assoc] at hk
      rw [← mul_left_cancel₀ hb₄ hk, mul_comm]; exact Ideal.mem_span_singleton'.mpr ⟨_, rfl⟩
    · rwa [Submodule.span_le, Set.singleton_subset_iff]

/--
Let `(R, m, k)` be a Noetherian local domain (possibly a field).
The following are equivalent:
0. `R` is a PID
1. `R` is a valuation ring
2. `R` is a Dedekind domain
3. `R` is integrally closed with at most one non-zero prime ideal
4. `m` is principal
5. `dimₖ m/m² ≤ 1`
6. Every nonzero ideal is a power of `m`.

Also see `IsDiscreteValuationRing.TFAE` for a version assuming `¬ IsField R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TFAE/Variantf20bb403826119d2489298bcce104fedb023135121f8901caa16a07c5ddef500.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TFAE/Variantf20bb403826119d2489298bcce104fedb023135121f8901caa16a07c5ddef500.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21db9888471acfc028f5bff7e67dba94cf6e776b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
