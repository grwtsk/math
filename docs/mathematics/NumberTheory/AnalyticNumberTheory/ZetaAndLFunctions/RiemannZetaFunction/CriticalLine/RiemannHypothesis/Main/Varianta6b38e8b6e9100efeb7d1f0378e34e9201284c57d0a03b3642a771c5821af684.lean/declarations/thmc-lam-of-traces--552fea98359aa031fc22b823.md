# thmC_lam_of_traces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab3aa830-1e7e-46b5-14d9-1abcae57592a",
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
  "slug": "thmc-lam-of-traces--552fea98359aa031fc22b823",
  "source": {
    "blob": "06140d15ff88511a9eb47c39313a8f5d5767ce06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 227,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Varianta6b38e8b6e9100efeb7d1f0378e34e9201284c57d0a03b3642a771c5821af684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:552fea98359aa031fc22b82391783f4dd0cfbf44dad583fea530b1223ca83c3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Varianta6b38e8b6e9100efeb7d1f0378e34e9201284c57d0a03b3642a771c5821af684.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab3aa830-1e7e-46b5-14d9-1abcae57592a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–242.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Varianta6b38e8b6e9100efeb7d1f0378e34e9201284c57d0a03b3642a771c5821af684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Varianta6b38e8b6e9100efeb7d1f0378e34e9201284c57d0a03b3642a771c5821af684.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06140d15ff88511a9eb47c39313a8f5d5767ce06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
