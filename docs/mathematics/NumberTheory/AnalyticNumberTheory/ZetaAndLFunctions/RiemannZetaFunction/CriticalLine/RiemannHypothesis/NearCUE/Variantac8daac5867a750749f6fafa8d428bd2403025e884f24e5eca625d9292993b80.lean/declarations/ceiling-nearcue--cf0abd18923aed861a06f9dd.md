# ceiling_nearCUE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b654e8cb36264ab066d261168879ca5f94e91fc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bff44cb-566b-ba6d-f38b-5efd34ec5bc3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6296610c-f051-98d1-0bf8-925397fa489b",
  "kind": "theorem",
  "lexical_name": "ceiling_nearCUE",
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
  "slug": "ceiling-nearcue--cf0abd18923aed861a06f9dd",
  "source": {
    "blob": "b654e8cb36264ab066d261168879ca5f94e91fc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 210,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf0abd18923aed861a06f9dd0c030bfb0efc49f70e15a6d801ff9a0ed4483a6d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6296610c-f051-98d1-0bf8-925397fa489b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ceiling_nearCUE (hN : 0 < N) (S : ℕ → ℝ) {τ d₁ : ℝ} (hτ : 0 ≤ τ) (hS : NearCUE S N τ)
    (hD1 : |Dfun (massOf S N) N 1| ≤ d₁)
    {r g h : ℝ → ℝ} {T : Set ℝ} (hT : T.Countable) {c₀ p : ℝ}
    (hr : ∀ x ∈ Icc (0:ℝ) 1, HasDerivAt r (g x) x) (hg : ContinuousOn g (Icc (0:ℝ) 1))
    (hgh : ∀ x ∈ Ioo (0:ℝ) 1 \ T, HasDerivAt g (h x) x) (hh : IntervalIntegrable h volume 0 1)
    (hvalid : c₀ + ∑ j ∈ Finset.Icc 1 N, massOf S N j * r ((j:ℝ)/N) ≤ p) :
    c₀ + ∫ x in (0:ℝ)..1, r x * x
      ≤ p + d₁ * |r 1| + (1 / (6 * (N : ℝ) ^ 2) + τ / (2 * N)) * |g 1|
          + (1 / (6 * (N : ℝ) ^ 2) + τ / (2 * N)) * ∫ x in (0:ℝ)..1, |h x| :=
  ceiling_numeric hN hT hr hg hgh hh (abs_Efun_le_of_nearCUE hN hτ hS) hD1
    (abs_Efun_one_le_of_nearCUE hN hτ hS) le_rfl le_rfl le_rfl hvalid

end PairCeiling
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b654e8cb36264ab066d261168879ca5f94e91fc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
