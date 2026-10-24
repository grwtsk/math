# sourceMultiplier_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:262d8d80-af88-7e0c-7f4b-20b1158255c3",
  "kind": "theorem",
  "lexical_name": "sourceMultiplier_norm_le",
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
  "slug": "sourcemultiplier-norm-le--a1d36f4b2da529c53b1aa7d9",
  "source": {
    "blob": "396f03149f28eac4dc48378a2b7426474ee520d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 164,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1d36f4b2da529c53b1aa7d92141a0491255794511fe693b5a80503065d77229",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:262d8d80-af88-7e0c-7f4b-20b1158255c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMultiplier_norm_le (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) (f : FullH) :
    ‖sourceMultiplier ε h hε hsmall hh f‖ ≤ ((4 / 3 : ℝ) * Real.exp (1 / 4)) * ‖f‖ := by
  have hn : ‖sourceMultiplier ε h hε hsmall hh f‖ =
      ‖frequencyMultiplier ε h hε hsmall hh (𝓕 f)‖ :=
    (Lp.fourierTransformₗᵢ ℝ ℂ).symm.norm_map _
  rw [hn]
  change ‖frequencyVector ε h hε hsmall hh (𝓕 f)‖ ≤ _
  simpa only [Lp.norm_fourier_eq] using frequencyVector_norm_le ε h hε hsmall hh (𝓕 f)

end
end SourceWeightedMultiplierScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @SourceWeightedMultiplierScratch.boundaryMultiplier
#print SourceWeightedMultiplierScratch.boundaryMultiplier
#print axioms SourceWeightedMultiplierScratch.boundaryMultiplier
#check @SourceWeightedMultiplierScratch.boundaryMultiplier_norm_le
#print SourceWeightedMultiplierScratch.boundaryMultiplier_norm_le
#print axioms SourceWeightedMultiplierScratch.boundaryMultiplier_norm_le
#check @SourceWeightedMultiplierScratch.frequencyProduct_memLp
#print SourceWeightedMultiplierScratch.frequencyProduct_memLp
#print axioms SourceWeightedMultiplierScratch.frequencyProduct_memLp
#check @SourceWeightedMultiplierScratch.frequencyMultiplier
#print SourceWeightedMultiplierScratch.frequencyMultiplier
#print axioms SourceWeightedMultiplierScratch.frequencyMultiplier
#check @SourceWeightedMultiplierScratch.frequencyMultiplier_ae
#print SourceWeightedMultiplierScratch.frequencyMultiplier_ae
#print axioms SourceWeightedMultiplierScratch.frequencyMultiplier_ae
#check @SourceWeightedMultiplierScratch.sourceMultiplier
#print SourceWeightedMultiplierScratch.sourceMultiplier
#print axioms SourceWeightedMultiplierScratch.sourceMultiplier
#check @SourceWeightedMultiplierScratch.sourceMultiplier_fourier_ae
#print SourceWeightedMultiplierScratch.sourceMultiplier_fourier_ae
#print axioms SourceWeightedMultiplierScratch.sourceMultiplier_fourier_ae
#check @SourceWeightedMultiplierScratch.sourceMultiplier_norm_le
#print SourceWeightedMultiplierScratch.sourceMultiplier_norm_le
#print axioms SourceWeightedMultiplierScratch.sourceMultiplier_norm_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `396f03149f28eac4dc48378a2b7426474ee520d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
