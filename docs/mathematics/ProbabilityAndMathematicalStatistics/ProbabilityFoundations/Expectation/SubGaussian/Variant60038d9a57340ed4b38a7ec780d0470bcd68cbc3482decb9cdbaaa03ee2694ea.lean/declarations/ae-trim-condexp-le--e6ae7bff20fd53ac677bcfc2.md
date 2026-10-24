# ae_trim_condExp_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2c9b55f67a2de2ea02f0d91371ae57438c26a6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 561,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1c8e133-aab6-f463-e135-3309d3dacd71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f755b791-52bd-0e4d-8057-9b046f39ccbd",
  "kind": "lemma",
  "lexical_name": "ae_trim_condExp_le",
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
  "slug": "ae-trim-condexp-le--e6ae7bff20fd53ac677bcfc2",
  "source": {
    "blob": "b2c9b55f67a2de2ea02f0d91371ae57438c26a6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 568,
    "line": 561,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6ae7bff20fd53ac677bcfc2abfc5729c6cf63204436c217e9c589c4c9a1bde7",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f755b791-52bd-0e4d-8057-9b046f39ccbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ae_trim_condExp_le (h : HasCondSubgaussianMGF m hm X c μ) (t : ℝ) :
    ∀ᵐ ω' ∂(μ.trim hm), (μ[fun ω ↦ exp (t * X ω) | m]) ω' ≤ exp (c * t ^ 2 / 2) := by
  have h_eq := condExp_ae_eq_trim_integral_condExpKernel hm (h.integrable_exp_mul t)
  simp_rw [condExpKernel_comp_trim] at h_eq
  filter_upwards [h.mgf_le, h_eq] with ω' h_mgf h_eq
  rw [h_eq]
  exact h_mgf t

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2c9b55f67a2de2ea02f0d91371ae57438c26a6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
