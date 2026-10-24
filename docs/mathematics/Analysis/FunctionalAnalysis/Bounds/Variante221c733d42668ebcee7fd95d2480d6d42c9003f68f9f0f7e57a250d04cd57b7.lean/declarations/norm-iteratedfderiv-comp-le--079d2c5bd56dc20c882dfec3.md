# norm_iteratedFDeriv_comp_le'

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
      "line": 499,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21671e3f-2ae0-3a57-a4c9-2eb012a4c07c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69551f29-1a7d-6690-73a9-755dae541027",
  "kind": "theorem",
  "lexical_name": "norm_iteratedFDeriv_comp_le'",
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
  "slug": "norm-iteratedfderiv-comp-le--079d2c5bd56dc20c882dfec3",
  "source": {
    "blob": "4a6bd8e6fced117ea3d6e3dba00b6699dd52cb2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 499,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variante221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:079d2c5bd56dc20c882dfec3b0a2f5a1c6860940e4945bb2adc967056e6db641",
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

Occurrence: `result:69551f29-1a7d-6690-73a9-755dae541027`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_iteratedFDeriv_comp_le' {g : F → G} {f : E → F} {n : ℕ} {N : ℕ∞ω}
    {t : Set F} (ht : Set.range f ⊆ t) (ht' : UniqueDiffOn 𝕜 t)
    (hg : ContDiffOn 𝕜 N g t) (hf : ContDiff 𝕜 N f) (hn : n ≤ N) (x : E) {C : ℝ} {D : ℝ}
    (hC : ∀ i, i ≤ n → ‖iteratedFDerivWithin 𝕜 i g t (f x)‖ ≤ C)
    (hD : ∀ i, 1 ≤ i → i ≤ n → ‖iteratedFDeriv 𝕜 i f x‖ ≤ D ^ i) :
    ‖iteratedFDeriv 𝕜 n (g ∘ f) x‖ ≤ n ! * C * D ^ n := by
  simp_rw [← iteratedFDerivWithin_univ] at hD ⊢
  exact norm_iteratedFDerivWithin_comp_le hg hf.contDiffOn hn ht' uniqueDiffOn_univ
    (by simp [mapsTo_iff_subset_preimage, ht]) (mem_univ x) hC hD

/-- If the derivatives of `g` at `f x` are bounded by `C`, and the `i`-th derivative
of `f` at `x` is bounded by `D^i` for all `1 ≤ i ≤ n`, then the `n`-th derivative
of `g ∘ f` is bounded by `n! * C * D^n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bounds/Variante221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variante221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a6bd8e6fced117ea3d6e3dba00b6699dd52cb2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
