# quotient_center_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd8b773b-b39f-b173-a7f6-3eb3b1ef3a1d",
  "kind": "theorem",
  "lexical_name": "quotient_center_floor",
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
  "slug": "quotient-center-floor--1ba2c8286d206954272e215c",
  "source": {
    "blob": "4c219746d834b4bd7630380a4a1a8161185c91b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 71,
    "path": "GRWTSK/Analysis/Complex/BlaschkeQuotientLogarithm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ba2c8286d206954272e215cc18b2cb84323cdc82a5cda6374bce933982750c1",
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

Occurrence: `result:fd8b773b-b39f-b173-a7f6-3eb3b1ef3a1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotient_center_floor {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (f g : ℂ → ℂ) (η : ℝ) (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4)
    (hfactor : f 0 = g 0 * ∏ i ∈ S, (factor 3 (a i) 0) ^ m i)
    (hfloor : η ≤ ‖f 0‖) : η ≤ ‖g 0‖ := by
  calc
    η ≤ ‖f 0‖ := hfloor
    _ = ‖g 0‖ * ‖∏ i ∈ S, (factor 3 (a i) 0) ^ m i‖ := by rw [hfactor, norm_mul]
    _ ≤ ‖g 0‖ * 1 := mul_le_mul_of_nonneg_left
      (norm_product_at_center_le_one S a m ha) (norm_nonneg _)
    _ = ‖g 0‖ := mul_one _

/-- Derive the analytic logarithm, its anchor, ceiling and factorization from a quotient.
The holomorphic quotient and its zero-freeness are still genuine input obligations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/BlaschkeQuotientLogarithm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/BlaschkeQuotientLogarithm.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c219746d834b4bd7630380a4a1a8161185c91b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
