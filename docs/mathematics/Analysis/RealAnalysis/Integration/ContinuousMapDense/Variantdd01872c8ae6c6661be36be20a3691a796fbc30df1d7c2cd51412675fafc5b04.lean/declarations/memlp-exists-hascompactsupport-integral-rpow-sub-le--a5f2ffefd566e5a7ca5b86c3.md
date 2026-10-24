# MemLp.exists_hasCompactSupport_integral_rpow_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ce3df3437c96c957ef0ca67463fec98d1751d6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b93b4826-5c36-cc90-82e6-594943c89643",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fcd51be-9a30-4b9d-fa58-316c61756771",
  "kind": "theorem",
  "lexical_name": "MemLp.exists_hasCompactSupport_integral_rpow_sub_le",
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
  "slug": "memlp-exists-hascompactsupport-integral-rpow-sub-le--a5f2ffefd566e5a7ca5b86c3",
  "source": {
    "blob": "7ce3df3437c96c957ef0ca67463fec98d1751d6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 189,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5f2ffefd566e5a7ca5b86c361037cd839e03b6c8839841ff86a86c387549b71",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fcd51be-9a30-4b9d-fa58-316c61756771`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.exists_hasCompactSupport_integral_rpow_sub_le
    [R1Space α] [WeaklyLocallyCompactSpace α] [μ.Regular]
    {p : ℝ} (hp : 0 < p) {f : α → E} (hf : MemLp f (ENNReal.ofReal p) μ) {ε : ℝ} (hε : 0 < ε) :
    ∃ g : α → E,
      HasCompactSupport g ∧
        (∫ x, ‖f x - g x‖ ^ p ∂μ) ≤ ε ∧ Continuous g ∧ MemLp g (ENNReal.ofReal p) μ := by
  have I : 0 < ε ^ (1 / p) := Real.rpow_pos_of_pos hε _
  have A : ENNReal.ofReal (ε ^ (1 / p)) ≠ 0 := by
    simp only [Ne, ENNReal.ofReal_eq_zero, not_le, I]
  have B : ENNReal.ofReal p ≠ 0 := by simpa only [Ne, ENNReal.ofReal_eq_zero, not_le] using hp
  rcases hf.exists_hasCompactSupport_eLpNorm_sub_le ENNReal.coe_ne_top A with
    ⟨g, g_support, hg, g_cont, g_mem⟩
  change eLpNorm _ (ENNReal.ofReal p) _ ≤ _ at hg
  refine ⟨g, g_support, ?_, g_cont, g_mem⟩
  rwa [(hf.sub g_mem).eLpNorm_eq_integral_rpow_norm B ENNReal.coe_ne_top,
    ENNReal.ofReal_le_ofReal_iff I.le, one_div, ENNReal.toReal_ofReal hp.le,
    Real.rpow_le_rpow_iff _ hε.le (inv_pos.2 hp)] at hg
  positivity


/-- In a locally compact space, any integrable function can be approximated by compactly supported
continuous functions, version in terms of `∫⁻`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variantdd01872c8ae6c6661be36be20a3691a796fbc30df1d7c2cd51412675fafc5b04.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce3df3437c96c957ef0ca67463fec98d1751d6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
