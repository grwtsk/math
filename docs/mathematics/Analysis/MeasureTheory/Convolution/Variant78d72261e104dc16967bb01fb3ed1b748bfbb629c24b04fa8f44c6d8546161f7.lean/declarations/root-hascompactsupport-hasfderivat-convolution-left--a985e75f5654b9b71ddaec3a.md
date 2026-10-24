# _root_.HasCompactSupport.hasFDerivAt_convolution_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1f00446fb804ab897b9e41b293e1510d1e2cf6f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 986,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78d72261e104dc16967bb01fb3ed1b748bfbb629c24b04fa8f44c6d8546161f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9454867-88e5-200d-0d08-80662b01dcc7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f2f31c4-9a72-40e0-1f3a-2a5d104f067a",
  "kind": "theorem",
  "lexical_name": "_root_.HasCompactSupport.hasFDerivAt_convolution_left",
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
  "slug": "root-hascompactsupport-hasfderivat-convolution-left--a985e75f5654b9b71ddaec3a",
  "source": {
    "blob": "e1f00446fb804ab897b9e41b293e1510d1e2cf6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1007,
    "line": 986,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant78d72261e104dc16967bb01fb3ed1b748bfbb629c24b04fa8f44c6d8546161f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a985e75f5654b9b71ddaec3a215bbe08324e373a41b0cd767c419959d1af8dee",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant78d72261e104dc16967bb01fb3ed1b748bfbb629c24b04fa8f44c6d8546161f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f2f31c4-9a72-40e0-1f3a-2a5d104f067a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 986–1007.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.HasCompactSupport.hasFDerivAt_convolution_left [IsNegInvariant μ]
    (hcf : HasCompactSupport f) (hf : ContDiff 𝕜 1 f) (hg : LocallyIntegrable g μ) (x₀ : G) :
    HasFDerivAt (f ⋆[L, μ] g) ((fderiv 𝕜 f ⋆[L.precompL G, μ] g) x₀) x₀ := by
  simp +singlePass only [← convolution_flip]
  exact hcf.hasFDerivAt_convolution_right L.flip hg hf x₀

end RCLike

section Real

/-! The one-variable case -/

variable [RCLike 𝕜]
variable [NormedSpace 𝕜 E]
variable [NormedSpace 𝕜 E']
variable [NormedSpace ℝ F] [NormedSpace 𝕜 F]
variable {f₀ : 𝕜 → E} {g₀ : 𝕜 → E'}
variable {n : ℕ∞}
variable (L : E →L[𝕜] E' →L[𝕜] F)
variable {μ : Measure 𝕜}
variable [IsAddLeftInvariant μ] [SFinite μ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant78d72261e104dc16967bb01fb3ed1b748bfbb629c24b04fa8f44c6d8546161f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant78d72261e104dc16967bb01fb3ed1b748bfbb629c24b04fa8f44c6d8546161f7.lean#L986).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f00446fb804ab897b9e41b293e1510d1e2cf6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
