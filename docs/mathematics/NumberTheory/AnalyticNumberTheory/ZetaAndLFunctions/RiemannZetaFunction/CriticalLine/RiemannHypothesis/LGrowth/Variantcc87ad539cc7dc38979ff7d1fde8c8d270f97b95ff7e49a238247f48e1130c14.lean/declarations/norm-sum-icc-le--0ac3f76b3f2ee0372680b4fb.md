# norm_sum_Icc_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b05344f-136b-8c49-ad04-8b217096a7d5",
  "kind": "theorem",
  "lexical_name": "norm_sum_Icc_le",
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
  "slug": "norm-sum-icc-le--0ac3f76b3f2ee0372680b4fb",
  "source": {
    "blob": "0cd15a5b50841aff7a251ae4dc89a80f8a9d52fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ac3f76b3f2ee0372680b4fb6fd9a80f1d3367ffe8793db69e2d071af23599ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b05344f-136b-8c49-ad04-8b217096a7d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sum_Icc_le (hχ1 : χ ≠ 1) (n : ℕ) :
    ‖∑ k ∈ Finset.Icc 1 n, χ (k : ZMod q)‖ ≤ q := by
  have hsplit : ∑ k ∈ Finset.range (n + 1), χ (k : ZMod q)
      = χ ((0 : ℕ) : ZMod q) + ∑ k ∈ Finset.Icc 1 n, χ (k : ZMod q) := by
    rw [Finset.range_eq_Ico, Finset.sum_eq_sum_Ico_succ_bot (Nat.succ_pos n)]
    congr 1
  have h1 := norm_sum_range_le hχ1 (n + 1)
  rw [hsplit] at h1
  have h0 : ‖χ ((0 : ℕ) : ZMod q)‖ ≤ 1 := χ.norm_le_one _
  calc ‖∑ k ∈ Finset.Icc 1 n, χ (k : ZMod q)‖
      = ‖(χ ((0 : ℕ) : ZMod q) + ∑ k ∈ Finset.Icc 1 n, χ (k : ZMod q)) - χ ((0 : ℕ) : ZMod q)‖ := by
        congr 1; ring
    _ ≤ ‖χ ((0 : ℕ) : ZMod q) + ∑ k ∈ Finset.Icc 1 n, χ (k : ZMod q)‖ + ‖χ ((0 : ℕ) : ZMod q)‖ :=
        norm_sub_le _ _
    _ ≤ (q - 1) + 1 := add_le_add h1 h0
    _ = q := by ring

/-! ## The Abel integral as a Mellin transform; continuation to Re s > 0 -/

/-- The Abel kernel: t ↦ 1_{t>1}·Σ_{1≤k≤t} χ(k). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cd15a5b50841aff7a251ae4dc89a80f8a9d52fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
