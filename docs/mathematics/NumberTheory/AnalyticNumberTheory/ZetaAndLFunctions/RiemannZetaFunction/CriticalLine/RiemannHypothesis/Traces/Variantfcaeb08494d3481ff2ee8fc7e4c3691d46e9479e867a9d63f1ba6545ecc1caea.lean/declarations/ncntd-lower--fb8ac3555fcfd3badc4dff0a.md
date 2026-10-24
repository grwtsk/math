# NcntD_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b9eb56351a9d22d380fc5c786127e9098671597",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fcaeb08494d3481ff2ee8fc7e4c3691d46e9479e867a9d63f1ba6545ecc1caea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52af3f2d-0bde-3a27-06b2-12a6ab70c004",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc4c3e94-039f-bc50-94d8-44660c461be9",
  "kind": "lemma",
  "lexical_name": "NcntD_lower",
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
  "slug": "ncntd-lower--fb8ac3555fcfd3badc4dff0a",
  "source": {
    "blob": "6b9eb56351a9d22d380fc5c786127e9098671597",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantfcaeb08494d3481ff2ee8fc7e4c3691d46e9479e867a9d63f1ba6545ecc1caea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb8ac3555fcfd3badc4dff0add837af881e8cf24b9ea6da3e6acdb828754ce34",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantfcaeb08494d3481ff2ee8fc7e4c3691d46e9479e867a9d63f1ba6545ecc1caea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc4c3e94-039f-bc50-94d8-44660c461be9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma NcntD_lower : ∀ᶠ T in Filter.atTop, T * l T / (4 * π) ≤ D.Ncnt T := by
  obtain ⟨A, hA, hN⟩ := h.rvm.eventually_le
  filter_upwards [hN, Filter.eventually_ge_atTop (4 * π * A), PaperParams.eventually_l_ge 0,
    Filter.eventually_gt_atTop (0:ℝ)] with T hN hTA hl hT0
  have hπ := Real.pi_pos
  have h1 : -(A * l T) ≤ D.Ncnt T - T * ell1q q T / (2 * π) := (abs_le.mp hN).1
  have h2 : T * l T ≤ T * ell1q q T :=
    mul_le_mul_of_nonneg_left (ThmE.l_le_ell1q h.one_le_q hT0) (by linarith)
  have h3 : T * l T / (2 * π) ≤ T * ell1q q T / (2 * π) :=
    div_le_div_of_nonneg_right h2 (by positivity)
  have h4 : T * l T / (4 * π) = T * l T / (2 * π) - T * l T / (4 * π) := by ring
  have h5 : A * l T ≤ T * l T / (4 * π) := by
    rw [le_div_iff₀ (by positivity)]
    nlinarith
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantfcaeb08494d3481ff2ee8fc7e4c3691d46e9479e867a9d63f1ba6545ecc1caea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantfcaeb08494d3481ff2ee8fc7e4c3691d46e9479e867a9d63f1ba6545ecc1caea.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b9eb56351a9d22d380fc5c786127e9098671597` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
