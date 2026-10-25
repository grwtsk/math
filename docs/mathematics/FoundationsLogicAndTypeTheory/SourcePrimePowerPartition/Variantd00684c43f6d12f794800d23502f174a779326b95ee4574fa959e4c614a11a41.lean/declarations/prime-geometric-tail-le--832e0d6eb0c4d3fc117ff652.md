# prime_geometric_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "009f91561f501843cc723e41e90f35a9a23cdaa6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e572935-054e-4ac0-4fad-15b167eeb14c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c2aad62-39e3-dd9c-dd3c-daf4eaaa26a4",
  "kind": "theorem",
  "lexical_name": "prime_geometric_tail_le",
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
  "slug": "prime-geometric-tail-le--832e0d6eb0c4d3fc117ff652",
  "source": {
    "blob": "009f91561f501843cc723e41e90f35a9a23cdaa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 237,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:832e0d6eb0c4d3fc117ff652d9f3dab3b5d19ffdf98a537d5b4377c7ad760978",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c2aad62-39e3-dd9c-dd3c-daf4eaaa26a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem prime_geometric_tail_le {p : ℕ} (hp : p.Prime) (N : ℕ) :
    Real.log (p : ℝ) * (∑ k ∈ Finset.Icc 3 N, ((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ k) ≤
      16 * (p : ℝ) ^ (-(5 : ℝ) / 4) := by
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have hp1 : (1 : ℝ) ≤ p := by exact_mod_cast hp.one_le
  have hlog := Real.log_nonneg hp1
  obtain ⟨hr0, hr⟩ := prime_geometric_ratio hp
  have hsum := sum_geometric_Icc_three N ((p : ℝ) ^ (-(1 : ℝ) / 2)) hr0 (by linarith)
  have hi : (1 - (p : ℝ) ^ (-(1 : ℝ) / 2))⁻¹ ≤ 4 := by
    rw [inv_le_iff_one_le_mul₀ (by linarith : 0 < 1 - (p : ℝ) ^ (-(1 : ℝ) / 2))]
    linarith
  have hlogpow := Real.log_le_rpow_div hp0.le (by norm_num : (0 : ℝ) < 1 / 4)
  calc
    _ ≤ Real.log (p : ℝ) * (((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ 3 *
        (1 - (p : ℝ) ^ (-(1 : ℝ) / 2))⁻¹) := mul_le_mul_of_nonneg_left hsum hlog
    _ ≤ Real.log (p : ℝ) * (((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ 3 * 4) :=
      mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hi (pow_nonneg hr0 3)) hlog
    _ ≤ ((p : ℝ) ^ ((1 : ℝ) / 4) / (1 / 4)) *
        (((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ 3 * 4) :=
      mul_le_mul_of_nonneg_right hlogpow (by positivity)
    _ = 16 * (p : ℝ) ^ (-(5 : ℝ) / 4) := by
      rw [← Real.rpow_mul_natCast hp0.le]
      have he : (p : ℝ) ^ ((1 : ℝ) / 4) * (p : ℝ) ^ ((-(1 : ℝ) / 2) * (3 : ℕ)) =
          (p : ℝ) ^ (-(5 : ℝ) / 4) := by
        rw [← Real.rpow_add hp0]
        congr 1
        norm_num
      calc
        _ = 16 * ((p : ℝ) ^ ((1 : ℝ) / 4) *
            (p : ℝ) ^ ((-(1 : ℝ) / 2) * (3 : ℕ))) := by ring
        _ = _ := by rw [he]

/-- The all-natural p-series used for the higher-power budget is genuinely summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `009f91561f501843cc723e41e90f35a9a23cdaa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
