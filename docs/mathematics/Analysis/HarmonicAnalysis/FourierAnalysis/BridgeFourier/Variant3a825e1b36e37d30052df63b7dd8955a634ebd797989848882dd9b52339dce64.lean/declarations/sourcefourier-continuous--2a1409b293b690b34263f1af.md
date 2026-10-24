# sourceFourier_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41933025f3086285c4247232331e6fbc843481b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:358d6814-9c11-5dfb-da93-8c32e4fc489b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:623046dc-1542-c0ac-1a50-3db5bcae7b48",
  "kind": "theorem",
  "lexical_name": "sourceFourier_continuous",
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
  "slug": "sourcefourier-continuous--2a1409b293b690b34263f1af",
  "source": {
    "blob": "41933025f3086285c4247232331e6fbc843481b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 84,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a1409b293b690b34263f1af131b0f9e5830453ebcddd0bf8b31d5a52fe53314",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:623046dc-1542-c0ac-1a50-3db5bcae7b48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceFourier_continuous {f : ℝ → ℝ} (hf : Integrable f) :
    Continuous (sourceFourier f) := by
  have hfc : Integrable (fun x ↦ (f x : ℂ)) := Complex.ofRealCLM.integrable_comp hf
  have hc : Continuous (𝓕 (fun x ↦ (f x : ℂ))) :=
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ).continuous₂ hfc
  have heq : sourceFourier f = fun ξ ↦ 𝓕 (fun x ↦ (f x : ℂ)) (-ξ / (2 * Real.pi)) :=
    funext (sourceFourier_eq_fourier f)
  rw [heq]
  exact hc.comp (continuous_neg.div_const (2 * Real.pi))

/-- An elementary logarithmic majorant with an integrable inverse-power tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41933025f3086285c4247232331e6fbc843481b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
