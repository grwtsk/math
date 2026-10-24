# supported_long_tail_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3052316bfa53b0eb785c6f06bf0a356d6af6cdff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/4188ee9ff4c9a8a8fbb45e785c5e260dab5ce0beb3abd5c1d36e339efb1ac8bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4e2c6cd-9e46-a4b6-cb92-e78b9a3b3e0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:508e678e-e0bc-2742-c45e-f755282ca77e",
  "kind": "theorem",
  "lexical_name": "supported_long_tail_difference",
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
  "slug": "supported-long-tail-difference--43c877f469d394185399ab2b",
  "source": {
    "blob": "3052316bfa53b0eb785c6f06bf0a356d6af6cdff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 205,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant4188ee9ff4c9a8a8fbb45e785c5e260dab5ce0beb3abd5c1d36e339efb1ac8bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43c877f469d394185399ab2bdedc2fc2eb96e1d1d10ac81e1e56228612cf9e96",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant4188ee9ff4c9a8a8fbb45e785c5e260dab5ce0beb3abd5c1d36e339efb1ac8bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:508e678e-e0bc-2742-c45e-f755282ca77e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem supported_long_tail_difference (U V N : ℕ) (hUV : U ≤ V)
    (f : ℕ → ℝ) (hf : ∀ n, N < n → f n = 0) :
    (∑ n ∈ Finset.Ioc U N, f n) - (∑ n ∈ Finset.Ioc V N, f n) =
      ∑ n ∈ Finset.Ioc U V, f n := by
  classical
  let M := max N V
  have extend (L : ℕ) :
      (∑ n ∈ Finset.Ioc L M, f n) = ∑ n ∈ Finset.Ioc L N, f n := by
    symm
    apply Finset.sum_subset
      (by
        intro n hn
        exact Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hn).1,
          (Finset.mem_Ioc.mp hn).2.trans (le_max_left N V)⟩)
    intro n hn hnot
    exact hf n (by
      have hl := (Finset.mem_Ioc.mp hn).1
      by_contra h
      apply hnot
      exact Finset.mem_Ioc.mpr ⟨hl, by omega⟩)
  have hs : Finset.Ioc U M = Finset.Ioc U V ∪ Finset.Ioc V M := by
    ext n
    have hVM : V ≤ M := le_max_right N V
    simp only [Finset.mem_Ioc, Finset.mem_union]
    omega
  have hj : Disjoint (Finset.Ioc U V) (Finset.Ioc V M) := by
    apply Finset.disjoint_left.mpr
    intro n hn hn'
    have hl := (Finset.mem_Ioc.mp hn).2
    have hu := (Finset.mem_Ioc.mp hn').1
    omega
  calc
    _ = (∑ n ∈ Finset.Ioc U M, f n) - (∑ n ∈ Finset.Ioc V M, f n) := by
      rw [extend U, extend V]
    _ = _ := by
      rw [hs, Finset.sum_union hj]
      ring

/-- Fixed-source refinement is a signed finite Mangoldt payment, including cutoffs beyond N. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant4188ee9ff4c9a8a8fbb45e785c5e260dab5ce0beb3abd5c1d36e339efb1ac8bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant4188ee9ff4c9a8a8fbb45e785c5e260dab5ce0beb3abd5c1d36e339efb1ac8bc.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3052316bfa53b0eb785c6f06bf0a356d6af6cdff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
