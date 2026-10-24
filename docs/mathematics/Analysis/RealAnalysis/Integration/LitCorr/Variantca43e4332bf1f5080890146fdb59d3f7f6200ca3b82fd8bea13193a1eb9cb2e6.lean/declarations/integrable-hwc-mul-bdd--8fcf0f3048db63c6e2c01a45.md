# integrable_HwC_mul_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6642936e98187cf5821a3af9634301cceee123fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d6993b1-bb3c-dccf-024f-f00ddd374d8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df4b9924-1b36-d408-dba5-511d660e85da",
  "kind": "theorem",
  "lexical_name": "integrable_HwC_mul_bdd",
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
  "slug": "integrable-hwc-mul-bdd--8fcf0f3048db63c6e2c01a45",
  "source": {
    "blob": "6642936e98187cf5821a3af9634301cceee123fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 161,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fcf0f3048db63c6e2c01a4514e2e9158cd65017db4e83f37de4489321fec9cd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df4b9924-1b36-d408-dba5-511d660e85da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_HwC_mul_bdd {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3/2) {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k)
    (hkc : HasCompactSupport k) {g : ℝ → ℂ} (hg : Continuous g) {M : ℝ} (hM : ∀ t, ‖g t‖ ≤ M) :
    Integrable (fun t : ℝ => HwC c k t * g t) := by
  obtain ⟨C, hC0, hC⟩ := norm_HwC_le hc1 hc2 hk hkc
  have hdom : Integrable (fun t : ℝ => C / (1 + t ^ 2) * M) := by
    have := (integrable_inv_one_add_sq.const_mul C).mul_const M
    refine this.congr (Eventually.of_forall fun t => ?_)
    simp [div_eq_mul_inv]
  refine hdom.mono' ((continuous_HwC hk hkc).mul hg).aestronglyMeasurable (Eventually.of_forall fun t => ?_)
  rw [norm_mul]
  exact mul_le_mul (hC t) (hM t) (norm_nonneg _) (by positivity)

/-! ## the ζ evaluation at general c:  (1/2π)∫[H+H̃]·E = literatureRHS k -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6642936e98187cf5821a3af9634301cceee123fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
