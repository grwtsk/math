# summable_pow_mul_geometric_of_norm_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3ce8658b810edf0d3b6f24e69a5b71a1e4ab488",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 467,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af209556-4815-6114-2d17-bb28d2a137f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbfbceee-b911-2dca-5cd5-254279afc660",
  "kind": "theorem",
  "lexical_name": "summable_pow_mul_geometric_of_norm_lt_one",
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
  "slug": "summable-pow-mul-geometric-of-norm-lt-one--3dc6d8c7f8ce76df97c3ed02",
  "source": {
    "blob": "a3ce8658b810edf0d3b6f24e69a5b71a1e4ab488",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 467,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dc6d8c7f8ce76df97c3ed022515372ca4e3ffaf0e5291b58727addc345370be",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbfbceee-b911-2dca-5cd5-254279afc660`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_pow_mul_geometric_of_norm_lt_one (k : ℕ) {r : R} (hr : ‖r‖ < 1) :
    Summable (fun n ↦ (n : R) ^ k * r ^ n : ℕ → R) := by
  refine Nat.strong_induction_on k fun k hk => ?_
  obtain ⟨a, ha⟩ : ∃ (a : ℕ → ℕ), ∀ n, (n + k).descFactorial k
      = n ^ k + ∑ i ∈ range k, a i * n ^ i := by
    let P : Polynomial ℕ := (ascPochhammer ℕ k).comp (Polynomial.X + C 1)
    refine ⟨fun i ↦ P.coeff i, fun n ↦ ?_⟩
    have mP : Monic P := Monic.comp_X_add_C (monic_ascPochhammer ℕ k) _
    have dP : P.natDegree = k := by
      simp only [P, natDegree_comp, ascPochhammer_natDegree, mul_one, natDegree_X_add_C]
    have A : (n + k).descFactorial k = P.eval n := by
      have : n + 1 + k - 1 = n + k := by omega
      simp [P, ascPochhammer_nat_eq_descFactorial, this]
    conv_lhs => rw [A, mP.as_sum, dP]
    simp [eval_finset_sum]
  have : Summable (fun n ↦ (n + k).descFactorial k * r ^ n
      - ∑ i ∈ range k, a i * n ^ (i : ℕ) * r ^ n) := by
    apply (summable_descFactorial_mul_geometric_of_norm_lt_one k hr).sub
    apply summable_sum (fun i hi ↦ ?_)
    simp_rw [mul_assoc]
    simp only [Finset.mem_range] at hi
    exact (hk _ hi).mul_left _
  convert this using 1
  ext n
  simp [ha n, add_mul, sum_mul]

/-- If `‖r‖ < 1`, then `∑' n : ℕ, n * r ^ n = r / (1 - r) ^ 2`, `HasSum` version in a general ring
with summable geometric series. For a version in a field, using division instead of `Ring.inverse`,
see `hasSum_coe_mul_geometric_of_norm_lt_one`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3ce8658b810edf0d3b6f24e69a5b71a1e4ab488` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
