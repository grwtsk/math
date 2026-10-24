# sourceMultiplier_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f4722ae6c75cb43b86d82f788bc012f4c4f0685",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f38def82-fda5-a238-902f-64b4d552df31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77fcecbc-0c8a-0720-01f9-b50f15494249",
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
  "slug": "sourcemultiplier-norm-le--453fb9d6d1fc2dc215d2a9f4",
  "source": {
    "blob": "6f4722ae6c75cb43b86d82f788bc012f4c4f0685",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 156,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:453fb9d6d1fc2dc215d2a9f46f0244f2bb154a5848fcb12fe9385837ddd5aa8d",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77fcecbc-0c8a-0720-01f9-b50f15494249`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–196.

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

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variante720e244e908fe7818763ab745d5b578eff382e9f1bf392c0fa5d955cce66c4a.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f4722ae6c75cb43b86d82f788bc012f4c4f0685` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
