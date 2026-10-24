# eps_form_fiveSixths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2034d2311be8eb2687b5f7c7cd2d7a1f9ada422",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce5f72526219ba85ade4aa870c71ca3f72e7e39f32e5b595a07798bd4fbf568c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bac88ac4-84d2-9ace-2241-300be5a26ba0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54fe628d-ed95-ca86-0935-d67d502caf08",
  "kind": "theorem",
  "lexical_name": "eps_form_fiveSixths",
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
  "slug": "eps-form-fivesixths--ce64d7e02a98decf0b875ceb",
  "source": {
    "blob": "c2034d2311be8eb2687b5f7c7cd2d7a1f9ada422",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variantce5f72526219ba85ade4aa870c71ca3f72e7e39f32e5b595a07798bd4fbf568c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce64d7e02a98decf0b875ceb005bb719698331eb593644e8f3a4bee71916b9db",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variantce5f72526219ba85ade4aa870c71ca3f72e7e39f32e5b595a07798bd4fbf568c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54fe628d-ed95-ca86-0935-d67d502caf08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eps_form_fiveSixths {N lower : ℝ → ℝ} (hN : ∀ T, 0 ≤ N T)
    (h : ∀ lam : ℝ, 1 / 2 ≤ lam → lam < 1 →
      ∀ ε > 0, ∃ T₀, ∀ T ≥ T₀, (Gfun lam - ε) * N T ≤ lower T) :
    ∀ ε > 0, ∃ T₀, ∀ T ≥ T₀, (5 / 6 - ε) * N T ≤ lower T :=
  Assembly.eps_form_sup_half (fun η hη => by
    obtain ⟨lam, h1, h2, h3⟩ := Assembly.exists_lam_near_one hη
    exact ⟨lam, h1, h2, by linarith [Gfun_ge_near_one lam h1 h2.le]⟩) hN h

/-! ## The moment hypotheses from [thm:traces] (abstract zero configuration) -/

section Moments

variable (Z : ZeroConfig) (H : PaperInputs Z) (P : Params) (hP : P.Valid) (hlam : P.lam < 1)
  (hTr : ThmTracesHyp P Z)
  (hGzGp : ∀ᶠ T in atTop, Z.Gz P T = P.Gp T)
  (ha : ∀ᶠ T in atTop, 1 - 2 * P.w / P.L T ≤ P.a T ∧ P.a T ≤ 1)

include H hP hlam hTr hGzGp ha in
/-- [thm:traces] + H-RvM ⟹ the two moment hypotheses of the certificate with κ = κ(λ):
tr Ĝ ≥ (1 − δ)N and ‖Ĝ‖_F² ≤ (κ(λ) + δ)N eventually, for every δ > 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variantce5f72526219ba85ade4aa870c71ca3f72e7e39f32e5b595a07798bd4fbf568c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variantce5f72526219ba85ade4aa870c71ca3f72e7e39f32e5b595a07798bd4fbf568c.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2034d2311be8eb2687b5f7c7cd2d7a1f9ada422` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
