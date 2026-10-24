# unsupported_product_mask_removal_is_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a0952559a15f69a6c33f3dee7a159c3c6ea263c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:979a3e05-db8a-b0b5-2f26-1035f02ea837",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b16ce938-6aa8-8b1c-3bab-35a0c983db9b",
  "kind": "theorem",
  "lexical_name": "unsupported_product_mask_removal_is_false",
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
  "slug": "unsupported-product-mask-removal-is-false--7ca966be2e85791c7da23eca",
  "source": {
    "blob": "5a0952559a15f69a6c33f3dee7a159c3c6ea263c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variantb24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ca966be2e85791c7da23eca1aafbc81996240a3b6cbe86daeb71abbf6d1a44f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variantb24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b16ce938-6aa8-8b1c-3bab-35a0c983db9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unsupported_product_mask_removal_is_false :
    atomWeight 4 4 = 1 ∧ (¬ ∀ n : ℕ, 2 < n → atomWeight 4 n = 0) ∧
      (∑ m ∈ Finset.Icc 1 2, ∑ n ∈ Finset.Icc 1 2,
        vonMangoldt m * atomWeight 4 (m * n)) ≠
      (∑ k ∈ (Finset.Icc 1 2 : Finset ℕ), Real.log (k : ℝ) * atomWeight 4 k) := by
  refine ⟨by norm_num [atomWeight], ?_, ?_⟩
  · intro h
    have h4 := h 4 (by norm_num)
    norm_num [atomWeight] at h4
  · have hc : Finset.Icc 1 2 = ({1, 2} : Finset ℕ) := by decide
    have hp : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
    convert (ne_of_gt hp) using 1 <;>
      norm_num [hc, atomWeight, vonMangoldt_apply_prime Nat.prime_two]

end
end FormalResearch.RiemannHypothesis.WholePlainConvolutionFixtures
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variantb24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variantb24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a0952559a15f69a6c33f3dee7a159c3c6ea263c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
