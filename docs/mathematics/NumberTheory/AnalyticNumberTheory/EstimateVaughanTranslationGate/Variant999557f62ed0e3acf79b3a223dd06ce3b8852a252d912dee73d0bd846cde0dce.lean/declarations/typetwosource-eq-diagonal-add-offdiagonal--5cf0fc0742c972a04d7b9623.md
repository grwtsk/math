# typeTwoSource_eq_diagonal_add_offDiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b22f9ff26cc6793015e79735324638d19ee07ccc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e80e805-a5b1-2439-4dee-0e80d6be90c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65a99811-03b4-df35-5dbc-451ac3d0ef4c",
  "kind": "theorem",
  "lexical_name": "typeTwoSource_eq_diagonal_add_offDiagonal",
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
  "slug": "typetwosource-eq-diagonal-add-offdiagonal--5cf0fc0742c972a04d7b9623",
  "source": {
    "blob": "b22f9ff26cc6793015e79735324638d19ee07ccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cf0fc0742c972a04d7b96235593eac7dcd445f1205d20104dc055db16cd52aa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65a99811-03b4-df35-5dbc-451ac3d0ef4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeTwoSource_eq_diagonal_add_offDiagonal (A : ℝ) (hA : 1 ≤ A) :
    typeTwoSource A = typeTwoDiagonal A + typeTwoOffDiagonal A := by
  classical
  rw [typeTwoSource_eq_rectangle A hA]
  unfold typeTwoDiagonal typeTwoOffDiagonal
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.mul_sum]
  have h := Finset.sum_filter_add_sum_filter_not
    (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A))
    (fun n ↦ n = m)
    (fun n ↦ vonMangoldt m * beta (vaughanCutoff A) n *
      sourcePlainWeight A ((m*n : ℕ) : ℝ))
  have heq : (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter
      (fun n ↦ n = m) = {m} := by
    ext n
    simp only [Finset.mem_filter, Finset.mem_singleton]
    constructor
    · exact fun hn ↦ hn.2
    · intro hn
      subst n
      exact ⟨hm, rfl⟩
  simpa only [heq, Finset.sum_singleton, mul_assoc] using h.symm

/-- The literal diagonal coefficient is divided by `m`, with displacement `2 log m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22f9ff26cc6793015e79735324638d19ee07ccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
