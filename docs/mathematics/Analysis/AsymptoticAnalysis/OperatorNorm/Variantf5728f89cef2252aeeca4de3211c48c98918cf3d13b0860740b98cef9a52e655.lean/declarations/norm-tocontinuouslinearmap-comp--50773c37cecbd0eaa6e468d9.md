# norm_toContinuousLinearMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a86695945e4c66640b661f94d3ce85955fba3bf0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1806,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84a4468c-cd2e-7d28-f60b-4dab16ef37b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb21a10d-5aac-bb8b-b06c-46d210af7d71",
  "kind": "theorem",
  "lexical_name": "norm_toContinuousLinearMap_comp",
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
  "slug": "norm-tocontinuouslinearmap-comp--50773c37cecbd0eaa6e468d9",
  "source": {
    "blob": "a86695945e4c66640b661f94d3ce85955fba3bf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1828,
    "line": 1806,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50773c37cecbd0eaa6e468d9834b130bc944f8d92b1d850f474fe9a494738fda",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb21a10d-5aac-bb8b-b06c-46d210af7d71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1806–1828.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_toContinuousLinearMap_comp [RingHomIsometric σ₁₂] (f : F →ₛₗᵢ[σ₂₃] G)
    {g : E →SL[σ₁₂] F} : ‖f.toContinuousLinearMap.comp g‖ = ‖g‖ :=
  op_norm_ext (f.toContinuousLinearMap.comp g) g fun x => by
    simp only [norm_map, coe_toContinuousLinearMap, coe_comp', Function.comp_apply]
#align linear_isometry.norm_to_continuous_linear_map_comp LinearIsometry.norm_toContinuousLinearMap_comp

end LinearIsometry

end

namespace ContinuousLinearMap

variable [NontriviallyNormedField 𝕜] [NontriviallyNormedField 𝕜₂] [NontriviallyNormedField 𝕜₃]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜₂ F] [NormedSpace 𝕜₃ G] [NormedSpace 𝕜 Fₗ] (c : 𝕜)
  {σ₁₂ : 𝕜 →+* 𝕜₂} {σ₂₃ : 𝕜₂ →+* 𝕜₃}

variable {𝕜₂' : Type*} [NontriviallyNormedField 𝕜₂'] {F' : Type*} [NormedAddCommGroup F']
  [NormedSpace 𝕜₂' F'] {σ₂' : 𝕜₂' →+* 𝕜₂} {σ₂'' : 𝕜₂ →+* 𝕜₂'} {σ₂₃' : 𝕜₂' →+* 𝕜₃}
  [RingHomInvPair σ₂' σ₂''] [RingHomInvPair σ₂'' σ₂'] [RingHomCompTriple σ₂' σ₂₃ σ₂₃']
  [RingHomCompTriple σ₂'' σ₂₃' σ₂₃] [RingHomIsometric σ₂₃] [RingHomIsometric σ₂']
  [RingHomIsometric σ₂''] [RingHomIsometric σ₂₃']

/-- Precomposition with a linear isometry preserves the operator norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean#L1806).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a86695945e4c66640b661f94d3ce85955fba3bf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
