# ceiling_signed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ccc342ba3ca646fa37062c25a163634ff1a56ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9cb2a87-4b27-243f-b1c8-0c9ac3beeeb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:182b9cfb-c29d-87bb-c3f9-36701b09b826",
  "kind": "theorem",
  "lexical_name": "ceiling_signed",
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
  "slug": "ceiling-signed--c19b49aad4a09791ef7f5364",
  "source": {
    "blob": "0ccc342ba3ca646fa37062c25a163634ff1a56ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c19b49aad4a09791ef7f5364002d33e4d05d2c937c4ae9a7f2d23cc9f04b481e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:182b9cfb-c29d-87bb-c3f9-36701b09b826`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ceiling_signed (hN : 0 < N) {r g h : ℝ → ℝ} {T : Set ℝ} (hT : T.Countable) {M p₁ c₀ : ℝ}
    (hr : ∀ x ∈ Icc (0:ℝ) 1, HasDerivAt r (g x) x) (hg : ContinuousOn g (Icc (0:ℝ) 1))
    (hgh : ∀ x ∈ Ioo (0:ℝ) 1 \ T, HasDerivAt g (h x) x) (hh : IntervalIntegrable h volume 0 1)
    (hM : ∀ x ∈ Icc (0:ℝ) 1, |Efun s N x| ≤ M)
    (hr1 : 0 ≤ r 1) (hD1 : 0 ≤ Dfun s N 1)
    (hvalid : c₀ + ∑ j ∈ Finset.Icc 1 N, s j * r ((j:ℝ)/N) ≤ p₁) :
    c₀ + ∫ x in (0:ℝ)..1, r x * x ≤ p₁ + |g 1| * |Efun s N 1| + M * ∫ x in (0:ℝ)..1, |h x| := by
  have hid := abel_ibp_second (s := s) hN hT hr hg hgh hh
  have hE := continuousOn_Efun (s := s) hN
  have hhE : IntervalIntegrable (fun x => h x * Efun s N x) volume 0 1 :=
    hh.mul_continuousOn (by rwa [Set.uIcc_of_le zero_le_one])
  have h3 : |∫ x in (0:ℝ)..1, h x * Efun s N x| ≤ M * ∫ x in (0:ℝ)..1, |h x| := by
    calc |∫ x in (0:ℝ)..1, h x * Efun s N x|
        ≤ ∫ x in (0:ℝ)..1, |h x| * M := by
          refine intervalIntegral.abs_integral_le_integral_abs (by norm_num) |>.trans ?_
          refine intervalIntegral.integral_mono_on (by norm_num) hhE.abs (hh.abs.mul_const _) ?_
          intro x hx
          rw [abs_mul]
          exact mul_le_mul_of_nonneg_left (hM x hx) (abs_nonneg _)
      _ = M * ∫ x in (0:ℝ)..1, |h x| := by rw [intervalIntegral.integral_mul_const]; ring
  have hedge : 0 ≤ r 1 * Dfun s N 1 := mul_nonneg hr1 hD1
  have hgE : g 1 * Efun s N 1 ≤ |g 1| * |Efun s N 1| := by
    rw [← abs_mul]; exact le_abs_self _
  have hint : -(∫ x in (0:ℝ)..1, h x * Efun s N x) ≤ M * ∫ x in (0:ℝ)..1, |h x| := (neg_le_abs _).trans h3
  linarith

/-- **signed ceiling for a near-CUE law.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ccc342ba3ca646fa37062c25a163634ff1a56ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
