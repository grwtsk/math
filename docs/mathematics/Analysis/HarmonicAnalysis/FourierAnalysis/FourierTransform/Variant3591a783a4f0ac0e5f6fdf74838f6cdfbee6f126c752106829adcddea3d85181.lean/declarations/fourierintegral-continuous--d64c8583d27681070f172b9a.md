# fourierIntegral_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10918865f469b879947ae513d22e3a34776ed4e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a049e388-13e0-ce4e-f637-d4f544689fc1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4302aa4-bae7-ee40-4175-abee49ec5fd3",
  "kind": "theorem",
  "lexical_name": "fourierIntegral_continuous",
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
  "slug": "fourierintegral-continuous--d64c8583d27681070f172b9a",
  "source": {
    "blob": "10918865f469b879947ae513d22e3a34776ed4e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 149,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d64c8583d27681070f172b9af642aae4e28fe694f3221fbdc41434fea6148400",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4302aa4-bae7-ee40-4175-abee49ec5fd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierIntegral_continuous [FirstCountableTopology W] (he : Continuous e)
    (hL : Continuous fun p : V × W ↦ L p.1 p.2) {f : V → E} (hf : Integrable f μ) :
    Continuous (fourierIntegral e μ L f) := by
  apply continuous_of_dominated
  · exact fun w ↦ ((fourierIntegral_convergent_iff he hL w).2 hf).1
  · exact fun w ↦ ae_of_all _ fun v ↦ le_of_eq (Circle.norm_smul _ _)
  · exact hf.norm
  · refine ae_of_all _ fun v ↦ (he.comp ?_).smul continuous_const
    exact (hL.comp (.prodMk_right _)).neg

end Continuous

section Fubini

variable [TopologicalSpace 𝕜] [IsTopologicalRing 𝕜] [TopologicalSpace V] [BorelSpace V]
  [TopologicalSpace W] [MeasurableSpace W] [BorelSpace W]
  {e : AddChar 𝕜 𝕊} {μ : Measure V} {L : V →ₗ[𝕜] W →ₗ[𝕜] 𝕜}
  {ν : Measure W} [SigmaFinite μ] [SigmaFinite ν] [SecondCountableTopology V]

variable [CompleteSpace E] [CompleteSpace F]

/-- The Fourier transform satisfies `∫ 𝓕 f * g = ∫ f * 𝓕 g`, i.e., it is self-adjoint.
Version where the multiplication is replaced by a general bilinear form `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10918865f469b879947ae513d22e3a34776ed4e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
