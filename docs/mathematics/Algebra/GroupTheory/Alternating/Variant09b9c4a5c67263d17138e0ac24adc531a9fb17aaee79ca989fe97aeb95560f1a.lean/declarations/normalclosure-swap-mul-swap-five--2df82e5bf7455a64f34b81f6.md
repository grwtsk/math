# normalClosure_swap_mul_swap_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3f3ab3e-8b5a-e843-18c1-e2d06d1e3621",
  "kind": "theorem",
  "lexical_name": "normalClosure_swap_mul_swap_five",
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
  "slug": "normalclosure-swap-mul-swap-five--2df82e5bf7455a64f34b81f6",
  "source": {
    "blob": "0fec68f0f822f0bf9b60b946d0046cdc6f807a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 263,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2df82e5bf7455a64f34b81f61caa07a42f8faf30ffa7d93e874e90495f20ee96",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3f3ab3e-8b5a-e843-18c1-e2d06d1e3621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalClosure_swap_mul_swap_five :
    normalClosure
        ({⟨swap 0 4 * swap 1 3, mem_alternatingGroup.2 (by decide)⟩} :
          Set (alternatingGroup (Fin 5))) =
      ⊤ := by
  let g1 := (⟨swap 0 2 * swap 0 1, mem_alternatingGroup.2 (by decide)⟩ : alternatingGroup (Fin 5))
  let g2 := (⟨swap 0 4 * swap 1 3, mem_alternatingGroup.2 (by decide)⟩ : alternatingGroup (Fin 5))
  have h5 : g1 * g2 * g1⁻¹ * g2⁻¹ =
      ⟨finRotate 5, finRotate_bit1_mem_alternatingGroup (n := 2)⟩ := by
    rw [Subtype.ext_iff]
    simp only [Fin.val_mk, Subgroup.coe_mul, Subgroup.coe_inv, Fin.val_mk]
  rw [eq_top_iff, ← normalClosure_finRotate_five]
  refine' normalClosure_le_normal _
  rw [Set.singleton_subset_iff, SetLike.mem_coe, ← h5]
  have h : g2 ∈ normalClosure {g2} :=
    SetLike.mem_coe.1 (subset_normalClosure (Set.mem_singleton _))
  exact mul_mem (Subgroup.normalClosure_normal.conj_mem _ h g1) (inv_mem h)
#align alternating_group.normal_closure_swap_mul_swap_five alternatingGroup.normalClosure_swap_mul_swap_five

/-- Shows that any non-identity element of $A_5$ whose cycle decomposition consists only of swaps
  is conjugate to $(04)(13)$. This is used to show that the normal closure of such a permutation
  in $A_5$ is $A_5$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fec68f0f822f0bf9b60b946d0046cdc6f807a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
