# exact_decoder_vector_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f533fb4-51c8-6917-f974-c7b3d8c627e9",
  "kind": "theorem",
  "lexical_name": "exact_decoder_vector_norm",
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
  "slug": "exact-decoder-vector-norm--ae584ab08a1716c7b907659c",
  "source": {
    "blob": "69d4f1b3d91145193053b1f1567c3a9b69a638c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeFullInventoryPricing/Variant98db09f44d99ab12c58e51a204f2c690f452bfe3d5f07becdd8d9278845b3024.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae584ab08a1716c7b907659c1b6dc54dadef48322c7d389e39c67c466051bb67",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeFullInventoryPricing/Variant98db09f44d99ab12c58e51a204f2c690f452bfe3d5f07becdd8d9278845b3024.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f533fb4-51c8-6917-f974-c7b3d8c627e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_decoder_vector_norm (s : Finset ℕ) (b₀ : ℝ) (b ĉ : ℕ → ℝ) :
    ‖decoderVector s b₀ b ĉ‖ = Real.sqrt (∑ n ∈ s, (ĉ n / (b₀ * b n)) ^ 2) := by
  have hsq : ‖decoderVector s b₀ b ĉ‖ ^ 2 = ∑ n ∈ s, (ĉ n / (b₀ * b n)) ^ 2 := by
    rw [EuclideanSpace.real_norm_sq_eq]
    change (∑ i : Option ↥s, (match i with | none => (0 : ℝ) | some n => ĉ n.val / (b₀ * b n.val)) ^ 2) = _
    simp only [Fintype.sum_option, zero_pow (by norm_num : (2 : ℕ) ≠ 0), zero_add]
    exact Finset.sum_coe_sort s (fun n : ℕ ↦ (ĉ n / (b₀ * b n)) ^ 2)
  rw [← hsq, Real.sqrt_sq_eq_abs, abs_of_nonneg (norm_nonneg _)]

/-- The complete native matrix and complete decoder vector retain every source coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeFullInventoryPricing/Variant98db09f44d99ab12c58e51a204f2c690f452bfe3d5f07becdd8d9278845b3024.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeFullInventoryPricing/Variant98db09f44d99ab12c58e51a204f2c690f452bfe3d5f07becdd8d9278845b3024.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69d4f1b3d91145193053b1f1567c3a9b69a638c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
