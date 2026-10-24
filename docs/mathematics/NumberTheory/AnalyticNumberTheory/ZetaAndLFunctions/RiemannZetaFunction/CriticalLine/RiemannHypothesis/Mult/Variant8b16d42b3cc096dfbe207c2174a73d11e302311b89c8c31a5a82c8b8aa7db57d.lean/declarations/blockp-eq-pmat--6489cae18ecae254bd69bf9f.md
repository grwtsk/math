# blockP_eq_Pmat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f53b61b1cf916bf7d51eed333567a22bb011e0d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b16d42b3cc096dfbe207c2174a73d11e302311b89c8c31a5a82c8b8aa7db57d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31c47c64-c256-d1e9-6926-3bb0cf2bced8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56e64970-74b2-9c4b-667c-5b7b6f2cd331",
  "kind": "theorem",
  "lexical_name": "blockP_eq_Pmat",
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
  "slug": "blockp-eq-pmat--6489cae18ecae254bd69bf9f",
  "source": {
    "blob": "f53b61b1cf916bf7d51eed333567a22bb011e0d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant8b16d42b3cc096dfbe207c2174a73d11e302311b89c8c31a5a82c8b8aa7db57d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6489cae18ecae254bd69bf9fbfaf1cbf3b79b8d0739b2bc72e650f3c7a11557e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant8b16d42b3cc096dfbe207c2174a73d11e302311b89c8c31a5a82c8b8aa7db57d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56e64970-74b2-9c4b-667c-5b7b6f2cd331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockP_eq_Pmat {c : ℝ} (hc : 0 < c) : D.blockP c = Pmat (𝕜 := ℂ) D.mhat (D.vhat c) := by
  ext a b
  rw [Pmat_apply (fun z => D.mhat_nonneg z)]
  simp only [blockP, onPart, Matrix.smul_apply, Matrix.sum_apply, Matrix.vecMulVec_apply,
    smul_eq_mul, Finset.mul_sum]
  rw [← Finset.sum_coe_sort D.onLine]
  refine Finset.sum_congr rfl fun z _ => ?_
  have hz : D.σ z = z := (D.mem_onLine).mp z.2
  have hreal : starRingEnd ℂ (D.v z b) = D.v z b := by
    have := congrFun (D.star_v_of_onLine hz) b
    rwa [Pi.star_apply, RCLike.star_def] at this
  simp only [mhat, vhat]
  rw [map_div₀, hreal, Complex.conj_ofReal]
  have hsq : ((Real.sqrt c : ℂ)) ^ 2 = (c : ℂ) := by
    rw [sq, ← Complex.ofReal_mul, Real.mul_self_sqrt hc.le]
  have hc0 : (Real.sqrt c : ℂ) ≠ 0 := by exact_mod_cast (Real.sqrt_pos.mpr hc).ne'
  have hcc : (c : ℂ) ≠ 0 := by exact_mod_cast hc.ne'
  rw [div_mul_div_comm, ← sq, hsq]
  push_cast
  field_simp

/-- ‖v_z/√c‖² ≤ 1 from the truncated Poisson bound Σ_k‖v_z k‖² ≤ c. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant8b16d42b3cc096dfbe207c2174a73d11e302311b89c8c31a5a82c8b8aa7db57d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant8b16d42b3cc096dfbe207c2174a73d11e302311b89c8c31a5a82c8b8aa7db57d.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f53b61b1cf916bf7d51eed333567a22bb011e0d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
