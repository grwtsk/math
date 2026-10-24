# contDiffOn_convolution_left_with_param_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23fdb327-5c8c-df39-0930-9aaad973b9e4",
  "kind": "theorem",
  "lexical_name": "contDiffOn_convolution_left_with_param_comp",
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
  "slug": "contdiffon-convolution-left-with-param-comp--26ab1b1814c0fa847b92db32",
  "source": {
    "blob": "cbfe9c51f48fe1e6f501e0174521e9939c4295b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1325,
    "line": 1317,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26ab1b1814c0fa847b92db32a0aae26f071fb399c1cf32761df9ae61ac37e416",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23fdb327-5c8c-df39-0930-9aaad973b9e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1317–1325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffOn_convolution_left_with_param_comp [μ.IsAddLeftInvariant] [μ.IsNegInvariant]
    (L : E' →L[𝕜] E →L[𝕜] F) {s : Set P} {n : ℕ∞} {v : P → G} (hv : ContDiffOn 𝕜 n v s) {f : G → E}
    {g : P → G → E'} {k : Set G} (hs : IsOpen s) (hk : IsCompact k)
    (hgs : ∀ p, ∀ x, p ∈ s → x ∉ k → g p x = 0) (hf : LocallyIntegrable f μ)
    (hg : ContDiffOn 𝕜 n (↿g) (s ×ˢ univ)) : ContDiffOn 𝕜 n (fun x => (g x ⋆[L, μ] f) (v x)) s := by
  apply (contDiffOn_convolution_left_with_param L hs hk hgs hf hg).comp (contDiffOn_id.prodMk hv)
  intro x hx
  simp only [hx, mem_preimage, prodMk_mem_set_prod_eq, mem_univ, and_self_iff, _root_.id]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean#L1317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbfe9c51f48fe1e6f501e0174521e9939c4295b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
