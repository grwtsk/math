# coeff_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:666f238b-75fa-4e06-3259-d4e252e6febc",
  "kind": "theorem",
  "lexical_name": "coeff_smul",
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
  "slug": "coeff-smul--161d78fbe96f4c8f8bd59245",
  "source": {
    "blob": "01cb099bb85a761e846902f8de3143e21b4aac4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 460,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:161d78fbe96f4c8f8bd59245b96536e293a18fcb9f4f6dcf1aa137dfdfbc957c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:666f238b-75fa-4e06-3259-d4e252e6febc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_smul {R} {V} [Semiring R] [AddCommMonoid V] [Module R V]
    (s : SummableFamily Γ R α) (t : SummableFamily Γ' V β) (g : Γ') :
    (smul s t).hsum.coeff g =
    ∑ gh ∈ VAddAntidiagonal g (Set.VAddAntidiagonal.finite_of_isPWO s.isPWO_iUnion_support
      t.isPWO_iUnion_support g), (s.hsum.coeff gh.1) • (t.hsum.coeff gh.2) := by
  rw [coeff_hsum]
  simp only [coeff_hsum_eq_sum, smul_toFun, HahnModule.coeff_smul, Equiv.symm_apply_apply]
  simp_rw [sum_vAddAntidiagonal_eq, Finset.smul_sum, Finset.sum_smul]
  rw [← sum_finsum_comm _ _ <| fun gh _ => hasFiniteSupport_smul s t gh]
  refine sum_congr rfl fun gh _ => ?_
  rw [finsum_eq_sum _ (hasFiniteSupport_smul s t gh), ← sum_product_right']
  refine sum_subset (fun ab hab => ?_) (fun ab _ hab => by simp_all)
  have hsupp := smul_support_subset_prod s t gh
  simp_all only [mem_vaddAntidiagonal, Set.mem_iUnion, mem_support, ne_eq, Set.Finite.mem_toFinset,
    Function.mem_support, Set.Finite.coe_toFinset, support_subset_iff, Set.mem_prod,
    Set.mem_ofPred_eq, Prod.forall, coeff_support, mem_product]
  exact hsupp ab.1 ab.2 hab

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01cb099bb85a761e846902f8de3143e21b4aac4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
