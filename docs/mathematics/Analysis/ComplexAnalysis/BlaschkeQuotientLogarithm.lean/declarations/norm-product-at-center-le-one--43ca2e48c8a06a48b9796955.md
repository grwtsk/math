# norm_product_at_center_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f10cd28d-cb8b-3b4b-e768-26b1ba6004c6",
  "kind": "theorem",
  "lexical_name": "norm_product_at_center_le_one",
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
  "slug": "norm-product-at-center-le-one--43ca2e48c8a06a48b9796955",
  "source": {
    "blob": "4c219746d834b4bd7630380a4a1a8161185c91b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 40,
    "path": "GRWTSK/Analysis/Complex/BlaschkeQuotientLogarithm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43ca2e48c8a06a48b9796955d26f17d9de8567c6ce248f9c86e26383f87c272e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BlaschkeQuotientLogarithm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f10cd28d-cb8b-3b4b-e768-26b1ba6004c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_product_at_center_le_one {ι : Type*} (S : Finset ι)
    (a : ι → ℂ) (m : ι → ℕ) (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4) :
    ‖∏ i ∈ S, (factor 3 (a i) 0) ^ m i‖ ≤ 1 := by
  simp only [norm_prod, norm_pow]
  apply Finset.prod_le_one (fun _ _ => pow_nonneg (norm_nonneg _) _)
  intro i hi
  apply pow_le_one₀ (norm_nonneg _)
  rw [factor_at_zero 3 (by norm_num), norm_div, norm_neg]
  norm_num [Complex.norm_real, Real.norm_eq_abs]
  exact (div_le_one (by norm_num : (0 : ℝ) < 3)).mpr (by linarith [ha i hi])

/-- Maximum modulus transports the original boundary ceiling to the extended quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/BlaschkeQuotientLogarithm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/BlaschkeQuotientLogarithm.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c219746d834b4bd7630380a4a1a8161185c91b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
