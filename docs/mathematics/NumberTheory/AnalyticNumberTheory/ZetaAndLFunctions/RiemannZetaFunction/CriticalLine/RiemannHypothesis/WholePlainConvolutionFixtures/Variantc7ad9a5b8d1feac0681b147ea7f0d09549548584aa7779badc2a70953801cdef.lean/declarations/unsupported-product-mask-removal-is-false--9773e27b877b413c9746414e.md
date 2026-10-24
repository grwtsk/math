# unsupported_product_mask_removal_is_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d72f910-a90f-0610-fe5d-eab651bc869e",
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
  "slug": "unsupported-product-mask-removal-is-false--9773e27b877b413c9746414e",
  "source": {
    "blob": "80ec59bbe5de31bcf94e96ef04446f1264cdc23a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 80,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WholePlainConvolutionFixtures/Variantc7ad9a5b8d1feac0681b147ea7f0d09549548584aa7779badc2a70953801cdef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9773e27b877b413c9746414e82474ee5b776d6e6d92aaded0262a3ea348a09e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WholePlainConvolutionFixtures/Variantc7ad9a5b8d1feac0681b147ea7f0d09549548584aa7779badc2a70953801cdef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d72f910-a90f-0610-fe5d-eab651bc869e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unsupported_product_mask_removal_is_false :
    atomWeight 4 4 = 1 ∧ (¬ ∀ n : ℕ, 2 < n → atomWeight 4 n = 0) ∧
      (∑ m ∈ Finset.Icc 1 2, ∑ n ∈ Finset.Icc 1 2,
        vonMangoldt m * atomWeight 4 (m * n)) ≠
      (∑ k ∈ Finset.Icc 1 2, Real.log k * atomWeight 4 k) := by
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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WholePlainConvolutionFixtures/Variantc7ad9a5b8d1feac0681b147ea7f0d09549548584aa7779badc2a70953801cdef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WholePlainConvolutionFixtures/Variantc7ad9a5b8d1feac0681b147ea7f0d09549548584aa7779badc2a70953801cdef.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80ec59bbe5de31bcf94e96ef04446f1264cdc23a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
