# irreducible_Phi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79ce2b28fb13359b00642d8e3d260cc9bdaad170",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b02ddf23-9e16-0c72-a069-eb52690b3108",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4772ad8-63b3-c4ae-b7da-5fd7e430626f",
  "kind": "theorem",
  "lexical_name": "irreducible_Phi",
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
  "slug": "irreducible-phi--c93f42b9c0aabac01ecbc534",
  "source": {
    "blob": "79ce2b28fb13359b00642d8e3d260cc9bdaad170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 86,
    "path": "GRWTSK/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c93f42b9c0aabac01ecbc534c42b9e82e0f3bf057a600bfc98fc69c2ffa5ffbd",
  "verification": {
    "reference": "docs/verification/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4772ad8-63b3-c4ae-b7da-5fd7e430626f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irreducible_Phi (p : ℕ) (hp : p.Prime) (hpa : p ∣ a) (hpb : p ∣ b) (hp2b : ¬p ^ 2 ∣ b) :
    Irreducible (Φ ℚ a b) := by
  rw [← map_Phi a b (Int.castRingHom ℚ), ← IsPrimitive.Int.irreducible_iff_irreducible_map_cast]
  apply irreducible_of_eisenstein_criterion
  · rwa [span_singleton_prime (Int.coe_nat_ne_zero.mpr hp.ne_zero), Int.prime_iff_natAbs_prime]
  · rw [leadingCoeff_Phi, mem_span_singleton]
    exact_mod_cast mt Nat.dvd_one.mp hp.ne_one
  · intro n hn
    rw [mem_span_singleton]
    rw [degree_Phi] at hn; norm_cast at hn
    interval_cases hn : n <;>
    simp only [Φ, coeff_X_pow, coeff_C, Int.coe_nat_dvd.mpr, hpb, if_true, coeff_C_mul, if_false,
      coeff_X_zero, hpa, coeff_add, zero_add, mul_zero, coeff_sub, add_zero, zero_sub, dvd_neg,
      neg_zero, dvd_mul_of_dvd_left]
  · simp only [degree_Phi, ← WithBot.coe_zero, WithBot.coe_lt_coe, Nat.succ_pos']
  · rw [coeff_zero_Phi, span_singleton_pow, mem_span_singleton]
    exact mt Int.coe_nat_dvd.mp hp2b
  all_goals exact Monic.isPrimitive (monic_Phi a b)
#align abel_ruffini.irreducible_Phi AbelRuffini.irreducible_Phi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79ce2b28fb13359b00642d8e3d260cc9bdaad170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
