# ceiling_law256_signed

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
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19fa5be7-a119-3715-ea11-8f8408b00fd3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f68f5a90-ac67-1745-db64-9e595bf7b5db",
  "kind": "theorem",
  "lexical_name": "ceiling_law256_signed",
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
  "slug": "ceiling-law256-signed--93a2d29ee1e5936bac2f4a6b",
  "source": {
    "blob": "0ccc342ba3ca646fa37062c25a163634ff1a56ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93a2d29ee1e5936bac2f4a6b69b09f5d8bfe0c5529a33c4c9b19364d7b7fb820",
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

Occurrence: `result:f68f5a90-ac67-1745-db64-9e595bf7b5db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ceiling_law256_signed (S : ℕ → ℝ) (hS : EnclOK LawN256.K S 0 LawN256.encl)
    {r g h : ℝ → ℝ} {T : Set ℝ} (hT : T.Countable) {c₀ p : ℝ}
    (hr : ∀ x ∈ Icc (0:ℝ) 1, HasDerivAt r (g x) x) (hg : ContinuousOn g (Icc (0:ℝ) 1))
    (hgh : ∀ x ∈ Ioo (0:ℝ) 1 \ T, HasDerivAt g (h x) x) (hh : IntervalIntegrable h volume 0 1)
    (hr1 : 0 ≤ r 1)
    (hvalid : c₀ + ∑ j ∈ Finset.Icc 1 256, massOf S 256 j * r ((j:ℝ)/256) ≤ p) :
    c₀ + ∫ x in (0:ℝ)..1, r x * x ≤ p + 2.5431316e-6 * |g 1| + 2.5431316e-6 * ∫ x in (0:ℝ)..1, |h x| := by
  obtain ⟨hrows, _⟩ := lawN256_rows S hS
  have hD1 : 0 ≤ Dfun (massOf S 256) 256 1 := by
    have h := D1_nonneg_of_edgeNonneg LawN256 LawN256_edge S hS
    have eN : LawN256.N = 256 := rfl
    simp only [eN] at h
    exact h
  have h0 := ceiling_nearCUE_signed (N := 256) (by norm_num) S (by positivity) hrows hD1 hT hr hg hgh hh hr1 hvalid
  have hc : (1 / (6 * (256 : ℝ) ^ 2) + ((3 : ℝ) / 10 ^ 40) / (2 * 256)) ≤ 2.5431316e-6 := by norm_num
  have hb : 0 ≤ |g 1| := abs_nonneg _
  have hI : 0 ≤ ∫ x in (0:ℝ)..1, |h x| := intervalIntegral.integral_nonneg zero_le_one fun x _ => abs_nonneg _
  push_cast at h0
  nlinarith [mul_le_mul_of_nonneg_right hc hb, mul_le_mul_of_nonneg_right hc hI]

end PairCeiling
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ccc342ba3ca646fa37062c25a163634ff1a56ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
