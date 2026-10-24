# ContMDiff.clm_bundle_apply₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7556309acf4e154064cb997a5991d8a4bc50d47c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 444,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:784e34ab-13de-bd67-08b7-ef02cf3e3b6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f31c956f-62be-bc35-ff4d-2605138c87e7",
  "kind": "lemma",
  "lexical_name": "ContMDiff.clm_bundle_apply₂",
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
  "slug": "contmdiff-clm-bundle-apply--b73c908f2aa25c1a8741566d",
  "source": {
    "blob": "7556309acf4e154064cb997a5991d8a4bc50d47c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 444,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b73c908f2aa25c1a8741566d6b44389503d66db9a93a1ced7eebfa3f49e79917",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f31c956f-62be-bc35-ff4d-2605138c87e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContMDiff.clm_bundle_apply₂
    (hψ : CMDiff n (fun m ↦ TotalSpace.mk' (F₁ →L[𝕜] F₂ →L[𝕜] F₃)
      (E := fun (x : B) ↦ (E₁ x →L[𝕜] E₂ x →L[𝕜] E₃ x)) (b m) (ψ m)))
    (hv : CMDiff n (fun m ↦ TotalSpace.mk' F₁ (b m) (v m)))
    (hw : CMDiff n (fun m ↦ TotalSpace.mk' F₂ (b m) (w m))) :
    CMDiff n (fun m ↦ TotalSpace.mk' F₃ (b m) (ψ m (v m) (w m))) :=
  fun x ↦ (hψ x).clm_bundle_apply₂ (hv x) (hw x)

end TwoVariables

section TwoVariables'

variable [∀ x, IsTopologicalAddGroup (E₃ x)] [∀ x, ContinuousSMul 𝕜 (E₃ x)]
  {ψ : ∀ x, (E₁ (b x) →L[𝕜] E₂ (b x) →L[𝕜] E₃ (b x))} {w : ∀ x, E₂ (b x)}

/-- Consider differentiable maps `v : M → E₁` and `w : M → E₂` to vector bundles, over a base map
`b : M → B`, and bilinear maps `ψ m : E₁ (b m) → E₂ (b m) → E₃ (b m)` depending smoothly on `m`.
One can apply `ψ  m` to `v m` and `w m`, and the resulting map is differentiable.

We give here a version of this statement within a set at a point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7556309acf4e154064cb997a5991d8a4bc50d47c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
