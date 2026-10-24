# nonAliasingFejerPrefixWeight_eq_prefixResidueSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6058491-635f-b676-f0bd-d36cc94bfd81",
  "kind": "theorem",
  "lexical_name": "nonAliasingFejerPrefixWeight_eq_prefixResidueSum",
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
  "slug": "nonaliasingfejerprefixweight-eq-prefixresiduesum--b1349e1be5680b1f41269d7c",
  "source": {
    "blob": "af16f71c7d3d88c6e5574f50b4a78fef37b46a81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 11,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerReindex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1349e1be5680b1f41269d7c6d3f51d8949668fd5ab9904b1b5ec7b3dd01de30",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerReindex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6058491-635f-b676-f0bd-d36cc94bfd81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonAliasingFejerPrefixWeight_eq_prefixResidueSum
    {X N m p : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm1 : m ≤ 4 * X) :
    nonAliasingFejerPrefixWeight X N m p =
      ∑ z ∈ nonAliasingFejerPrefixResidues X m p,
        cyclicFejerKernel X N z := by
  classical
  rcases hreg with ⟨hX, hN, hNL⟩
  unfold nonAliasingFejerPrefixWeight
    nonAliasingFejerPrefixResidues
  rw [Finset.sum_image]
  · apply Finset.sum_congr rfl
    intro q hq
    let L : ℕ := fejerOctavePeriod X
    let z : ZMod L :=
      (p : ZMod L) - (q : ZMod L)
    have hL : 0 < L := by
      dsimp [L, fejerOctavePeriod]
      omega
    have hzcast :
        ((z.val : ℤ) : ZMod L) =
          (((p : ℤ) - (q : ℤ)) : ZMod L) := by
      change ((z.val : ℕ) : ZMod L) =
        ((p : ZMod L) - (q : ZMod L))
      rw [ZMod.natCast_zmod_val]
      rfl
    unfold cyclicFejerKernel
    dsimp [z, L] at hzcast ⊢
    exact
      (signedSampledTriangularKernelAtPeriod_eq_of_modEq
        hL N hzcast).symm
  · intro a ha b hb hab
    exact nonAliasingFejerPrefixResidueMap_injective
      hX hm1 ha hb hab

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerReindex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerReindex.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af16f71c7d3d88c6e5574f50b4a78fef37b46a81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
