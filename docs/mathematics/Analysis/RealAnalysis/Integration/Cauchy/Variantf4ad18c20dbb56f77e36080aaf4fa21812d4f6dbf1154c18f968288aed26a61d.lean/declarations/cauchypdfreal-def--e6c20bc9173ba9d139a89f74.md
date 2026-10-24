# cauchyPDFReal_def'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e797ca93bbb7ef525f6cb76b1ee41ee3c61cac95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ce59a6e-3a88-f669-b1b2-fe874f4fd553",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd0d3a6d-f956-4a5a-107c-8f58ef0bb12e",
  "kind": "lemma",
  "lexical_name": "cauchyPDFReal_def'",
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
  "slug": "cauchypdfreal-def--e6c20bc9173ba9d139a89f74",
  "source": {
    "blob": "e797ca93bbb7ef525f6cb76b1ee41ee3c61cac95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6c20bc9173ba9d139a89f744d7045ed69a65fad1703011af3135bc6e84d4b67",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd0d3a6d-f956-4a5a-107c-8f58ef0bb12e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cauchyPDFReal_def' (x₀ : ℝ) (γ : ℝ≥0) (x : ℝ) :
    cauchyPDFReal x₀ γ x = π⁻¹ * γ⁻¹ * (1 + ((x - x₀) / γ) ^ 2)⁻¹ := by
  rw [cauchyPDFReal_def]
  by_cases h : γ = 0
  · simp [h]
  simp
  field

@[deprecated (since := "2026-03-06")]
alias _root_Probability.CauchyPDFReal_def' := cauchyPDFReal_def'

/-- The pdf of the gamma distribution, as a function valued in `ℝ≥0∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e797ca93bbb7ef525f6cb76b1ee41ee3c61cac95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
