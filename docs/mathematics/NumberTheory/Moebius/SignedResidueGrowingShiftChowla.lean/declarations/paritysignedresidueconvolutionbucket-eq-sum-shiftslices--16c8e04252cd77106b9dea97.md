# paritySignedResidueConvolutionBucket_eq_sum_shiftSlices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5d01373-db04-711e-6a48-654db27c27ce",
  "kind": "theorem",
  "lexical_name": "paritySignedResidueConvolutionBucket_eq_sum_shiftSlices",
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
  "slug": "paritysignedresidueconvolutionbucket-eq-sum-shiftslices--16c8e04252cd77106b9dea97",
  "source": {
    "blob": "09313398bceac03b13fc67b9def98561da23ea41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 254,
    "path": "GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16c8e04252cd77106b9dea977f066faac6f9081d87aa74621e2716e66253ea39",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5d01373-db04-711e-6a48-654db27c27ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paritySignedResidueConvolutionBucket_eq_sum_shiftSlices
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (s : ZMod (d * d)) :
    paritySignedResidueConvolutionBucket b d r s =
      ∑ h ∈ parityGrowingShiftRange b,
        paritySignedShiftResiduePairSlice b d r h s := by
  classical
  unfold paritySignedResidueConvolutionBucket
    paritySignedShiftResiduePairSlice
  calc
    2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        (if parityResidueCoordinate d uv.1 +
              parityResidueCoordinate d uv.2 = s then
          (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
        else 0) =
      2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        ∑ h ∈ parityGrowingShiftRange b,
          (if parityPairShift uv = h ∧
                parityResidueCoordinate d uv.1 +
                  parityResidueCoordinate d uv.2 = s then
            (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
          else 0) := by
            apply congrArg (fun z : ℂ => 2 * z)
            apply Finset.sum_congr rfl
            intro uv huv
            have hmem := parityPairShift_mem_range hr huv
            by_cases hs :
                parityResidueCoordinate d uv.1 +
                    parityResidueCoordinate d uv.2 = s
            · simp [hs, hmem]
            · simp [hs]
    _ = ∑ h ∈ parityGrowingShiftRange b,
        2 * ∑ uv ∈ endpointParityStrictPairSet b r,
          (if parityPairShift uv = h ∧
                parityResidueCoordinate d uv.1 +
                  parityResidueCoordinate d uv.2 = s then
            (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
          else 0) := by
            simp_rw [Finset.mul_sum]
            rw [Finset.sum_comm]
    _ = ∑ h ∈ parityGrowingShiftRange b,
        paritySignedShiftResiduePairSlice b d r h s := by
          apply Finset.sum_congr rfl
          intro h hhmem
          unfold parityShiftPairSet
          rw [Finset.sum_filter]
          congr 2
          funext uv
          by_cases hshift : parityPairShift uv = h
          · simp [hshift]
          · simp [hshift]

/-- The same decomposition in the explicit base/shift Chowla coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09313398bceac03b13fc67b9def98561da23ea41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
