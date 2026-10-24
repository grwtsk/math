# tendsto_integral_cexp_sq_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1e54ede8b12a60253f745cd0909fdb3278bb511",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a71b0aa4-4d29-0131-8ea8-8443e82add5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b8f581d-3efc-8f1f-de7b-0a9cbb388164",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_cexp_sq_smul",
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
  "slug": "tendsto-integral-cexp-sq-smul--c7d9774a857143faaecbcf66",
  "source": {
    "blob": "c1e54ede8b12a60253f745cd0909fdb3278bb511",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7d9774a857143faaecbcf662a9c3b0bcb0102d8da345bd90531d12ec21c396c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b8f581d-3efc-8f1f-de7b-0a9cbb388164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_cexp_sq_smul (hf : Integrable f) :
    Tendsto (fun (c : ℝ) ↦ (∫ v : V, cexp (- c⁻¹ * ‖v‖ ^ 2) • f v))
      atTop (𝓝 (∫ v : V, f v)) := by
  apply tendsto_integral_filter_of_dominated_convergence _ _ _ hf.norm
  · filter_upwards with v
    nth_rewrite 2 [show f v = cexp (- (0 : ℝ) * ‖v‖ ^ 2) • f v by simp]
    apply (Tendsto.cexp _).smul_const
    exact tendsto_inv_atTop_zero.ofReal.neg.mul_const _
  · filter_upwards with c using
      AEStronglyMeasurable.smul (Continuous.aestronglyMeasurable (by fun_prop)) hf.1
  · filter_upwards [Ici_mem_atTop (0 : ℝ)] with c (hc : 0 ≤ c)
    filter_upwards with v
    simp only [ofReal_inv, neg_mul, norm_smul]
    norm_cast
    conv_rhs => rw [← one_mul (‖f v‖)]
    gcongr
    simp only [norm_eq_abs, abs_exp, exp_le_one_iff, Left.neg_nonpos_iff]
    positivity

variable [CompleteSpace E]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e54ede8b12a60253f745cd0909fdb3278bb511` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
