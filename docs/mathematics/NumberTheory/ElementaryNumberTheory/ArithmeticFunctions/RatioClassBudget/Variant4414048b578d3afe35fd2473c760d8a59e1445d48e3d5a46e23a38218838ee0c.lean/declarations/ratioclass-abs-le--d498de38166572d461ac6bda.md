# ratioClass_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d74d8f8d871b1d2ece204ca3bcf633387ed173e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/4414048b578d3afe35fd2473c760d8a59e1445d48e3d5a46e23a38218838ee0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06047dd6-7348-87e2-498a-b71092a3d385",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bb48389-b889-2eea-188f-f4ce3d5bc607",
  "kind": "theorem",
  "lexical_name": "ratioClass_abs_le",
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
  "slug": "ratioclass-abs-le--d498de38166572d461ac6bda",
  "source": {
    "blob": "8d74d8f8d871b1d2ece204ca3bcf633387ed173e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 61,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variant4414048b578d3afe35fd2473c760d8a59e1445d48e3d5a46e23a38218838ee0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d498de38166572d461ac6bdaa2b54a87f6b4969d8699395bdf1dd0dd90a058e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variant4414048b578d3afe35fd2473c760d8a59e1445d48e3d5a46e23a38218838ee0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bb48389-b889-2eea-188f-f4ce3d5bc607`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ratioClass_abs_le (A : ℝ) (u v : ℕ)
    (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v) :
    |ratioClassContribution A u v| ≤
      kernelBound A * (1 + A) / Real.sqrt ((u * v : ℕ) : ℝ) := by
  have hK := kernelBound_nonneg A hA
  have hcoef : 0 ≤ kernelBound A / Real.sqrt ((u * v : ℕ) : ℝ) := by positivity
  have hsub : Icc 1 (⌊Real.exp A⌋₊ / max u v) ⊆ Icc 1 ⌊Real.exp A⌋₊ := by
    intro g hg
    exact mem_Icc.mpr ⟨(mem_Icc.mp hg).1, (mem_Icc.mp hg).2.trans (Nat.div_le_self _ _)⟩
  unfold ratioClassContribution
  rw [abs_mul]
  calc
    _ ≤ |∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v),
        (ArithmeticFunction.moebius g : ℝ) ^ 2 *
          (if Nat.Coprime g (u * v) then 1 else 0) * thetaRemainder A ((u * v) * g ^ 2)| :=
      mul_le_of_le_one_left (abs_nonneg _) (moebius_real_abs_le _)
    _ ≤ ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v),
        |(ArithmeticFunction.moebius g : ℝ) ^ 2 *
          (if Nat.Coprime g (u * v) then 1 else 0) * thetaRemainder A ((u * v) * g ^ 2)| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v),
        (kernelBound A / Real.sqrt ((u * v : ℕ) : ℝ)) * (1 / (g : ℝ)) := by
      apply sum_le_sum
      intro g hg
      exact ratio_term_abs_le A u v g hA hu hv (mem_Icc.mp hg).1
    _ = (kernelBound A / Real.sqrt ((u * v : ℕ) : ℝ)) *
        ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v), 1 / (g : ℝ) := (mul_sum _ _ _).symm
    _ ≤ (kernelBound A / Real.sqrt ((u * v : ℕ) : ℝ)) *
        ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, 1 / (g : ℝ) := by
      apply mul_le_mul_of_nonneg_left _ hcoef
      exact sum_le_sum_of_subset_of_nonneg hsub (fun g _ _ ↦ by positivity)
    _ ≤ (kernelBound A / Real.sqrt ((u * v : ℕ) : ℝ)) * (1 + A) :=
      mul_le_mul_of_nonneg_left (source_harmonic_sum_le A hA) hcoef
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variant4414048b578d3afe35fd2473c760d8a59e1445d48e3d5a46e23a38218838ee0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variant4414048b578d3afe35fd2473c760d8a59e1445d48e3d5a46e23a38218838ee0c.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d74d8f8d871b1d2ece204ca3bcf633387ed173e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
