# MemLp.integral_indicator_norm_ge_nonneg_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fad813cfaa2d00abe57bfca784cc2b341f1b04f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:224b8c60-4d07-61b6-d304-d70e5e5a03cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:127eb2fb-4d83-5430-7b20-bc6d5661de33",
  "kind": "theorem",
  "lexical_name": "MemLp.integral_indicator_norm_ge_nonneg_le",
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
  "slug": "memlp-integral-indicator-norm-ge-nonneg-le--6bb4dcb2fb360f6e770757d3",
  "source": {
    "blob": "1fad813cfaa2d00abe57bfca784cc2b341f1b04f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 256,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bb4dcb2fb360f6e770757d3fef0a1b4827331a8d78520351daf0ec171c2ef5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:127eb2fb-4d83-5430-7b20-bc6d5661de33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.integral_indicator_norm_ge_nonneg_le (hf : MemLp f 1 μ) {ε : ℝ≥0∞} (hε : 0 < ε) :
    ∃ M : ℝ, 0 ≤ M ∧ (∫⁻ x, ‖{ x | M ≤ ‖f x‖₊ }.indicator f x‖ₑ ∂μ) ≤ ε := by
  have hf_mk : MemLp (hf.aestronglyMeasurable.mk f) 1 μ :=
    (memLp_congr_ae hf.aestronglyMeasurable.ae_eq_mk).mp hf
  obtain ⟨M, hM_pos, hfM⟩ :=
    hf_mk.integral_indicator_norm_ge_nonneg_le_of_meas
      hf.aestronglyMeasurable.stronglyMeasurable_mk hε
  refine ⟨M, hM_pos, (le_of_eq ?_).trans hfM⟩
  refine lintegral_congr_ae ?_
  filter_upwards [hf.aestronglyMeasurable.ae_eq_mk] with x hx
  simp only [Set.indicator_apply, coe_nnnorm, Set.mem_ofPred_eq, hx.symm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fad813cfaa2d00abe57bfca784cc2b341f1b04f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
