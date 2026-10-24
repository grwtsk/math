# sum_mul_eq_sub_integral_mul₀'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71b44611d978318185ecc30724856b14e316742f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed2ec10a-d31e-8a99-afd7-fde8d71a3034",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a787eddc-eb2c-93dd-88b8-1f52ad6865bd",
  "kind": "theorem",
  "lexical_name": "sum_mul_eq_sub_integral_mul₀'",
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
  "slug": "sum-mul-eq-sub-integral-mul--8eb2d96cdfa4869eef9b7168",
  "source": {
    "blob": "71b44611d978318185ecc30724856b14e316742f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 229,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eb2d96cdfa4869eef9b7168a0c8008fb679f7fc298872b51fce0b250eb612f0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a787eddc-eb2c-93dd-88b8-1f52ad6865bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mul_eq_sub_integral_mul₀' (hc : c 0 = 0) (m : ℕ)
    (hf_diff : ∀ t ∈ Set.Icc (1 : ℝ) m, DifferentiableAt ℝ f t)
    (hf_int : IntegrableOn (deriv f) (Set.Icc (1 : ℝ) m)) :
    ∑ k ∈ Icc 0 m, f k * c k =
      f m * (∑ k ∈ Icc 0 m, c k) -
        ∫ t in Set.Ioc (1 : ℝ) m, deriv f t * ∑ k ∈ Icc 0 ⌊t⌋₊, c k := by
  convert! sum_mul_eq_sub_integral_mul₀ c hc m hf_diff hf_int
  all_goals rw [Nat.floor_natCast]

/-- Specialized version of `sum_mul_eq_sub_integral_mul` when `c 0 = c 1 = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71b44611d978318185ecc30724856b14e316742f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
