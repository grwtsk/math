# Params.initial.waste

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 991,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fabe53c-6999-f5f6-e366-59da244f7201",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4baef162-ac72-322d-6895-ceee8331810e",
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
  "slug": "params-initial-waste--be2c8650aad038081679ed9e",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1018,
    "line": 991,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be2c8650aad038081679ed9e996d04d70ce1d039a9481876e9b920ba96fb4f5b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4baef162-ac72-322d-6895-ceee8331810e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 991–1018.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L991).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
