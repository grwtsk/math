# divisors_sum_eq_filtered_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c84911a6-d44f-4201-c8ba-740105e84278",
  "kind": "theorem",
  "lexical_name": "divisors_sum_eq_filtered_product",
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
  "slug": "divisors-sum-eq-filtered-product--3881a19a809ddeafd0fed605",
  "source": {
    "blob": "ff7a54ab935c2fec7644c039196d0bca32c91eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3881a19a809ddeafd0fed60553a25f583e22aa4740d69864f059f25bb8d4300a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c84911a6-d44f-4201-c8ba-740105e84278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisors_sum_eq_filtered_product (B : ℕ) (T : Finset ℕ)
    (hT : T ⊆ Icc 1 B) (F : ℕ × ℕ → ℝ) :
    (∑ n ∈ T, ∑ p ∈ n.divisorsAntidiagonal, F p) =
      ∑ d ∈ Icc 1 B, ∑ k ∈ Icc 1 B, if d * k ∈ T then F (d, k) else 0 := by
  let S := (Icc 1 B) ×ˢ (Icc 1 B)
  have hfiber (n : ℕ) (hn : n ∈ T) :
      S.filter (fun p : ℕ × ℕ ↦ p.1 * p.2 = n) = n.divisorsAntidiagonal := by
    have hnB := mem_Icc.mp (hT hn)
    ext p
    simp only [S, mem_filter, mem_product, mem_Icc, Nat.mem_divisorsAntidiagonal]
    constructor
    · rintro ⟨⟨hd, hk⟩, hp⟩
      exact ⟨hp, by omega⟩
    · rintro ⟨hp, hn0⟩
      have hd0 : 0 < p.1 := Nat.pos_of_ne_zero (by intro h; simp [h] at hp; omega)
      have hk0 : 0 < p.2 := Nat.pos_of_ne_zero (by intro h; simp [h] at hp; omega)
      have hd : p.1 ≤ n := hp ▸ Nat.le_mul_of_pos_right _ hk0
      have hk : p.2 ≤ n := by
        rw [← hp, mul_comm]
        exact Nat.le_mul_of_pos_right _ hd0
      exact ⟨⟨⟨by omega, hd.trans hnB.2⟩, ⟨by omega, hk.trans hnB.2⟩⟩, hp⟩
  calc
    _ = ∑ n ∈ T, ∑ p ∈ S.filter (fun p : ℕ × ℕ ↦ p.1 * p.2 = n), F p := by
      apply sum_congr rfl
      intro n hn
      rw [hfiber n hn]
    _ = ∑ p ∈ S.filter (fun p : ℕ × ℕ ↦ p.1 * p.2 ∈ T), F p :=
      sum_fiberwise_eq_sum_filter S T (fun p : ℕ × ℕ ↦ p.1 * p.2) F
    _ = ∑ p ∈ S, if p.1 * p.2 ∈ T then F p else 0 := sum_filter _ _
    _ = _ := sum_product _ _ _


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff7a54ab935c2fec7644c039196d0bca32c91eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
