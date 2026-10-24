# selbergWeights_diagonalisation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9ebcce06b6944c9d13099895314b98acc3835c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:205c1ca4-b59a-7e98-4d78-a07cff4bb305",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f43f29b7-6036-dc7c-5b14-bdc541ce4ba1",
  "kind": "theorem",
  "lexical_name": "selbergWeights_diagonalisation",
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
  "slug": "selbergweights-diagonalisation--49497d6310bf2a28716c4108",
  "source": {
    "blob": "d9ebcce06b6944c9d13099895314b98acc3835c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 199,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49497d6310bf2a28716c4108d8d4d72a1e49a577020093b99ff64dabafcdcb5e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f43f29b7-6036-dc7c-5b14-bdc541ce4ba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selbergWeights_diagonalisation (l : ℕ) (hl : l ∈ divisors P) :
    (∑ d ∈ divisors P, if l ∣ d then ν d * γ d else 0) =
      if l ^ 2 ≤ y then g l * μ l * S⁻¹ else 0 := by
  calc
    (∑ d ∈ divisors P, if l ∣ d then ν d * γ d else 0) =
        ∑ d ∈ divisors P, ∑ k ∈ divisors P,
          if l ∣ d ∧ d ∣ k ∧ k ^ 2 ≤ y then g k * S⁻¹ * (μ d:ℝ) else 0 := by
      apply sum_congr rfl; intro d _
      rw [selbergWeights_eq_dvds_sum, ← boole_mul, mul_sum, mul_sum]
      apply sum_congr rfl; intro k _
      rw [mul_ite_zero, ite_zero_mul_ite_zero]
      apply if_ctx_congr Iff.rfl _ (fun _ => rfl);
      intro _; ring
    _ = ∑ k ∈ divisors P, if k ^ 2 ≤ y then
            (∑ d ∈ divisors P, if l ∣ d ∧ d ∣ k then (μ d:ℝ) else 0) * g k * S⁻¹
          else 0 := by
      rw [sum_comm]; apply sum_congr rfl; intro k _
      apply symm
      rw [← boole_mul, sum_mul, sum_mul, mul_sum, sum_congr rfl]
      intro d _
      rw [ite_zero_mul, ite_zero_mul, ite_zero_mul, one_mul, ←ite_and]
      apply if_ctx_congr _ _ (fun _ => rfl)
      · tauto
      intro _; ring
    _ = if l ^ 2 ≤ y then g l * μ l * S⁻¹ else 0 := by
      rw [← sum_ite_eq_of_mem' (divisors P) l (fun _ => if l^2 ≤ y then g l * μ l * S⁻¹ else 0) hl]
      apply sum_congr rfl; intro k hk
      rw [Aux.moebius_inv_dvd_lower_bound_real s.prodPrimes_squarefree l _ (dvd_of_mem_divisors hk),
        ←ite_and, ite_zero_mul, ite_zero_mul, ← ite_and]
      apply if_ctx_congr _ _ fun _ => rfl
      · rw [and_comm, eq_comm]; apply and_congr_right
        intro heq; rw [heq]
      · intro h; rw [h.1]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9ebcce06b6944c9d13099895314b98acc3835c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
