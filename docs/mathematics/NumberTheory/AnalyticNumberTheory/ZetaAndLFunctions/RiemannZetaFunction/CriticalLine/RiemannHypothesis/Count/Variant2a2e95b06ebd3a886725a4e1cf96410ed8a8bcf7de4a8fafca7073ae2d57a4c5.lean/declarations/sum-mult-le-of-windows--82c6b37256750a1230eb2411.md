# sum_mult_le_of_windows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f942a8c2-4af5-e37f-cda8-cf1b2bfbcdcc",
  "kind": "lemma",
  "lexical_name": "sum_mult_le_of_windows",
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
  "slug": "sum-mult-le-of-windows--82c6b37256750a1230eb2411",
  "source": {
    "blob": "19e729bcf45f4bbc9b3242b0b26b8ffc54858cf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 403,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82c6b37256750a1230eb241123dac6e8eff2fc389ecdf33b69e82d3ee6d2f47c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f942a8c2-4af5-e37f-cda8-cf1b2bfbcdcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_mult_le_of_windows {ι : Type*} (s : Finset ι) (m : ι → ℕ) (key : ι → ℕ) (K : ℕ)
    {C : ℝ} (hkey : ∀ ρ ∈ s, key ρ < K)
    (hcount : ∀ j < K, ∑ ρ ∈ s with key ρ = j, (m ρ : ℝ) ≤ C) :
    ∑ ρ ∈ s, (m ρ : ℝ) ≤ K * C := by
  rw [← sum_fiberwise_of_maps_to (g := key) (t := range K)
    (fun ρ hρ => mem_range.mpr (hkey ρ hρ))]
  calc ∑ j ∈ range K, ∑ ρ ∈ s with key ρ = j, (m ρ : ℝ)
      ≤ ∑ j ∈ range K, C := sum_le_sum fun j hj => hcount j (mem_range.mp hj)
    _ = K * C := by rw [sum_const, card_range, nsmul_eq_mul]

/-- **Boundary count** N(I' ∖ I) = N(T−D₀, T] + N(2T, 2T+D₀] ≪ D₀·l (used in
[prop:zeroside], [prop:zeroside-rank]: "N(I'∖I) ≪ D₀ l by N(t+1)−N(t) ≤ A₀ log(t+3)").
Explicit form: for T ≥ T₀ and every finite set s of zeros with
γ_ρ ∈ (T−√T, T] ∪ (2T, 2T+√T], ∑_{ρ∈s} m_ρ ≤ 3 · A₀ · √T · log(4T)
(and log(4T) ≤ 2 log(T/2π) = 2l for T ≥ T₀, see log_four_mul_le_two_mul_l). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19e729bcf45f4bbc9b3242b0b26b8ffc54858cf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
