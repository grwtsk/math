# hasFTaylorSeriesUpToOn_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d94d3ac5-8e57-020b-1966-941ad5d6c361",
  "kind": "theorem",
  "lexical_name": "hasFTaylorSeriesUpToOn_pi",
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
  "slug": "hasftaylorseriesuptoon-pi--1862efcb3d6e175c0a2544ac",
  "source": {
    "blob": "8aa1a77e69b2e25c7208d7cb52107e017c7bc3b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1862efcb3d6e175c0a2544ac64cc63388f1390b47e9dc5854a48cb3bb7cce030",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d94d3ac5-8e57-020b-1966-941ad5d6c361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFTaylorSeriesUpToOn_pi {n : WithTop ℕ∞} :
    HasFTaylorSeriesUpToOn n (fun x i => φ i x)
        (fun x m => ContinuousMultilinearMap.pi fun i => p' i x m) s ↔
      ∀ i, HasFTaylorSeriesUpToOn n (φ i) (p' i) s := by
  set pr := @ContinuousLinearMap.proj 𝕜 _ ι F' _ _ _
  set L : ∀ m : ℕ, (∀ i, E[×m]→L[𝕜] F' i) ≃ₗᵢ[𝕜] E[×m]→L[𝕜] ∀ i, F' i := fun m =>
    ContinuousMultilinearMap.piₗᵢ _ _
  refine ⟨fun h i => ?_, fun h => ⟨fun x hx => ?_, ?_, ?_⟩⟩
  · exact h.continuousLinearMap_comp (pr i)
  · ext1 i
    exact (h i).zero_eq x hx
  · intro m hm x hx
    exact (L m).hasFDerivAt.comp_hasFDerivWithinAt x <|
      hasFDerivWithinAt_pi.2 fun i => (h i).fderivWithin m hm x hx
  · intro m hm
    exact (L m).continuous.comp_continuousOn <| continuousOn_pi.2 fun i => (h i).cont m hm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aa1a77e69b2e25c7208d7cb52107e017c7bc3b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
