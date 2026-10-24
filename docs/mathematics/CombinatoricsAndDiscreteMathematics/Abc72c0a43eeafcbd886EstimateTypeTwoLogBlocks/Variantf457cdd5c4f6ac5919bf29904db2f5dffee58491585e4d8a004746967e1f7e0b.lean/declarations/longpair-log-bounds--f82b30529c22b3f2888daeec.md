# longPair_log_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:283a0cee-068d-a0ab-45b3-740ac6e7ed91",
  "kind": "theorem",
  "lexical_name": "longPair_log_bounds",
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
  "slug": "longpair-log-bounds--f82b30529c22b3f2888daeec",
  "source": {
    "blob": "a7ffc921f376ae1374f18a9ee1e51af6945f51c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantf457cdd5c4f6ac5919bf29904db2f5dffee58491585e4d8a004746967e1f7e0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f82b30529c22b3f2888daeec11aa9d2ac28ec8e32bc3fbf226afe93e5836211d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantf457cdd5c4f6ac5919bf29904db2f5dffee58491585e4d8a004746967e1f7e0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:283a0cee-068d-a0ab-45b3-740ac6e7ed91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem longPair_log_bounds (A : ℝ) (p : ℕ × ℕ)
    (hp : p ∈ longOffDiagonalPairs A) :
    0 ≤ Real.log (p.1 : ℝ) + Real.log (p.2 : ℝ) ∧
      Real.log (p.1 : ℝ) + Real.log (p.2 : ℝ) ≤ 2 * A := by
  have hm := (Finset.mem_product.mp (Finset.mem_filter.mp hp).1).1
  have hn := (Finset.mem_product.mp (Finset.mem_filter.mp hp).1).2
  have hm1 : 1 ≤ p.1 := by have := (Finset.mem_Ioc.mp hm).1; omega
  have hn1 : 1 ≤ p.2 := by have := (Finset.mem_Ioc.mp hn).1; omega
  have hmR : (1 : ℝ) ≤ p.1 := by exact_mod_cast hm1
  have hnR : (1 : ℝ) ≤ p.2 := by exact_mod_cast hn1
  refine ⟨add_nonneg (Real.log_nonneg hmR) (Real.log_nonneg hnR), ?_⟩
  have hc : ((p.1*p.2 : ℕ) : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast (Finset.mem_filter.mp hp).2.2
  have hprod : ((p.1*p.2 : ℕ) : ℝ) ≤ Real.exp (2 * A) :=
    hc.trans (Nat.floor_le (Real.exp_pos (2 * A)).le)
  have hp0 : 0 < ((p.1*p.2 : ℕ) : ℝ) := by
    rw [Nat.cast_mul]
    positivity
  have h := (Real.log_le_iff_le_exp hp0).2 hprod
  simpa only [Nat.cast_mul, Real.log_mul (by positivity : (p.1 : ℝ) ≠ 0)
    (by positivity : (p.2 : ℝ) ≠ 0)] using h

/-- Floor bins are all inside the finite source cell inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantf457cdd5c4f6ac5919bf29904db2f5dffee58491585e4d8a004746967e1f7e0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantf457cdd5c4f6ac5919bf29904db2f5dffee58491585e4d8a004746967e1f7e0b.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7ffc921f376ae1374f18a9ee1e51af6945f51c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
