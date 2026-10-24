# norm_iteratedFDeriv_prod_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a6bd8e6fced117ea3d6e3dba00b6699dd52cb2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e5918d3-1120-7f99-f00b-e65a1bdfce0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:faaff17b-19a7-a09b-98ef-865fe4494b0b",
  "kind": "theorem",
  "lexical_name": "norm_iteratedFDeriv_prod_le",
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
  "slug": "norm-iteratedfderiv-prod-le--ccda87bdaa41df03feb66407",
  "source": {
    "blob": "4a6bd8e6fced117ea3d6e3dba00b6699dd52cb2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 329,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variante221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccda87bdaa41df03feb664076e6ddcada19378d03e31a64547ab3e3656a0dfbb",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bounds/Variante221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faaff17b-19a7-a09b-98ef-865fe4494b0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_iteratedFDeriv_prod_le [DecidableEq ι] [NormOneClass A'] {u : Finset ι}
    {f : ι → E → A'} {N : ℕ∞ω} (hf : ∀ i ∈ u, ContDiff 𝕜 N (f i)) {x : E} {n : ℕ}
    (hn : n ≤ N) :
    ‖iteratedFDeriv 𝕜 n (∏ j ∈ u, f j ·) x‖ ≤
      ∑ p ∈ u.sym n, (p : Multiset ι).countPerms *
        ∏ j ∈ u, ‖iteratedFDeriv 𝕜 ((p : Multiset ι).count j) (f j) x‖ := by
  simpa [iteratedFDerivWithin_univ] using
    norm_iteratedFDerivWithin_prod_le (fun i hi ↦ (hf i hi).contDiffOn) uniqueDiffOn_univ
      (mem_univ x) hn

end

/-- If the derivatives within a set of `g` at `f x` are bounded by `C`, and the `i`-th derivative
within a set of `f` at `x` is bounded by `D^i` for all `1 ≤ i ≤ n`, then the `n`-th derivative
of `g ∘ f` is bounded by `n! * C * D^n`.
This lemma proves this estimate assuming additionally that two of the spaces live in the same
universe, to make an induction possible. Use instead `norm_iteratedFDerivWithin_comp_le` that
removes this assumption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bounds/Variante221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variante221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a6bd8e6fced117ea3d6e3dba00b6699dd52cb2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
