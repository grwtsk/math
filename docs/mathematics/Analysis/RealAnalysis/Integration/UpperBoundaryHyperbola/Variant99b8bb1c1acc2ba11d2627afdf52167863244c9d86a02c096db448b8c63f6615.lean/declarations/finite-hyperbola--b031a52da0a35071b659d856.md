# finite_hyperbola

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9828b34de7f2f3b8c0121a9a50a1c208474ff83d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46db4a98-d21c-e0a3-03c0-b05f61359dfa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9270360d-701f-bad3-d71f-a4dc70497fd4",
  "kind": "theorem",
  "lexical_name": "finite_hyperbola",
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
  "slug": "finite-hyperbola--b031a52da0a35071b659d856",
  "source": {
    "blob": "9828b34de7f2f3b8c0121a9a50a1c208474ff83d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b031a52da0a35071b659d8569d65715cfa73481ba5138dcfb436034988f0798c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9270360d-701f-bad3-d71f-a4dc70497fd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_hyperbola (S : Finset ℕ) (w : ℕ → ℝ) (x : ℝ) :
    (∑ i ∈ S, ∑ j ∈ S, if ((i * j : ℕ) : ℝ) ≤ x then w i * w j else 0) =
      2 * (∑ i ∈ S.filter (fun i : ℕ ↦ (i : ℝ) ^ 2 ≤ x), w i *
        ∑ j ∈ S.filter (fun j : ℕ ↦ ((i * j : ℕ) : ℝ) ≤ x), w j) -
      (∑ i ∈ S.filter (fun i : ℕ ↦ (i : ℝ) ^ 2 ≤ x), w i) ^ 2 := by
  classical
  let L : ℝ := ∑ i ∈ S, ∑ j ∈ S,
    if (i : ℝ) ^ 2 ≤ x then
      if ((i * j : ℕ) : ℝ) ≤ x then w i * w j else 0 else 0
  let R : ℝ := ∑ i ∈ S, ∑ j ∈ S,
    if (j : ℝ) ^ 2 ≤ x then
      if ((i * j : ℕ) : ℝ) ≤ x then w i * w j else 0 else 0
  let D : ℝ := ∑ i ∈ S, ∑ j ∈ S,
    if (i : ℝ) ^ 2 ≤ x then if (j : ℝ) ^ 2 ≤ x then w i * w j else 0 else 0
  have hs : (∑ i ∈ S, ∑ j ∈ S,
      if ((i * j : ℕ) : ℝ) ≤ x then w i * w j else 0) = L + R - D := by
    dsimp only [L, R, D]
    simp only [← sum_add_distrib, ← sum_sub_distrib]
    apply sum_congr rfl
    intro i _
    apply sum_congr rfl
    intro j _
    simpa only [Nat.cast_mul] using
      hyperbola_pair i j (w i) (w j) x (Nat.cast_nonneg i) (Nat.cast_nonneg j)
  have hRL : R = L := by
    dsimp only [R, L]
    rw [sum_comm]
    apply sum_congr rfl
    intro i _
    apply sum_congr rfl
    intro j _
    simp only [Nat.mul_comm j i, mul_comm (w j) (w i)]
  have hL : L = ∑ i ∈ S.filter (fun i : ℕ ↦ (i : ℝ) ^ 2 ≤ x), w i *
      ∑ j ∈ S.filter (fun j : ℕ ↦ ((i * j : ℕ) : ℝ) ≤ x), w j := by
    dsimp only [L]
    rw [sum_filter]
    apply sum_congr rfl
    intro i _
    rw [sum_ite_irrel]
    split_ifs with hi
    · rw [sum_filter, mul_sum]
      apply sum_congr rfl
      intro j _
      split_ifs <;> simp
    · simp
  have hD : D = (∑ i ∈ S.filter (fun i : ℕ ↦ (i : ℝ) ^ 2 ≤ x), w i) ^ 2 := by
    dsimp only [D]
    rw [sum_filter, pow_two, sum_mul_sum]
    apply sum_congr rfl
    intro i _
    apply sum_congr rfl
    intro j _
    split_ifs <;> simp_all
  rw [hs, hRL, hL, hD]
  ring

/-- Exact signed hyperbola decomposition of every ordered original upper product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9828b34de7f2f3b8c0121a9a50a1c208474ff83d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
