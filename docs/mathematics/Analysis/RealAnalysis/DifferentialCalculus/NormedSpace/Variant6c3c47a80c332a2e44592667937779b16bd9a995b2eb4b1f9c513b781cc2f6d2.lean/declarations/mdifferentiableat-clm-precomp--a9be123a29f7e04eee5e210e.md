# MDifferentiableAt.clm_precomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71bfaab9-1377-2d35-ee0d-6a83a8a11ab1",
  "kind": "theorem",
  "lexical_name": "MDifferentiableAt.clm_precomp",
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
  "slug": "mdifferentiableat-clm-precomp--a9be123a29f7e04eee5e210e",
  "source": {
    "blob": "d9581137bf42c750114e60b1ce1dd66d199db424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9be123a29f7e04eee5e210e0df9fa494c89a064090d5b3e4ef5cffeef155a41",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71bfaab9-1377-2d35-ee0d-6a83a8a11ab1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem MDifferentiableAt.clm_precomp {f : M → F₁ →L[𝕜] F₂} {x : M}
    (hf : MDifferentiableAt I 𝓘(𝕜, F₁ →L[𝕜] F₂) f x) :
    MDifferentiableAt I 𝓘(𝕜, (F₂ →L[𝕜] F₃) →L[𝕜] (F₁ →L[𝕜] F₃))
      (fun y ↦ (f y).precomp F₃ : M → (F₂ →L[𝕜] F₃) →L[𝕜] (F₁ →L[𝕜] F₃)) x :=
  Differentiable.comp_mdifferentiableAt (g := (ContinuousLinearMap.compL 𝕜 F₁ F₂ F₃).flip)
    (ContinuousLinearMap.differentiable (𝕜 := 𝕜) (F := ((F₂ →L[𝕜] F₃) →L[𝕜] F₁ →L[𝕜] F₃))
      (ContinuousLinearMap.compL 𝕜 F₁ F₂ F₃).flip) hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9581137bf42c750114e60b1ce1dd66d199db424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
