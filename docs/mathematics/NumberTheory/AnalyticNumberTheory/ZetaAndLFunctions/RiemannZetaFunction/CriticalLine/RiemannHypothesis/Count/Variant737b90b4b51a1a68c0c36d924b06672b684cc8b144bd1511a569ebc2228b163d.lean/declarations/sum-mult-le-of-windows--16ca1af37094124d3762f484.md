# sum_mult_le_of_windows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b9921557758c132db22727b91adfc063f9ca5a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 395,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fae8225f-dd74-a727-203c-60a140ecb808",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cf05be9-72e5-dda0-5aee-de9bedddabfd",
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
  "slug": "sum-mult-le-of-windows--16ca1af37094124d3762f484",
  "source": {
    "blob": "3b9921557758c132db22727b91adfc063f9ca5a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 395,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16ca1af37094124d3762f484da543d92855214fc99645140ba97ba1b2b8d12f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cf05be9-72e5-dda0-5aee-de9bedddabfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–409.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b9921557758c132db22727b91adfc063f9ca5a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
