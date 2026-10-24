# AnalyticOnNhd.eq_const_add_im_mul_I_of_re_eq_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f5310c2253a6d42088fada62904e438bb12e44b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03dcc8da264ce295c3be787442c1609a94a5ad1381202e822fedc47ec68e370d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84d31148-c624-5ac8-d27c-931d1dd6b7a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72dd380d-01b8-cdf7-b162-4976c403d21c",
  "kind": "theorem",
  "lexical_name": "AnalyticOnNhd.eq_const_add_im_mul_I_of_re_eq_const",
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
  "slug": "analyticonnhd-eq-const-add-im-mul-i-of-re-eq-const--8de4cdb7c1c54e07e8c570ab",
  "source": {
    "blob": "2f5310c2253a6d42088fada62904e438bb12e44b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 227,
    "path": "GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant03dcc8da264ce295c3be787442c1609a94a5ad1381202e822fedc47ec68e370d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8de4cdb7c1c54e07e8c570abd200e5d97f891152e7e1fcb6ba4a57d80afd86c3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/OpenMapping/Variant03dcc8da264ce295c3be787442c1609a94a5ad1381202e822fedc47ec68e370d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72dd380d-01b8-cdf7-b162-4976c403d21c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticOnNhd.eq_const_add_im_mul_I_of_re_eq_const {U : Set ℂ} {c₀ : ℝ}
    (h₁f : AnalyticOnNhd ℂ f U) (h₂f : ∀ x ∈ U, (f x).im = c₀) (h₁U : IsOpen U)
    (h₂U : IsConnected U) :
    ∃ (c : ℝ), ∀ x ∈ U, f x = c + c₀ * I := by
  obtain ⟨cc, hcc⟩ := AnalyticOnNhd.eq_const_of_im_eq_const h₁f h₂f h₁U h₂U
  use cc.re
  simp_rw [Complex.ext_iff]
  aesop

/-!
## Holomorphic Functions as Open Quotient Maps
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/OpenMapping/Variant03dcc8da264ce295c3be787442c1609a94a5ad1381202e822fedc47ec68e370d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant03dcc8da264ce295c3be787442c1609a94a5ad1381202e822fedc47ec68e370d.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f5310c2253a6d42088fada62904e438bb12e44b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
