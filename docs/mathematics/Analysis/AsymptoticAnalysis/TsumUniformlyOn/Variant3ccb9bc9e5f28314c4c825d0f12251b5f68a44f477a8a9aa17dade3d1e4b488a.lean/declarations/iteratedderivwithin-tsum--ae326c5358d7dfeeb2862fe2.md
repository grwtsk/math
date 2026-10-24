# iteratedDerivWithin_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ddd4f6c-085a-ab98-4f6f-6f70ca197c93",
  "kind": "theorem",
  "lexical_name": "iteratedDerivWithin_tsum",
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
  "slug": "iteratedderivwithin-tsum--ae326c5358d7dfeeb2862fe2",
  "source": {
    "blob": "e7610f31114816ea0b74f305925e52c8e2fc0a5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 101,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variant3ccb9bc9e5f28314c4c825d0f12251b5f68a44f477a8a9aa17dade3d1e4b488a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae326c5358d7dfeeb2862fe21c060c921887040f81e2582beb48c87490675992",
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

Occurrence: `result:5ddd4f6c-085a-ab98-4f6f-6f70ca197c93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDerivWithin_tsum {f : ι → 𝕜 → F} (m : ℕ) (hs : IsOpen s)
    {x : 𝕜} (hx : x ∈ s) (hsum : ∀ t ∈ s, Summable (fun n : ι ↦ f n t))
    (h : ∀ k, 1 ≤ k → k ≤ m → SummableLocallyUniformlyOn
      (fun n ↦ (iteratedDerivWithin k (fun z ↦ f n z) s)) s)
    (hf2 : ∀ n k r, k ≤ m → r ∈ s →
      DifferentiableAt 𝕜 (iteratedDerivWithin k (fun z ↦ f n z) s) r) :
    iteratedDerivWithin m (fun z ↦ ∑' n, f n z) s x = ∑' n, iteratedDerivWithin m (f n) s x := by
  induction m generalizing x with
  | zero => simp
  | succ m hm =>
    simp_rw [iteratedDerivWithin_succ]
    rw [← derivWithin_tsum hs hx _ _ (fun n r hr ↦ hf2 n m r (by lia) hr)]
    · exact derivWithin_congr (fun t ht ↦ hm ht (fun k hk1 hkm ↦ h k hk1 (by lia))
          (fun k r e hr he ↦ hf2 k r e (by lia) he)) (hm hx (fun k hk1 hkm ↦ h k hk1 (by lia))
          (fun k r e hr he ↦ hf2 k r e (by lia) he))
    · intro r hr
      by_cases hm2 : m = 0
      · simp [hm2, hsum r hr]
      · exact ((h m (by lia) (by lia)).summable hr).congr (fun _ ↦ by simp)
    · exact SummableLocallyUniformlyOn_congr
        (fun _ _ ht ↦ by rw [iteratedDerivWithin_succ]) (h (m + 1) (by lia) (by lia))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variant3ccb9bc9e5f28314c4c825d0f12251b5f68a44f477a8a9aa17dade3d1e4b488a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variant3ccb9bc9e5f28314c4c825d0f12251b5f68a44f477a8a9aa17dade3d1e4b488a.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7610f31114816ea0b74f305925e52c8e2fc0a5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
