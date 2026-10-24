# divisorMultiplesInteraction_eq_physicalOffRows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c951614b1cafde4697ad8d001eec7be43551057",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b56e4e5f293b1d538046b4ef401e0046a0d8a00462e87eb2773752b8470bae9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:259490a8-bb6e-c663-4de4-a702ea1c44bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88bfe839-b031-044a-f9fb-a0250d54d9b5",
  "kind": "theorem",
  "lexical_name": "divisorMultiplesInteraction_eq_physicalOffRows",
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
  "slug": "divisormultiplesinteraction-eq-physicaloffrows--76f4bc421224a1843c1c5333",
  "source": {
    "blob": "9c951614b1cafde4697ad8d001eec7be43551057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 174,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalQuotientStrip/Variantb56e4e5f293b1d538046b4ef401e0046a0d8a00462e87eb2773752b8470bae9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76f4bc421224a1843c1c5333afd6893036d73edc5d13b36441f0332c69eb34f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalQuotientStrip/Variantb56e4e5f293b1d538046b4ef401e0046a0d8a00462e87eb2773752b8470bae9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88bfe839-b031-044a-f9fb-a0250d54d9b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisorMultiplesInteraction_eq_physicalOffRows (A : ℝ) (d : ℕ) (hd : 0 < d) :
    divisorMultiplesInteraction A d =
      physicalQuotientOffRowsAt A d (vaughanCutoff A) := by
  classical
  unfold divisorMultiplesInteraction physicalQuotientOffRowsAt longInventory
  apply Finset.sum_congr rfl
  intro m _
  rw [Finset.sum_filter]
  have hs := sum_multiples_eq_quotient_interval (vaughanCutoff A)
    (sourceKernelCutoff A) d hd
    (fun n => if n ≠ m then
      vonMangoldt m * sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0)
  have hi : Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d) =
      Finset.Ioc (vaughanCutoff A / d) (sourceKernelCutoff A / d) := by
    ext k
    simp only [Finset.mem_Icc, Finset.mem_Ioc]
    omega
  calc
    (∑ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
      if n ≠ m then
        (if d ∣ n then vonMangoldt m * sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0)
      else 0) =
      ∑ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        if d ∣ n then
          (if n ≠ m then vonMangoldt m * sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0)
        else 0 := by
      apply Finset.sum_congr rfl
      intro n _
      split_ifs <;> rfl
    _ = ∑ k ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
        if d * k ≠ m then
          vonMangoldt m * sourcePlainWeight A ((m * (d * k) : ℕ) : ℝ) else 0 := hs
    _ = vonMangoldt m *
        ∑ k ∈ Finset.Ioc (vaughanCutoff A / d) (sourceKernelCutoff A / d),
          if d * k ≠ m then sourcePlainWeight A ((d * m * k : ℕ) : ℝ) else 0 := by
      rw [hi, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k _
      by_cases h : d * k ≠ m
      · rw [if_pos h, if_pos h]
        simp only [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm]
      · rw [if_neg h, if_neg h, mul_zero]

/-- The accepted beta mean1/d is retained before the exact physical multiples sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalQuotientStrip/Variantb56e4e5f293b1d538046b4ef401e0046a0d8a00462e87eb2773752b8470bae9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalQuotientStrip/Variantb56e4e5f293b1d538046b4ef401e0046a0d8a00462e87eb2773752b8470bae9f.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c951614b1cafde4697ad8d001eec7be43551057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
