# norm_fourierInv_toLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1f6584a7fefed470b6b49c9ba72a99c973b6732",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fafa7f31-1032-dc4f-8642-c5f45739b07d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a46d5e1-1900-7792-3456-f76dc48f2c11",
  "kind": "theorem",
  "lexical_name": "norm_fourierInv_toLp",
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
  "slug": "norm-fourierinv-tolp--b35aa7729f739fd66c0da24d",
  "source": {
    "blob": "e1f6584a7fefed470b6b49c9ba72a99c973b6732",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b35aa7729f739fd66c0da24dbffe2352320a73ec3a7ce57d11ea6142b603f1a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a46d5e1-1900-7792-3456-f76dc48f2c11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_fourierInv_toLp (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ‖(fourierInv_memLp f hf hf2).toLp (𝓕⁻ f)‖ = ‖hf2.toLp f‖ := by
  rw [fourierInv_toLp_eq f hf hf2]
  exact (Lp.fourierTransformₗᵢ ℝ ℂ).symm.norm_map (hf2.toLp f)

end
end FourierL1L2BridgeScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @FourierL1L2BridgeScratch.integral_fourierInv_mul_eq
#print FourierL1L2BridgeScratch.integral_fourierInv_mul_eq
#print axioms FourierL1L2BridgeScratch.integral_fourierInv_mul_eq
#check @FourierL1L2BridgeScratch.continuous_fourierInv
#print FourierL1L2BridgeScratch.continuous_fourierInv
#print axioms FourierL1L2BridgeScratch.continuous_fourierInv
#check @FourierL1L2BridgeScratch.fourierInv_toLp_ae
#print FourierL1L2BridgeScratch.fourierInv_toLp_ae
#print axioms FourierL1L2BridgeScratch.fourierInv_toLp_ae
#check @FourierL1L2BridgeScratch.fourierInv_memLp
#print FourierL1L2BridgeScratch.fourierInv_memLp
#print axioms FourierL1L2BridgeScratch.fourierInv_memLp
#check @FourierL1L2BridgeScratch.fourierInv_toLp_eq
#print FourierL1L2BridgeScratch.fourierInv_toLp_eq
#print axioms FourierL1L2BridgeScratch.fourierInv_toLp_eq
#check @FourierL1L2BridgeScratch.norm_fourierInv_toLp
#print FourierL1L2BridgeScratch.norm_fourierInv_toLp
#print axioms FourierL1L2BridgeScratch.norm_fourierInv_toLp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f6584a7fefed470b6b49c9ba72a99c973b6732` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
