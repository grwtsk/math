# typeTwo_eq_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1db034e42f34dbdf2d8f4e3fd917e68e245941e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/467e29c4ae524efe96601b58c650eb0cea27e9428367ae4a9d8c69a3c7cf8bcb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c38336a-05e9-8f4a-b4cf-009f255c5fd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:402ae593-d376-6874-b0c4-9e46c448ad95",
  "kind": "theorem",
  "lexical_name": "typeTwo_eq_convolution",
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
  "slug": "typetwo-eq-convolution--261d98250afe346d3c4aa8a2",
  "source": {
    "blob": "1db034e42f34dbdf2d8f4e3fd917e68e245941e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant467e29c4ae524efe96601b58c650eb0cea27e9428367ae4a9d8c69a3c7cf8bcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:261d98250afe346d3c4aa8a25e97df1e926d98ceec513f5a3c86de4c55694001",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant467e29c4ae524efe96601b58c650eb0cea27e9428367ae4a9d8c69a3c7cf8bcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:402ae593-d376-6874-b0c4-9e46c448ad95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem typeTwo_eq_convolution (A : ℝ) (hA : 1 ≤ A) :
    typeTwoSource A = ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
      (longPart (vaughanCutoff A) vonMangoldt *
        (longPart (vaughanCutoff A) (moebius : ArithmeticFunction ℝ) *
          (zeta : ArithmeticFunction ℝ))) n * sourcePlainWeight A n := by
  rw [finite_convolution_sum _ _ _ _ (sourcePlainWeight_zero_of_cutoff_lt A hA)]
  simp_rw [mul_assoc, ← Finset.mul_sum]
  rw [sum_longPart, typeTwoSource_eq_rectangle A hA]
  apply Finset.sum_congr rfl
  intro m _
  congr 1
  simp_rw [← beta_eq_long_convolution]
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Ioc.mp hn).1; omega,
      (Finset.mem_Ioc.mp hn).2⟩
  · intro n hn hnot
    have hnU : n ≤ vaughanCutoff A := by
      by_contra h
      exact hnot (Finset.mem_Ioc.mpr ⟨by omega, (Finset.mem_Icc.mp hn).2⟩)
    rw [beta_zero_of_le _ _ hnU, zero_mul]

/-- A single fixed triple inventory retains both strict long-factor cutoffs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant467e29c4ae524efe96601b58c650eb0cea27e9428367ae4a9d8c69a3c7cf8bcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant467e29c4ae524efe96601b58c650eb0cea27e9428367ae4a9d8c69a3c7cf8bcb.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1db034e42f34dbdf2d8f4e3fd917e68e245941e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
