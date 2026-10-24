# norm_iteratedFDeriv_comp_le

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
      "line": 512,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d57f43c-4d24-6743-a3d6-278d8468e97f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d85611f-f6dd-7f1e-d09e-21d0f4266fc3",
  "kind": "theorem",
  "lexical_name": "norm_iteratedFDeriv_comp_le",
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
  "slug": "norm-iteratedfderiv-comp-le--a4d64f11121485952d908a43",
  "source": {
    "blob": "4a6bd8e6fced117ea3d6e3dba00b6699dd52cb2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 512,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variante221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4d64f11121485952d908a43c26b0380adeb57cdb7fedae5afeafb3af683c1b5",
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

Occurrence: `result:2d85611f-f6dd-7f1e-d09e-21d0f4266fc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_iteratedFDeriv_comp_le {g : F → G} {f : E → F} {n : ℕ} {N : ℕ∞ω}
    (hg : ContDiff 𝕜 N g) (hf : ContDiff 𝕜 N f) (hn : n ≤ N) (x : E) {C : ℝ} {D : ℝ}
    (hC : ∀ i, i ≤ n → ‖iteratedFDeriv 𝕜 i g (f x)‖ ≤ C)
    (hD : ∀ i, 1 ≤ i → i ≤ n → ‖iteratedFDeriv 𝕜 i f x‖ ≤ D ^ i) :
    ‖iteratedFDeriv 𝕜 n (g ∘ f) x‖ ≤ n ! * C * D ^ n := by
  simp_rw [← iteratedFDerivWithin_univ] at hC
  exact norm_iteratedFDeriv_comp_le' (subset_univ _) uniqueDiffOn_univ hg.contDiffOn hf hn x hC hD

section Apply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bounds/Variante221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variante221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a6bd8e6fced117ea3d6e3dba00b6699dd52cb2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
