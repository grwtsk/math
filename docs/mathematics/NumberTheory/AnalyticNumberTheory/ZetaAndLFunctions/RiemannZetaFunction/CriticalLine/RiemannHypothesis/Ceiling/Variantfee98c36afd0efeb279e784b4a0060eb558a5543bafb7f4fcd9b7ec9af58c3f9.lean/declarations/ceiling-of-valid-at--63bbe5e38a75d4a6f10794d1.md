# ceiling_of_valid_at

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e9807583ebb83de51133d43b45db7d668f254af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fee98c36afd0efeb279e784b4a0060eb558a5543bafb7f4fcd9b7ec9af58c3f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ba562e8-e398-97a5-d772-856241d90095",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ff7fd20-0d9d-df6c-e314-837aa96040d0",
  "kind": "theorem",
  "lexical_name": "ceiling_of_valid_at",
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
  "slug": "ceiling-of-valid-at--63bbe5e38a75d4a6f10794d1",
  "source": {
    "blob": "4e9807583ebb83de51133d43b45db7d668f254af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ceiling/Variantfee98c36afd0efeb279e784b4a0060eb558a5543bafb7f4fcd9b7ec9af58c3f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63bbe5e38a75d4a6f10794d1aafc00f3bb61edae4b7eaf7c21f011c8b648af72",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ceiling/Variantfee98c36afd0efeb279e784b4a0060eb558a5543bafb7f4fcd9b7ec9af58c3f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ff7fd20-0d9d-df6c-e314-837aa96040d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ceiling_of_valid_at (hN : 0 < N) {r g h : ℝ → ℝ} {T : Set ℝ} (hT : T.Countable) {M p₁ c₀ : ℝ}
    (hr : ∀ x ∈ Icc (0:ℝ) 1, HasDerivAt r (g x) x) (hg : ContinuousOn g (Icc (0:ℝ) 1))
    (hgh : ∀ x ∈ Ioo (0:ℝ) 1 \ T, HasDerivAt g (h x) x) (hh : IntervalIntegrable h volume 0 1)
    (hM : ∀ x ∈ Icc (0:ℝ) 1, |Efun s N x| ≤ M)
    (hvalid : c₀ + ∑ j ∈ Finset.Icc 1 N, s j * r ((j:ℝ)/N) ≤ p₁) :
    c₀ + ∫ x in (0:ℝ)..1, r x * x
      ≤ p₁ + (|r 1| * |Dfun s N 1| + |g 1| * |Efun s N 1| + M * ∫ x in (0:ℝ)..1, |h x|) := by
  have hst := ceiling_stability hN hT hr hg hgh hh hM
  have : ∫ x in (0:ℝ)..1, r x * x ≤ ∑ j ∈ Finset.Icc 1 N, s j * r ((j:ℝ)/N)
      + (|r 1| * |Dfun s N 1| + |g 1| * |Efun s N 1| + M * ∫ x in (0:ℝ)..1, |h x|) := by
    have := neg_abs_le (∑ j ∈ Finset.Icc 1 N, s j * r ((j:ℝ)/N) - ∫ x in (0:ℝ)..1, r x * x)
    linarith
  linarith

/-- **CEILING (parametrised corollary).** With numeric bounds |D(1)| ≤ d₁, |E(1)| ≤ e₁, sup|E| ≤ M for the configuration
and |r(1)| ≤ a, |r′(1)| ≤ b, ∫₀¹|r″| ≤ c for the certificate:  v ≤ p₁ + d₁·a + e₁·b + M·c. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ceiling/Variantfee98c36afd0efeb279e784b4a0060eb558a5543bafb7f4fcd9b7ec9af58c3f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ceiling/Variantfee98c36afd0efeb279e784b4a0060eb558a5543bafb7f4fcd9b7ec9af58c3f9.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e9807583ebb83de51133d43b45db7d668f254af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
