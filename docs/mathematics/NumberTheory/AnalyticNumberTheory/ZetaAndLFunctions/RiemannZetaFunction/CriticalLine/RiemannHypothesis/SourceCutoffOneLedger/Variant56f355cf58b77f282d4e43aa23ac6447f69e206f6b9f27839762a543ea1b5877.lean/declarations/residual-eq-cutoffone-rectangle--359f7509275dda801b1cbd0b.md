# residual_eq_cutoffOne_rectangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99eed6750fb0e12e9e6b27ae4ebb08a9fbc02fdc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89cfc883-b7eb-e14f-6168-93ed31c25403",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b8b0dee-6c5a-b39f-ccf8-04b0535ff39e",
  "kind": "theorem",
  "lexical_name": "residual_eq_cutoffOne_rectangle",
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
  "slug": "residual-eq-cutoffone-rectangle--359f7509275dda801b1cbd0b",
  "source": {
    "blob": "99eed6750fb0e12e9e6b27ae4ebb08a9fbc02fdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 229,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:359f7509275dda801b1cbd0baa1fca44cb4a3ee22cf67bd7252ed8f35d62a94d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b8b0dee-6c5a-b39f-ccf8-04b0535ff39e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_eq_cutoffOne_rectangle (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = sourceMobiusKernel A 1 +
      rectangle (Finset.Ioc 1 (sourceKernelCutoff A)) (sourceKernel A) (beta 1) := by
  have hN : 1 ≤ sourceKernelCutoff A :=
    (vaughanCutoff_pos A hA).trans (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hv := finite_vaughan_sum (sourceKernelCutoff A) 1 1 hN hN
    (fun n ↦ sourcePlainWeight A n) (sourcePlainWeight_zero_of_cutoff_lt A hA)
  simp only [Finset.Icc_self, Finset.sum_singleton, vonMangoldt_apply_one,
    moebius_apply_one, Int.cast_one, Nat.one_mul, one_mul, zero_mul,
    Finset.sum_const_zero, sub_zero, zero_add] at hv
  have ht := sourceMobiusKernel_eq_plainWeight A 1 (by norm_num)
  simp only [Nat.one_mul, Nat.cast_one] at ht
  rw [← ht] at hv
  rw [mertensResidual_eq_plainWeight_sum A hA]
  rw [hv]
  congr 1
  unfold rectangle sourceKernel
  apply Finset.sum_congr rfl
  intro m _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- The residual retains the unchanged independent baseline plus bounded ledger error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99eed6750fb0e12e9e6b27ae4ebb08a9fbc02fdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
