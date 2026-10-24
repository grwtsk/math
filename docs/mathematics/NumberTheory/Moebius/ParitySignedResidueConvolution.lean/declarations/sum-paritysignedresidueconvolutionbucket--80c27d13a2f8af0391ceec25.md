# sum_paritySignedResidueConvolutionBucket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:365a6ba5-3bfd-7182-8717-37fd322d017b",
  "kind": "theorem",
  "lexical_name": "sum_paritySignedResidueConvolutionBucket",
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
  "slug": "sum-paritysignedresidueconvolutionbucket--80c27d13a2f8af0391ceec25",
  "source": {
    "blob": "8f56b38828b56c175bda30b140ad74d6a9f4e29a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 63,
    "path": "GRWTSK/NumberTheory/Moebius/ParitySignedResidueConvolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80c27d13a2f8af0391ceec25ea53663e2ba39f841e5a84f49fdd0a51a3ce56c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:365a6ba5-3bfd-7182-8717-37fd322d017b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_paritySignedResidueConvolutionBucket
    (b d r : ℕ) [NeZero d] :
    (∑ s : ZMod (d * d),
      paritySignedResidueConvolutionBucket b d r s) =
      2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ) := by
  classical
  unfold paritySignedResidueConvolutionBucket
  calc
    (∑ s : ZMod (d * d),
      2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        if parityResidueCoordinate d uv.1 +
              parityResidueCoordinate d uv.2 = s then
          (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
        else 0) =
      2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        ∑ s : ZMod (d * d),
          if parityResidueCoordinate d uv.1 +
                parityResidueCoordinate d uv.2 = s then
            (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
          else 0 := by
            simp_rw [Finset.mul_sum]
            rw [Finset.sum_comm]
    _ = 2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ) := by
          apply congrArg (fun z : ℂ => 2 * z)
          apply Finset.sum_congr rfl
          intro uv _huv
          simp

/-- Additive Fourier transform of the signed residue convolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParitySignedResidueConvolution.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f56b38828b56c175bda30b140ad74d6a9f4e29a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
