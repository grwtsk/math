# quotientInfEquivProdNormalizerQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ae262f15348606058a9c50aec741f4b3028b72920093504fff905ecce07820c",
  "kind": "def",
  "lexical_name": "quotientInfEquivProdNormalizerQuotient",
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
  "slug": "quotientinfequivprodnormalizerquotient--3ac0665c807f3196c4b67735",
  "source": {
    "blob": "bf3ed094216776c59b4119e8380017f3b48e5066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 269,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ac0665c807f3196c4b67735f38b3cef0c25a6e1f8f641536800d9e6824fd6b6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ae262f15348606058a9c50aec741f4b3028b72920093504fff905ecce07820c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotientInfEquivProdNormalizerQuotient (H N : Subgroup G)
    (hLE : H ≤ N.normalizer) :
    letI := Subgroup.normal_subgroupOf_of_le_normalizer hLE
    letI := Subgroup.normal_subgroupOf_sup_of_le_normalizer hLE
    H ⧸ N.subgroupOf H ≃* (H ⊔ N : Subgroup G) ⧸ N.subgroupOf (H ⊔ N) :=
  letI := Subgroup.normal_subgroupOf_of_le_normalizer hLE
  letI := Subgroup.normal_subgroupOf_sup_of_le_normalizer hLE
  let
    φ :-- φ is the natural homomorphism H →* (HN)/N.
      H →*
      _ ⧸ N.subgroupOf (H ⊔ N) :=
    (mk' <| N.subgroupOf (H ⊔ N)).comp (inclusion le_sup_left)
  have φ_surjective : Surjective φ := fun x =>
    x.inductionOn' <| by
      rintro ⟨y, hy : y ∈ (H ⊔ N)⟩
      rw [← SetLike.mem_coe] at hy
      rw [coe_mul_of_left_le_normalizer_right H N hLE] at hy
      rcases hy with ⟨h, hh, n, hn, rfl⟩
      use ⟨h, hh⟩
      let _ : Setoid ↑(H ⊔ N) :=
        (@leftRel ↑(H ⊔ N) (H ⊔ N : Subgroup G).toGroup (N.subgroupOf (H ⊔ N)))
      -- Porting note: Lean couldn't find this automatically
      refine Quotient.eq.mpr ?_
      change leftRel _ _ _
      rw [leftRel_apply]
      change h⁻¹ * (h * n) ∈ N
      rwa [← mul_assoc, inv_mul_cancel, one_mul]
  (quotientMulEquivOfEq (by simp [φ, ← comap_ker])).trans
    (quotientKerEquivOfSurjective φ φ_surjective)

/-- **Noether's second isomorphism theorem**: given two subgroups `H` and `N` of a group `G`,
where `N` is normal, defines an isomorphism between `H/(H ∩ N)` and `(HN)/N`. -/
@[to_additive "Noether's second isomorphism theorem: given two subgroups `H` and `N` of a group `G`,
where `N` is normal, defines an isomorphism between `H/(H ∩ N)` and `(H + N)/N`"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf3ed094216776c59b4119e8380017f3b48e5066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
