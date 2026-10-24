# weighted_actual_le_model_add_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8e318b0-cf64-ef99-d102-a07993c7b9e7",
  "kind": "theorem",
  "lexical_name": "weighted_actual_le_model_add_budget",
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
  "slug": "weighted-actual-le-model-add-budget--cbefc7e80cecf1c3c2c79feb",
  "source": {
    "blob": "450e06f9171581c8710cfb6a196b09b7e373d5c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbefc7e80cecf1c3c2c79feb388e9c7b7dece6a4d1d51c8852b66a10469b0ae2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8e318b0-cf64-ef99-d102-a07993c7b9e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_actual_le_model_add_budget (a b w : ℕ → ℝ) (N : ℕ) :
    (∑ i ∈ Finset.range N, a i * w i) ≤
      (∑ i ∈ Finset.range N, b i * w i) +
        |cumulativeSum (fun i => a i - b i) N| * |w N| +
          ∑ i ∈ Finset.range N,
            |cumulativeSum (fun j => a j - b j) (i + 1)| * |w i - w (i + 1)| := by
  have h := abs_weighted_sum_le_prefix_variation (fun i => a i - b i) w N
  have hs : (∑ i ∈ Finset.range N, (a i - b i) * w i) =
      (∑ i ∈ Finset.range N, a i * w i) -
        (∑ i ∈ Finset.range N, b i * w i) := by
    simp only [sub_mul, Finset.sum_sub_distrib]
  rw [hs] at h
  linarith [le_abs_self ((∑ i ∈ Finset.range N, a i * w i) -
    (∑ i ∈ Finset.range N, b i * w i))]

/-- A real terminal cutoff can be used without replacing it by its floor.
The zero zeroth coefficient is explicit; the coefficient at one is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A0657330b75f8cf7f9b0e621474e2be31041d980a3e3b4a3e4b905a026ed04c5SignedPrefixTran/Variant3851f6ac6abbdc1b8cec18bb36dc5619fefaa87c5d88d3a607d34bf801fabe68.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450e06f9171581c8710cfb6a196b09b7e373d5c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
