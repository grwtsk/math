# derivCLM_toTemperedDistributionCLM_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c92015072745fda8b432a5da1106dda26c704410",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 343,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecec97390a5f9743be566537c4e09f6d9e337a341dd771f9b799835405786a98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a478b688-9a32-1208-bb9d-2a0afa561a04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8506edec-1eae-0045-2a5b-6090e650db9f",
  "kind": "theorem",
  "lexical_name": "derivCLM_toTemperedDistributionCLM_eq",
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
  "slug": "derivclm-totempereddistributionclm-eq--87fb69faedfe5b12a3ddf263",
  "source": {
    "blob": "c92015072745fda8b432a5da1106dda26c704410",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 343,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TemperedDistribution/Variantecec97390a5f9743be566537c4e09f6d9e337a341dd771f9b799835405786a98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87fb69faedfe5b12a3ddf263e07005cc3a98494849770532a4d3916e5ef39e74",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TemperedDistribution/Variantecec97390a5f9743be566537c4e09f6d9e337a341dd771f9b799835405786a98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8506edec-1eae-0045-2a5b-6090e650db9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivCLM_toTemperedDistributionCLM_eq (f : 𝓢(ℝ, F)) :
    derivCLM F (f : 𝓢'(ℝ, F)) = SchwartzMap.derivCLM 𝕜 F f := by
  ext1 g
  simp [integral_smul_deriv_right_eq_neg_left, integral_neg]

end deriv

section lineDeriv

open LineDeriv

variable [NormedAddCommGroup E] [NormedSpace ℝ E]

section TVS

variable [AddCommGroup F] [Module ℂ F] [TopologicalSpace F] [IsTopologicalAddGroup F]
  [ContinuousConstSMul ℂ F]

/-- The partial derivative (or directional derivative) in the direction `m : E` as a
continuous linear map on tempered distributions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TemperedDistribution/Variantecec97390a5f9743be566537c4e09f6d9e337a341dd771f9b799835405786a98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TemperedDistribution/Variantecec97390a5f9743be566537c4e09f6d9e337a341dd771f9b799835405786a98.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c92015072745fda8b432a5da1106dda26c704410` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
