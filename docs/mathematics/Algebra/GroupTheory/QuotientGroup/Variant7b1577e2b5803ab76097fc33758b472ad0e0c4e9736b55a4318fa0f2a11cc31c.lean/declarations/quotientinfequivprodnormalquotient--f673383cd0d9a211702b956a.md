# quotientInfEquivProdNormalQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2607f2a1e1a77a448004df834da1b871b0482805dc4e17ce75b69ea96d9d654a",
  "kind": "def",
  "lexical_name": "quotientInfEquivProdNormalQuotient",
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
  "slug": "quotientinfequivprodnormalquotient--f673383cd0d9a211702b956a",
  "source": {
    "blob": "6ba2ec9200577e1127bf502dd9ec7f278be2735d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 590,
    "path": "GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant7b1577e2b5803ab76097fc33758b472ad0e0c4e9736b55a4318fa0f2a11cc31c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f673383cd0d9a211702b956afd50090fb5c7b92f0231b25786038203f835dfb3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/QuotientGroup/Variant7b1577e2b5803ab76097fc33758b472ad0e0c4e9736b55a4318fa0f2a11cc31c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2607f2a1e1a77a448004df834da1b871b0482805dc4e17ce75b69ea96d9d654a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotientInfEquivProdNormalQuotient (H N : Subgroup G) [N.Normal] :
    H ⧸ N.subgroupOf H ≃* _ ⧸ N.subgroupOf (H ⊔ N) :=
  let
    φ :-- φ is the natural homomorphism H →* (HN)/N.
      H →*
      _ ⧸ N.subgroupOf (H ⊔ N) :=
    (mk' <| N.subgroupOf (H ⊔ N)).comp (inclusion le_sup_left)
  have φ_surjective : Surjective φ := fun x =>
    x.inductionOn' <| by
      rintro ⟨y, hy : y ∈ (H ⊔ N)⟩;
      rw [←SetLike.mem_coe] at hy
      rw [mul_normal H N] at hy
      rcases hy with ⟨h, n, hh, hn, rfl⟩
      use ⟨h, hh⟩
      let _ : Setoid ↑(H ⊔ N) :=
        (@leftRel ↑(H ⊔ N) (H ⊔ N : Subgroup G).toGroup (N.subgroupOf (H ⊔ N)))
      -- porting note: Lean couldn't find this automatically
      refine Quotient.eq.mpr ?_
      change Setoid.r _ _
      rw [leftRel_apply]
      change h⁻¹ * (h * n) ∈ N
      rwa [← mul_assoc, inv_mul_self, one_mul]
  (quotientMulEquivOfEq (by simp [← comap_ker])).trans (quotientKerEquivOfSurjective φ φ_surjective)
#align quotient_group.quotient_inf_equiv_prod_normal_quotient QuotientGroup.quotientInfEquivProdNormalQuotient
#align quotient_add_group.quotient_inf_equiv_sum_normal_quotient QuotientAddGroup.quotientInfEquivSumNormalQuotient

end SndIsomorphismThm

section ThirdIsoThm

variable (M : Subgroup G) [nM : M.Normal]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/QuotientGroup/Variant7b1577e2b5803ab76097fc33758b472ad0e0c4e9736b55a4318fa0f2a11cc31c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant7b1577e2b5803ab76097fc33758b472ad0e0c4e9736b55a4318fa0f2a11cc31c.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ba2ec9200577e1127bf502dd9ec7f278be2735d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
