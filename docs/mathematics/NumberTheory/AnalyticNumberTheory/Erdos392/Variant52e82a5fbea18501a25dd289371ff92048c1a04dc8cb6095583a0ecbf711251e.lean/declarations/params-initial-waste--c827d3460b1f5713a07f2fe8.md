# Params.initial.waste

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:589d8c43-7279-16e2-9192-69722136cb83",
  "kind": "theorem",
  "lexical_name": "Params.initial.waste",
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
  "slug": "params-initial-waste--c827d3460b1f5713a07f2fe8",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1026,
    "line": 999,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c827d3460b1f5713a07f2fe89f51cb8178cd798ede332087b335db0e03c9885a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:589d8c43-7279-16e2-9192-69722136cb83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 999–1026.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Params.initial.waste (P : Params) :
    P.initial.waste ≤ P.n * log (1 - 1/(P.M : ℝ))⁻¹ := by
  unfold Factorization.waste Factorization.sum
  have hM_pos : (0 : ℝ) < P.M := cast_pos.mpr (Nat.zero_lt_of_lt P.hM)
  have h_denom_pos : 0 < 1 - 1 / (P.M : ℝ) := by
    rw [sub_pos, div_lt_one hM_pos]; exact one_lt_cast.mpr P.hM
  have h_inv_ge_one : 1 ≤ (1 - 1 / (P.M : ℝ))⁻¹ := by
    rw [one_le_inv₀ h_denom_pos]; linarith [one_div_pos.mpr hM_pos]
  have h_each : ∀ m ∈ P.initial.a, log ((P.n : ℝ) / m) ≤ log (1 - 1 / (P.M : ℝ))⁻¹ :=
    fun m hm ↦ log_le_log (div_pos (Nat.cast_pos.mpr (Nat.lt_of_lt_of_le (P.initial.hpos m hm)
      (mem_range P m hm).2.le)) (Nat.cast_pos.mpr (P.initial.hpos m hm))) (div_le P m hm)
  calc (P.initial.a.map fun (m : ℕ) ↦ log ((P.n : ℝ) / m)).sum
      ≤ P.initial.a.card * log (1 - 1 / (P.M : ℝ))⁻¹ := by
        rw [← nsmul_eq_mul,
          ← Multiset.card_map (fun (m : ℕ) ↦ log ((P.n : ℝ) / m)) P.initial.a]
        refine Multiset.sum_le_card_nsmul _ _ fun x hx ↦ ?_
        obtain ⟨m, hm, rfl⟩ := Multiset.mem_map.mp hx
        exact h_each m hm
    _ ≤ P.n * log (1 - 1 / (P.M : ℝ))⁻¹ := by
        gcongr
        · exact Real.log_nonneg h_inv_ge_one
        · exact_mod_cast card P

@[blueprint
  "initial-factorization-large-prime-le"
  (statement := /-- A large prime $p \geq n/L$ cannot be in surplus. -/)
  (proof := /-- No such prime can be present in the factorization.-/)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L999).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
