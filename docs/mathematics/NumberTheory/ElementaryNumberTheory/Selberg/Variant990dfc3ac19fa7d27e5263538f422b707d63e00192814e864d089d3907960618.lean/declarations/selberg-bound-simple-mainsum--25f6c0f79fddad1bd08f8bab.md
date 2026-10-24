# selberg_bound_simple_mainSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9ebcce06b6944c9d13099895314b98acc3835c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d72d5bbd-dafc-e339-d66f-dd53af10c720",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f75fed1-bba2-fcac-7887-7fb489b1f063",
  "kind": "theorem",
  "lexical_name": "selberg_bound_simple_mainSum",
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
  "slug": "selberg-bound-simple-mainsum--25f6c0f79fddad1bd08f8bab",
  "source": {
    "blob": "d9ebcce06b6944c9d13099895314b98acc3835c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 263,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25f6c0f79fddad1bd08f8bab980404859ea9523a3127471ef0af2a9d7a4fa711",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f75fed1-bba2-fcac-7887-7fb489b1f063`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selberg_bound_simple_mainSum :
    mainSum (s := s.toBoundingSieve) μ⁺ = S⁻¹ := by
  rw [mainSum_eq_diag_quad_form]
  trans (∑ l ∈ divisors P, (if l ^ 2 ≤ y then g l * (S⁻¹) ^ 2 else 0))
  · apply sum_congr rfl; intro l hl
    rw [s.selbergWeights_diagonalisation l hl, ite_pow, zero_pow two_ne_zero, mul_ite_zero]
    apply if_congr Iff.rfl _ rfl
    trans (1/g l * g l * g l * (μ l:ℝ)^2  * (S⁻¹) ^ 2)
    · ring
    norm_cast; rw [moebius_sq_eq_one_of_squarefree <| squarefree_of_mem_divisors_prodPrimes hl]
    rw [one_div_mul_cancel <| _root_.ne_of_gt <| selbergTerms_pos _ l <| dvd_of_mem_divisors hl]
    ring
  conv => {lhs; congr; {skip}; {ext i; rw [← ite_zero_mul]}}
  dsimp only [selbergBoundingSum]
  rw [←sum_mul, sq, ←mul_assoc, mul_inv_cancel₀]
  · ring
  · apply _root_.ne_of_gt; apply selbergBoundingSum_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9ebcce06b6944c9d13099895314b98acc3835c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
