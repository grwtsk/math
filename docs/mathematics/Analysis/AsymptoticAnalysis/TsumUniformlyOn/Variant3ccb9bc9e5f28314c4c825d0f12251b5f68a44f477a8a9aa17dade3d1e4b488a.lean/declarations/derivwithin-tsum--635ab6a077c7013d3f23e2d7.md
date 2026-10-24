# derivWithin_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd0f6a05-c6cb-25c3-b6ba-512dd0d36cc4",
  "kind": "theorem",
  "lexical_name": "derivWithin_tsum",
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
  "slug": "derivwithin-tsum--635ab6a077c7013d3f23e2d7",
  "source": {
    "blob": "e7610f31114816ea0b74f305925e52c8e2fc0a5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 80,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variant3ccb9bc9e5f28314c4c825d0f12251b5f68a44f477a8a9aa17dade3d1e4b488a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:635ab6a077c7013d3f23e2d72d1b05ebdc377fb0566492cf339365b15e64b1d0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variant3ccb9bc9e5f28314c4c825d0f12251b5f68a44f477a8a9aa17dade3d1e4b488a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd0f6a05-c6cb-25c3-b6ba-512dd0d36cc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivWithin_tsum {f : ι → 𝕜 → F} (hs : IsOpen s) {x : 𝕜} (hx : x ∈ s)
    (hf : ∀ y ∈ s, Summable fun n ↦ f n y)
    (h : SummableLocallyUniformlyOn (fun n ↦ (derivWithin (fun z ↦ f n z) s)) s)
    (hf2 : ∀ n r, r ∈ s → DifferentiableAt 𝕜 (f n) r) :
    derivWithin (fun z ↦ ∑' n, f n z) s x = ∑' n, derivWithin (f n) s x := by
  apply HasDerivWithinAt.derivWithin ?_ (hs.uniqueDiffWithinAt hx)
  apply HasDerivAt.hasDerivWithinAt
  apply hasDerivAt_of_tendstoLocallyUniformlyOn hs _ _ (fun y hy ↦ (hf y hy).hasSum) hx
    (f' := fun n : Finset ι ↦ fun a ↦ ∑ i ∈ n, derivWithin (fun z ↦ f i z) s a)
  · obtain ⟨g, hg⟩ := h
    apply (hasSumLocallyUniformlyOn_iff_tendstoLocallyUniformlyOn.mp hg).congr_right
    exact fun _ hb ↦ (hg.tsum_eqOn hb).symm
  · filter_upwards with t r hr using HasDerivAt.fun_sum
      (fun q hq ↦ ((hf2 q r hr).differentiableWithinAt.hasDerivWithinAt.hasDerivAt)
      (hs.mem_nhds hr))

/-- If a sequence of functions `fₙ` is such that `∑ fₙ (z)` is summable for each `z` in an
open set `s`, and for each `1 ≤ k ≤ m`, the series of `k`-th iterated derivatives
`∑ (iteratedDerivWithin k fₙ s) (z)`
is summable locally uniformly on `s`, and each `fₙ` is `m`-times differentiable, then the `m`-th
iterated derivative of the sum is the sum of the `m`-th iterated derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variant3ccb9bc9e5f28314c4c825d0f12251b5f68a44f477a8a9aa17dade3d1e4b488a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variant3ccb9bc9e5f28314c4c825d0f12251b5f68a44f477a8a9aa17dade3d1e4b488a.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7610f31114816ea0b74f305925e52c8e2fc0a5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
