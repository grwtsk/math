# parityPairShiftResidueCorrelation_eq_affine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f68e4e8a-772c-8f8b-0a41-c3613df9cbe0",
  "kind": "theorem",
  "lexical_name": "parityPairShiftResidueCorrelation_eq_affine",
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
  "slug": "paritypairshiftresiduecorrelation-eq-affine--fb5ddf832a421389f33ea8d1",
  "source": {
    "blob": "7236c21cf397007ff1cdb40726e575081a87ce71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 153,
    "path": "GRWTSK/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb5ddf832a421389f33ea8d10d6187e587d0a3497c93dc665f9328e6cc28d668",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f68e4e8a-772c-8f8b-0a41-c3613df9cbe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityPairShiftResidueCorrelation_eq_affine
    (b d r h : ℕ) [NeZero d]
    (hh : h ∈ positiveEndpointShiftSet b)
    (s : ZMod (d * d)) :
    parityPairShiftResidueCorrelation b d r h s =
      parityAffineShiftResidueCorrelation b d r h s := by
  classical
  unfold parityPairShiftResidueCorrelation
    parityAffineShiftResidueCorrelation
  apply congrArg (fun z : ℂ => 2 * z)
  refine Finset.sum_bij'
    (fun uv _ => uv.1)
    (fun u _ => (u, u + 2 * h)) ?_ ?_ ?_ ?_ ?_
  · intro uv huv
    rcases Finset.mem_filter.mp huv with ⟨huvPair, hshift⟩
    rcases Finset.mem_filter.mp huvPair with ⟨huvProd, huvLt⟩
    rcases Finset.mem_product.mp huvProd with ⟨hu, hv⟩
    have hspec := endpointParityStrictPair_shift_spec huvPair
    have hvEq : uv.2 = uv.1 + 2 * h := by
      rw [← hshift]
      exact hspec.2
    unfold parityAffineShiftBaseSet
    apply Finset.mem_filter.mpr
    constructor
    · exact hu
    · simpa [hvEq] using (Finset.mem_Icc.mp (Finset.mem_filter.mp hv).1).2
  · intro u hu
    rcases Finset.mem_filter.mp hu with ⟨huParity, huTop⟩
    have hhI := Finset.mem_Ico.mp hh
    unfold endpointParityFixedShiftPairSet
    apply Finset.mem_filter.mpr
    constructor
    · unfold endpointParityStrictPairSet
      apply Finset.mem_filter.mpr
      constructor
      · apply Finset.mem_product.mpr
        constructor
        · exact huParity
        · unfold endpointParitySet
          apply Finset.mem_filter.mpr
          constructor
          · have huI := (Finset.mem_filter.mp huParity).1
            exact Finset.mem_Icc.mpr ⟨by omega, huTop⟩
          · have huPar := (Finset.mem_filter.mp huParity).2
            omega
      · omega
    · omega
  · intro uv huv
    rcases Finset.mem_filter.mp huv with ⟨huvPair, hshift⟩
    have hspec := endpointParityStrictPair_shift_spec huvPair
    have hvEq : uv.2 = uv.1 + 2 * h := by
      rw [← hshift]
      exact hspec.2
    exact Prod.ext rfl hvEq.symm
  · intro u hu
    rfl
  · intro uv huv
    rcases Finset.mem_filter.mp huv with ⟨huvPair, hshift⟩
    have hspec := endpointParityStrictPair_shift_spec huvPair
    have hvEq : uv.2 = uv.1 + 2 * h := by
      rw [← hshift]
      exact hspec.2
    rw [hvEq, pairResidueCoordinate_eq_affineShift]

/-- The original signed residue bucket is the exact sum over positive shifts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7236c21cf397007ff1cdb40726e575081a87ce71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
