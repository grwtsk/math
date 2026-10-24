# logDerivResidue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9b3882075cca567abe6de4cc789563c01afddbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 475,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6b73f7f-5606-2059-7261-7ba93c46bffc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6d62fce-d973-e09e-bd45-e187c6244a80",
  "kind": "theorem",
  "lexical_name": "logDerivResidue",
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
  "slug": "logderivresidue--a5bdfbade56b95d4cc99167f",
  "source": {
    "blob": "c9b3882075cca567abe6de4cc789563c01afddbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 475,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variantfbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5bdfbade56b95d4cc99167f53215527e80323080b8e2eabff3c7cf68a1610d0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variantfbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6d62fce-d973-e09e-bd45-e187c6244a80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDerivResidue {f : ℂ → ℂ} {p : ℂ} {U : Set ℂ}
    (non_zero : ∀ x ∈ U \ {p}, f x ≠ 0)
    (holc : HolomorphicOn f (U \ {p}))
    (U_in_nhds : U ∈ 𝓝 p) {A : ℂ} (A_ne_zero : A ≠ 0)
    (f_near_p : BddAbove (norm ∘ (f - fun s ↦ A * (s - p)⁻¹) '' (U \ {p}))) :
    (deriv f * f⁻¹ + (fun s ↦ (s - p)⁻¹)) =O[𝓝[≠] p] (1 : ℂ → ℂ) :=
    by
      let ⟨U', ⟨a,b,c⟩⟩ := mem_nhds_iff.mp U_in_nhds
      have W : (U' \ {p}) ⊆ U' := by
        exact diff_subset

      have T : (U' \ {p}) ⊆ (U \ {p}) := by
        exact diff_subset_diff a (subset_refl _)


      refine logDerivResidue' b ?_ ?_ (IsOpen.mem_nhds b c) A_ne_zero ?_
      · intro x hyp_x
        exact non_zero x <| T hyp_x
      · exact DifferentiableOn.mono holc T
      · exact (f_near_p.mono (image_mono (diff_subset_diff a (subset_refl _))))



@[blueprint
  (title := "BddAbove-to-IsBigO")
  (statement := /--
  If $f$ is bounded above in a punctured neighborhood of $p$, then $f$ is $O(1)$ in that
  neighborhood.
  -/)
  (proof := /-- Elementary. -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variantfbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variantfbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9b3882075cca567abe6de4cc789563c01afddbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
