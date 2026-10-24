# lemma_approx_monotone_C1_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 823,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17beabeb-39a5-6a6d-343b-a5ad4cbdb7b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74b48b5f-4e20-1785-37af-c615f1184ee9",
  "kind": "theorem",
  "lexical_name": "lemma_approx_monotone_C1_I",
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
  "slug": "lemma-approx-monotone-c1-i--dd8e0d8fbc16d989b0181574",
  "source": {
    "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 840,
    "line": 823,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd8e0d8fbc16d989b0181574dcfcfa71a45e7656ab74754562cc97cf2f632752",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74b48b5f-4e20-1785-37af-c615f1184ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 823–840.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_approx_monotone_C1_I (f : C(I, ℝ)) (hf_mono : Monotone f) :
    ∀ ε > 0, ∃ P : ℝ → ℝ, ContDiffOn ℝ 1 P I ∧ MonotoneOn P I ∧ ∀ x : I, |f x - P x| < ε := by
  intro ε hεpos
  obtain ⟨n, hn⟩ := Metric.tendsto_atTop.mp (tendsto_iff_norm_sub_tendsto_zero.mp
    (bernsteinApproximation_uniform f)) ε hεpos
  have hn : ‖bernsteinApproximation n f - f‖ < ε := by simpa [dist_zero_right, norm_norm] using hn n le_rfl
  let P : ℝ → ℝ := fun x ↦ ∑ k : Fin (n + 1), (n.choose k : ℝ) * x ^ (k : ℕ) * (1 - x) ^ (n - k : ℕ) * f (bernstein.z k)
  have hP (x) (hx : x ∈ I) : P x = bernsteinApproximation n f ⟨x, hx⟩ := by
    simp [P, bernsteinApproximation, bernstein, bernsteinPolynomial, mul_comm]
  refine ⟨P, ContDiff.contDiffOn <| ContDiff.sum fun k _ ↦ ?_, fun x hx y hy hxy ↦ ?_, fun x ↦ ?_⟩
  · apply_rules [ContDiff.mul, ContDiff.pow, contDiff_const, contDiff_id, ContDiff.sub]
  · rw [hP x hx, hP y hy]
    exact bernsteinApproximation_monotone n f hf_mono (Subtype.mk_le_mk.mpr hxy)
  · rw [abs_sub_comm, hP x x.2]
    exact lt_of_le_of_lt (ContinuousMap.norm_coe_le_norm (bernsteinApproximation n f - f) x) hn

/-- Continuous monotone functions on a compact interval can be uniformly approximated by `C¹`
monotone functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean#L823).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0f3aece12c9562ccb5ca1c7447b813a4348cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
