# lamLogPow_le

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
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e70ca23-0926-4b20-42c4-5998021c976a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aead504b-0766-2f60-35f7-e01a5cf0a124",
  "kind": "lemma",
  "lexical_name": "lamLogPow_le",
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
  "slug": "lamlogpow-le--6ec2557a64954cdcffc01a06",
  "source": {
    "blob": "c09349957b62a9be3d79786a903b80e6048ac221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 241,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ec2557a64954cdcffc01a06770440b8e8a0d48af7fa8cbf643615a7d62a86c0",
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

Occurrence: `result:aead504b-0766-2f60-35f7-e01a5cf0a124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lamLogPow_le : ∀ (k n : ℕ), (lamLog ^ k) n ≤ Real.log n ^ k * (Λ ^ k) n
  | 0, n => by simp
  | k + 1, n => by
      rcases Nat.eq_zero_or_pos n with rfl | hn
      · simp
      rw [pow_succ lamLog k, pow_succ (Λ : ArithmeticFunction ℝ) k, pow_succ (Real.log (n:ℝ)) k,
        ArithmeticFunction.mul_apply, ArithmeticFunction.mul_apply, mul_sum]
      refine sum_le_sum fun x hx => ?_
      have hx1 : x.1 ∣ n := Nat.fst_mem_divisors_of_mem_antidiagonal hx |> Nat.dvd_of_mem_divisors
      have hx2 : x.2 ∣ n := Nat.snd_mem_divisors_of_mem_antidiagonal hx |> Nat.dvd_of_mem_divisors
      have hx1pos : 0 < x.1 := Nat.pos_of_dvd_of_pos hx1 hn
      have hx2pos : 0 < x.2 := Nat.pos_of_dvd_of_pos hx2 hn
      have hl1 : Real.log x.1 ≤ Real.log n :=
        Real.log_le_log (by exact_mod_cast hx1pos) (by exact_mod_cast Nat.le_of_dvd hn hx1)
      have hl2 : Real.log x.2 ≤ Real.log n :=
        Real.log_le_log (by exact_mod_cast hx2pos) (by exact_mod_cast Nat.le_of_dvd hn hx2)
      have h01 : 0 ≤ Real.log x.1 := Real.log_natCast_nonneg _
      have h02 : 0 ≤ Real.log x.2 := Real.log_natCast_nonneg _
      rw [lamLog_apply]
      calc (lamLog ^ k) x.1 * (Λ x.2 * Real.log x.2)
          ≤ (Real.log x.1 ^ k * (Λ ^ k) x.1) * (Λ x.2 * Real.log x.2) :=
            mul_le_mul_of_nonneg_right (lamLogPow_le k x.1)
              (mul_nonneg ArithmeticFunction.vonMangoldt_nonneg h02)
        _ ≤ (Real.log n ^ k * (Λ ^ k) x.1) * (Λ x.2 * Real.log n) :=
            mul_le_mul (mul_le_mul_of_nonneg_right (pow_le_pow_left₀ h01 hl1 k) (lamPow_nonneg _ _))
              (mul_le_mul_of_nonneg_left hl2 ArithmeticFunction.vonMangoldt_nonneg)
              (mul_nonneg ArithmeticFunction.vonMangoldt_nonneg h02)
              (mul_nonneg (pow_nonneg (Real.log_natCast_nonneg n) k) (lamPow_nonneg _ _))
        _ = Real.log n ^ k * Real.log n * ((Λ ^ k) x.1 * Λ x.2) := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09349957b62a9be3d79786a903b80e6048ac221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
