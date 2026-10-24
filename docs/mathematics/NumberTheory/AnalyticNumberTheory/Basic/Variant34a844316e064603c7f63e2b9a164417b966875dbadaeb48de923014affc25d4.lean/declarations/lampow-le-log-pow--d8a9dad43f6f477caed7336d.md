# lamPow_le_log_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c09349957b62a9be3d79786a903b80e6048ac221",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42f77960-cb22-1b04-4811-572a43324e3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec6cae66-52b9-994d-9765-545d38db788e",
  "kind": "lemma",
  "lexical_name": "lamPow_le_log_pow",
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
  "slug": "lampow-le-log-pow--d8a9dad43f6f477caed7336d",
  "source": {
    "blob": "c09349957b62a9be3d79786a903b80e6048ac221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 202,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8a9dad43f6f477caed7336de84529edb5d7da0c79e30e344564eee3236baf1d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec6cae66-52b9-994d-9765-545d38db788e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lamPow_le_log_pow : ∀ (m n : ℕ), (Λ ^ m) n ≤ Real.log n ^ m
  | 0, n => by
      rw [pow_zero, pow_zero, ArithmeticFunction.one_apply]
      split_ifs <;> norm_num
  | m + 1, n => by
      rcases Nat.eq_zero_or_pos n with rfl | hn
      · simp
      rw [pow_succ, ArithmeticFunction.mul_apply]
      have hlogn : 0 ≤ Real.log n := Real.log_natCast_nonneg n
      calc ∑ x ∈ n.divisorsAntidiagonal, (Λ ^ m) x.1 * Λ x.2
          ≤ ∑ x ∈ n.divisorsAntidiagonal, Real.log n ^ m * Λ x.2 := by
            refine sum_le_sum fun x hx => ?_
            refine mul_le_mul_of_nonneg_right ?_ ArithmeticFunction.vonMangoldt_nonneg
            refine (lamPow_le_log_pow m x.1).trans ?_
            have hx1 : x.1 ∣ n := Nat.fst_mem_divisors_of_mem_antidiagonal hx |> Nat.dvd_of_mem_divisors
            have hx1pos : 0 < x.1 := Nat.pos_of_dvd_of_pos hx1 hn
            exact pow_le_pow_left₀ (Real.log_natCast_nonneg _)
              (Real.log_le_log (by exact_mod_cast hx1pos) (by exact_mod_cast Nat.le_of_dvd hn hx1)) m
        _ = Real.log n ^ m * ∑ x ∈ n.divisorsAntidiagonal, Λ x.2 := by rw [mul_sum]
        _ = Real.log n ^ m * Real.log n := by
            rw [Nat.sum_divisorsAntidiagonal' (f := fun _ b => Λ b), ArithmeticFunction.vonMangoldt_sum]
        _ = Real.log n ^ (m + 1) := by ring

/-- lamLogConv j n ≤ log n · Λ^{∗(j+1)}(n)  (bound log a ≤ log n on the (Λ·log)-factor). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09349957b62a9be3d79786a903b80e6048ac221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
