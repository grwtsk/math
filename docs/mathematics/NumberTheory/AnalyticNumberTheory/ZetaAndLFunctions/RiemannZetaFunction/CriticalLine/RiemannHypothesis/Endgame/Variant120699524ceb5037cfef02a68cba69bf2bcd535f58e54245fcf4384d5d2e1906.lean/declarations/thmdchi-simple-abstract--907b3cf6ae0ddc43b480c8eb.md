# thmDChi_simple_abstract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2880863db6ffe2d682e9a5608058b1cc61eca6ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 385,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/120699524ceb5037cfef02a68cba69bf2bcd535f58e54245fcf4384d5d2e1906.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8de30ac2-7749-aad0-7dc4-ee1465eb7f26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37fca1d6-e8cf-3bc1-ff2d-6a09d01149e0",
  "kind": "theorem",
  "lexical_name": "thmDChi_simple_abstract",
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
  "slug": "thmdchi-simple-abstract--907b3cf6ae0ddc43b480c8eb",
  "source": {
    "blob": "2880863db6ffe2d682e9a5608058b1cc61eca6ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 385,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variant120699524ceb5037cfef02a68cba69bf2bcd535f58e54245fcf4384d5d2e1906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:907b3cf6ae0ddc43b480c8eb61fb04ec5319f6b5fb2eb584da3d13922eb11979",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variant120699524ceb5037cfef02a68cba69bf2bcd535f58e54245fcf4384d5d2e1906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37fca1d6-e8cf-3bc1-ff2d-6a09d01149e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmDChi_simple_abstract (Z : ZeroConfig) (κ : ℕ) {q : ℕ} (hq : 1 ≤ q) (cf : ℕ → ℂ)
    (P : Params) (hP : P.Valid) (hlam : P.lam < 1)
    (hRvM : RiemannVonMangoldtChi q Z)
    (aT bT JT trG trG2 : ℝ → ℝ)
    (hTr : TracesBoundsDChi P q aT bT JT trG trG2 (fun T => (Z.N T (2 * T) : ℝ)))
    {c : ℝ} (hc0 : 0 < c)
    (hc : Tendsto (fun T => cRatio (lam1q P q T) (aT T) (bT T) (JT T)) atTop (𝓝 c))
    (ha : ∀ᶠ T in atTop, 1 / 2 ≤ aT T ∧ aT T ≤ 1)
    (hBlock : ∀ᶠ T in atTop, BlockInputs Z (P.atD T) T)
    (θ₀ : ℝ → ℝ) (hTail : ∀ᶠ T in atTop, TailInputs Z (P.atD T) T (θ₀ T))
    (hθ₀ : ∃ C : ℝ, ∀ᶠ T in atTop, θ₀ T ≤ C * l T * T ^ (P.lam / 2 - 1))
    (hNII : ∃ C : ℝ, ∀ᶠ T in atTop, (NII Z T : ℝ) ≤ C * Real.sqrt T * l T)
    (hGzGp : ∀ᶠ T in atTop, Z.Gz (P.atD T) T = GpChi (P.atD T) κ q cf T)
    (hId : ∀ᶠ T in atTop, trGtildeChi (P.atD T) κ q cf T = trG T ∧
      trGtildeSqChi (P.atD T) κ q cf T = trG2 T ∧ (P.atD T).a T = aT T) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (2 * c - 1 - ε) * (Z.N T (2 * T) : ℝ) ≤ Z.N0s T (2 * T) := by
  obtain ⟨R, hR, hev⟩ := thmDChi_BC_core Z κ hq cf P hP hlam hRvM aT bT JT trG trG2 hTr hc0 hc
    ha hBlock θ₀ hTail hθ₀ hNII hGzGp hId
  refine eps_form_of_isLittleO (err := fun T => 2 * R T) (hev.mono fun T h => ?_)
    (Eventually.of_forall fun T => Nat.cast_nonneg _) (hR.const_mul_left 2)
  linarith [h.1]

/-- **Theorem D for L(s,χ), Thm-C line** (fixed λ, abstract): N_d(T,2T) ≥ (c∞ − ε) N(T,2T) eventually. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variant120699524ceb5037cfef02a68cba69bf2bcd535f58e54245fcf4384d5d2e1906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variant120699524ceb5037cfef02a68cba69bf2bcd535f58e54245fcf4384d5d2e1906.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2880863db6ffe2d682e9a5608058b1cc61eca6ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
