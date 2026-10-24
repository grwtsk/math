# fourierInv_lineDerivOp_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e626c83f68490fd8146d057a8ecca1f6863dfbc6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11cbe2e5-2a98-0d08-8f50-45f29b3eef40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07d3dfe8-93a2-892f-c4ce-6fa9b507bfd1",
  "kind": "theorem",
  "lexical_name": "fourierInv_lineDerivOp_eq",
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
  "slug": "fourierinv-linederivop-eq--0b6dd2f7fa42461bcb4a7ac2",
  "source": {
    "blob": "e626c83f68490fd8146d057a8ecca1f6863dfbc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 208,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b6dd2f7fa42461bcb4a7ac287d819b4ab7271c92dce8578cb2b5867f021eaed",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07d3dfe8-93a2-892f-c4ce-6fa9b507bfd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierInv_lineDerivOp_eq (f : 𝓢(V, E)) (m : V) :
    𝓕⁻ (∂_{m} f) = -(2 * π * Complex.I) • smulLeftCLM E (inner ℝ · m) (𝓕⁻ f) := by
  have : (inner ℝ · m).HasTemperateGrowth := by fun_prop
  simp [fourierInv_apply_eq, fourier_lineDerivOp_eq,
    smulLeftCLM_compCLMOfContinuousLinearEquiv ℂ this, Function.comp_def, smulLeftCLM_fun_neg this]

end deriv

section fubini

variable
  {F : Type*} [NormedAddCommGroup F] [NormedSpace ℂ F]
  {G : Type*} [NormedAddCommGroup G] [NormedSpace ℂ G]

variable [CompleteSpace E] [CompleteSpace F]

/-- The Fourier transform satisfies `∫ 𝓕 f * g = ∫ f * 𝓕 g`, i.e., it is self-adjoint.

Version where the multiplication is replaced by a general bilinear form `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e626c83f68490fd8146d057a8ecca1f6863dfbc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
