# PocklingtonPred.step_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c1b10936ddf9673d6608c8057531ce7b793927a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a05407b-19e3-aae6-1f01-0d64b32eedfc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b337828-796c-aa6e-1a90-7568c9cc8d10",
  "kind": "theorem",
  "lexical_name": "PocklingtonPred.step_pow",
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
  "slug": "pocklingtonpred-step-pow--5552b0e92af9cdae73cf16c3",
  "source": {
    "blob": "3c1b10936ddf9673d6608c8057531ce7b793927a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 178,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5552b0e92af9cdae73cf16c39967cdae621eb1306167c89e080b4392d742c9bf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b337828-796c-aa6e-1a90-7568c9cc8d10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PocklingtonPred.step_pow {N root F₂ p e : ℕ} (hp : p.Prime)
    (ih : PocklingtonPred N root F₂)
    (step : ((predModKR (powModTR root (N.pred.div p) N) N).gcd N).beq 1 :=
      by exact eagerReduce (Eq.refl true))
    (hroot : Nat.blt 0 root = true := by exact eagerReduce (Eq.refl true)) :
    PocklingtonPred N root (F₂.mul (p.pow e)) := by
  by_cases hf₂ : F₂ = 0
  · simp [hf₂]
  by_cases he : e = 0
  · simpa [he]
  by_cases hn : N = 0
  · simp [hn, predModKR, powModTR_eq, powMod] at step
  rw [PocklingtonPred] at ih ⊢
  rw [Nat.mul_eq, Nat.pow_eq]
  rw [Nat.primeFactors_mul hf₂ (pow_ne_zero _ hp.ne_zero), Nat.primeFactors_prime_pow he hp]
  simp_rw [Finset.union_singleton, Finset.forall_mem_insert]
  refine ⟨?_, ih⟩
  simp only [Nat.pred_eq_sub_one, Nat.div_eq_div, Nat.beq_eq] at step
  simp only [Nat.blt_eq] at hroot
  rw [predModKR_eq hn (by rw [powModTR_eq]; exact (Nat.mod_lt _ (by lia)).le),
    ← Nat.add_sub_assoc (by lia), powModTR_eq, powMod] at step
  by_cases hp : root ^ ((N - 1) / p) % N = 0
  · rw [← Nat.dvd_iff_mod_eq_zero] at hp
    obtain ⟨r, hr⟩ := hp
    have : r ≠ 0 := by rintro rfl; rw [mul_zero, pow_eq_zero_iff'] at hr; lia
    replace this := mul_ne_zero hn this
    rw [hr, Nat.gcd_mul_left_sub_left (by lia), Nat.gcd_one_left]
  rwa [add_comm, Nat.add_sub_assoc (by lia), Nat.add_mod_left, Nat.mod_sub_of_le (by lia),
    Nat.mod_mod, ← Nat.gcd_rec, Nat.gcd_comm] at step

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1b10936ddf9673d6608c8057531ce7b793927a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
