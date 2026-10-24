# orthogonalProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6875ebc855139f725e209a1a425460a276b56d5d2ae33e4d5d9e540863cb3b2a",
  "kind": "def",
  "lexical_name": "orthogonalProjection",
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
  "slug": "orthogonalprojection--99b9f723aecaed42ef96160d",
  "source": {
    "blob": "9e0bb95bd0e70c01a34341ae30299a7a56af087e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 479,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99b9f723aecaed42ef96160df49bdc680725d49c0f0c3a75db7cad6585580ead",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6875ebc855139f725e209a1a425460a276b56d5d2ae33e4d5d9e540863cb3b2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orthogonalProjection : E →L[𝕜] K :=
  LinearMap.mkContinuous
    { toFun := fun v => ⟨orthogonalProjectionFn K v, orthogonalProjectionFn_mem v⟩
      map_add' := fun x y => by
        have hm : orthogonalProjectionFn K x + orthogonalProjectionFn K y ∈ K :=
          Submodule.add_mem K (orthogonalProjectionFn_mem x) (orthogonalProjectionFn_mem y)
        have ho :
          ∀ w ∈ K, ⟪x + y - (orthogonalProjectionFn K x + orthogonalProjectionFn K y), w⟫ = 0 := by
          intro w hw
          rw [add_sub_add_comm, inner_add_left, orthogonalProjectionFn_inner_eq_zero _ w hw,
            orthogonalProjectionFn_inner_eq_zero _ w hw, add_zero]
        ext
        simp [eq_orthogonalProjectionFn_of_mem_of_inner_eq_zero hm ho]
      map_smul' := fun c x => by
        have hm : c • orthogonalProjectionFn K x ∈ K :=
          Submodule.smul_mem K _ (orthogonalProjectionFn_mem x)
        have ho : ∀ w ∈ K, ⟪c • x - c • orthogonalProjectionFn K x, w⟫ = 0 := by
          intro w hw
          rw [← smul_sub, inner_smul_left, orthogonalProjectionFn_inner_eq_zero _ w hw,
            mul_zero]
        ext
        simp [eq_orthogonalProjectionFn_of_mem_of_inner_eq_zero hm ho] }
    1 fun x => by
    simp only [one_mul, LinearMap.coe_mk]
    refine' le_of_pow_le_pow 2 (norm_nonneg _) (by norm_num) _
    change ‖orthogonalProjectionFn K x‖ ^ 2 ≤ ‖x‖ ^ 2
    nlinarith [orthogonalProjectionFn_norm_sq K x]
#align orthogonal_projection orthogonalProjection

variable {K}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e0bb95bd0e70c01a34341ae30299a7a56af087e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
