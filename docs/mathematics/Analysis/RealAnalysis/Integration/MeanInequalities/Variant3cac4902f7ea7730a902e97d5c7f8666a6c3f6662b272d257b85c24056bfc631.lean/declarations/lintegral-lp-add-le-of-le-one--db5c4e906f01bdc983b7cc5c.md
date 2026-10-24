# lintegral_Lp_add_le_of_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f40c8e9540517f10b3aff9d0280120e23c6c6f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 450,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b82cd29f-62e3-5a87-13b7-95611e50b83d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:281e913e-b230-07c0-62ae-201662dd36ce",
  "kind": "theorem",
  "lexical_name": "lintegral_Lp_add_le_of_le_one",
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
  "slug": "lintegral-lp-add-le-of-le-one--db5c4e906f01bdc983b7cc5c",
  "source": {
    "blob": "0f40c8e9540517f10b3aff9d0280120e23c6c6f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 450,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db5c4e906f01bdc983b7cc5cd194043d5668fbc633d5d4abd9bcfd8bea2b61c0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:281e913e-b230-07c0-62ae-201662dd36ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_Lp_add_le_of_le_one {p : ℝ} {f g : α → ℝ≥0∞} (hf : AEMeasurable f μ) (hp0 : 0 ≤ p)
    (hp1 : p ≤ 1) :
    (∫⁻ a, (f + g) a ^ p ∂μ) ^ (1 / p) ≤
      (2 : ℝ≥0∞) ^ (1 / p - 1) * ((∫⁻ a, f a ^ p ∂μ) ^ (1 / p) + (∫⁻ a, g a ^ p ∂μ) ^ (1 / p)) := by
  rcases eq_or_lt_of_le hp0 with (rfl | hp)
  · simp only [Pi.add_apply, rpow_zero, lintegral_one, _root_.div_zero, zero_sub]
    norm_num
    rw [rpow_neg, rpow_one, ENNReal.inv_mul_cancel two_ne_zero ofNat_ne_top]
  calc
    (∫⁻ a, (f + g) a ^ p ∂μ) ^ (1 / p) ≤ ((∫⁻ a, f a ^ p ∂μ) + ∫⁻ a, g a ^ p ∂μ) ^ (1 / p) := by
      rw [← lintegral_add_left' (hf.pow_const p)]
      gcongr with a
      exact rpow_add_le_add_rpow _ _ hp0 hp1
    _ ≤ (2 : ℝ≥0∞) ^ (1 / p - 1) * ((∫⁻ a, f a ^ p ∂μ) ^ (1 / p) + (∫⁻ a, g a ^ p ∂μ) ^ (1 / p)) :=
      rpow_add_le_mul_rpow_add_rpow _ _ ((one_le_div hp).2 hp1)

end ENNReal

/-- Hölder's inequality for functions `α → ℝ≥0`. The integral of the product of two functions
is bounded by the product of their `ℒp` and `ℒq` seminorms when `p` and `q` are conjugate
exponents. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f40c8e9540517f10b3aff9d0280120e23c6c6f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
