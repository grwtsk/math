# thmC_lam_of_traces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2166ec31b9b6a6d1e7ad3355a36a1f24dafd27e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9ffe70b13e0695022bd155803190dbcb031845e748de4a0a59477e84e8242e50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4ca3dbf-ae5c-f118-ff13-5c79280c6c9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51c76dba-39b5-35fa-a8f6-bc5dcfef3cac",
  "kind": "theorem",
  "lexical_name": "thmC_lam_of_traces",
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
  "slug": "thmc-lam-of-traces--7bb114bcfd6b3933aa50f5e6",
  "source": {
    "blob": "2166ec31b9b6a6d1e7ad3355a36a1f24dafd27e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 219,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant9ffe70b13e0695022bd155803190dbcb031845e748de4a0a59477e84e8242e50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bb114bcfd6b3933aa50f5e6acf18f109b5f80596a1dc040ad2373fd25a6829c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant9ffe70b13e0695022bd155803190dbcb031845e748de4a0a59477e84e8242e50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51c76dba-39b5-35fa-a8f6-bc5dcfef3cac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmC_lam_of_traces (H : PaperInputs zetaZeroConfig) {ϱ : ℝ → ℝ} (hϱ : TaperProfile ϱ)
    {lam : ℝ} (h0 : 0 < lam) (h1 : lam < 1)
    (hTr : ThmTracesHyp (paramsOf ϱ lam) zetaZeroConfig) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (Ffun lam - ε) * (Ncount T (2 * T) : ℝ) ≤ Ndist T (2 * T) := by
  have hP := paramsOf_valid hϱ h0 h1.le
  obtain ⟨hGzGp, -, hNII, hcalE⟩ := eventually_side_conditions zetaZeroConfig H _ hP
  obtain ⟨θ₀, hTail, hθ₀⟩ := Tail.eventually_tailPackage zetaZeroConfig H _ hP
  have hBlock := eventually_blockInputs zetaZeroConfig _ hP
  simpa [paramsOf] using Assembly.thmC_abstract zetaZeroConfig H (paramsOf ϱ lam) hP h1 hTr hBlock
    θ₀ hTail hθ₀ hNII hGzGp hcalE

variable (H : PaperInputs zetaZeroConfig) {ϱ : ℝ → ℝ} (hϱ : TaperProfile ϱ)
    (hTr : ∀ lam : ℝ, 1 / 2 ≤ lam → lam < 1 → ThmTracesHyp (paramsOf ϱ lam) zetaZeroConfig)
include H hϱ hTr

/-- Theorem B modulo thm:traces: (1/2 − ε), dyadic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant9ffe70b13e0695022bd155803190dbcb031845e748de4a0a59477e84e8242e50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant9ffe70b13e0695022bd155803190dbcb031845e748de4a0a59477e84e8242e50.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2166ec31b9b6a6d1e7ad3355a36a1f24dafd27e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
