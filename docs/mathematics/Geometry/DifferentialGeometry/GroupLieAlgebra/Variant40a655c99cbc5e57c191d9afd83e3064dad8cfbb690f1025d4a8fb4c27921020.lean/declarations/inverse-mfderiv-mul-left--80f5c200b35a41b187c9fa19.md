# inverse_mfderiv_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a86bc91b-e36a-cf0a-f2b3-57d50b86e056",
  "kind": "lemma",
  "lexical_name": "inverse_mfderiv_mul_left",
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
  "slug": "inverse-mfderiv-mul-left--80f5c200b35a41b187c9fa19",
  "source": {
    "blob": "35bc77697e87d5f0fda68d1ba0145105c809f73e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 104,
    "path": "GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80f5c200b35a41b187c9fa19ab839194f1d7c48ea33e48ef0727f6b98a64bfb1",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a86bc91b-e36a-cf0a-f2b3-57d50b86e056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inverse_mfderiv_mul_left {g h : G} :
    (mfderiv I I (fun b ↦ g * b) h).inverse = mfderiv I I (fun b ↦ g⁻¹ * b) (g * h) := by
  have M : 1 ≤ minSmoothness 𝕜 3 := le_trans (by norm_num) le_minSmoothness
  have A : mfderiv I I ((fun x ↦ g⁻¹ * x) ∘ (fun x ↦ g * x)) h =
      ContinuousLinearMap.id _ _ := by
    have : (fun x ↦ g⁻¹ * x) ∘ (fun x ↦ g * x) = id := by ext x; simp
    rw [this, id_eq, mfderiv_id]
  rw [mfderiv_comp (I' := I) _ (contMDiff_mul_left.contMDiffAt.mdifferentiableAt M)
    (contMDiff_mul_left.contMDiffAt.mdifferentiableAt M)] at A
  have A' : mfderiv I I ((fun x ↦ g * x) ∘ (fun x ↦ g⁻¹ * x)) (g * h) =
      ContinuousLinearMap.id _ _ := by
    have : (fun x ↦ g * x) ∘ (fun x ↦ g⁻¹ * x) = id := by ext x; simp
    rw [this, id_eq, mfderiv_id]
  rw [mfderiv_comp (I' := I) _ (contMDiff_mul_left.contMDiffAt.mdifferentiableAt M)
    (contMDiff_mul_left.contMDiffAt.mdifferentiableAt M), inv_mul_cancel_left g h] at A'
  exact ContinuousLinearMap.inverse_eq A' A

/-- Invariant vector fields are invariant under pullbacks. -/
@[to_additive "Invariant vector fields are invariant under pullbacks."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35bc77697e87d5f0fda68d1ba0145105c809f73e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
