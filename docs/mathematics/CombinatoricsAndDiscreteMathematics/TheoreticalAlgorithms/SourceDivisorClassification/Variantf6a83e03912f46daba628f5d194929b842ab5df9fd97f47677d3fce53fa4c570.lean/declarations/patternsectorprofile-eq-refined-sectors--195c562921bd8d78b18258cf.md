# patternSectorProfile_eq_refined_sectors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66979de2f5534ef71d1cfd4a479262f5aa48d7fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d681df5a-0efe-0949-d0b1-83aaa4a98ee3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c23add5a-d797-e8f8-f2b0-bcf5e05761f0",
  "kind": "theorem",
  "lexical_name": "patternSectorProfile_eq_refined_sectors",
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
  "slug": "patternsectorprofile-eq-refined-sectors--195c562921bd8d78b18258cf",
  "source": {
    "blob": "66979de2f5534ef71d1cfd4a479262f5aa48d7fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 284,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantf6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:195c562921bd8d78b18258cf0725371d1521bce928662d6f36c0f90de19cf839",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantf6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c23add5a-d797-e8f8-f2b0-bcf5e05761f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem patternSectorProfile_eq_refined_sectors (A : ℝ) (I : Finset ℕ)
    {S T : Finset ℕ} (hST : S ⊆ T) (p : Finset ℕ) (c : ℕ → ℝ) (x : ℝ) :
    patternSectorProfile A I S p c x =
      ∑ q ∈ T.powerset.filter (fun q => restrictPattern S q = p),
        patternSectorProfile A I T q c x := by
  classical
  unfold patternSectorProfile reflectedProfile
  rw [Finset.sum_fiberwise_eq_sum_filter]
  apply Finset.sum_congr
  · ext n
    simp only [Finset.mem_filter, divisorPattern_mem_powerset, true_and,
      divisorPattern_restrict hST]
  · intro n hn
    rfl

/-- The exact centered coefficient associated to a finite short-divisor pattern. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantf6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantf6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66979de2f5534ef71d1cfd4a479262f5aa48d7fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
