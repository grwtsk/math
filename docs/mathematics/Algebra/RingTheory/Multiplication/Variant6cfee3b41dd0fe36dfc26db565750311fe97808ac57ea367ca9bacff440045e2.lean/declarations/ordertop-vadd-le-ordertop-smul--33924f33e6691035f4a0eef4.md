# orderTop_vAdd_le_orderTop_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb1d6b23-39d6-66aa-1e53-23f755a2c26b",
  "kind": "theorem",
  "lexical_name": "orderTop_vAdd_le_orderTop_smul",
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
  "slug": "ordertop-vadd-le-ordertop-smul--33924f33e6691035f4a0eef4",
  "source": {
    "blob": "5ca27e0f35af81586b042c3765c44f16d309d137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 366,
    "path": "GRWTSK/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33924f33e6691035f4a0eef4baa5d3c82baf2449e726c7274f04a3658b1ec34c",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb1d6b23-39d6-66aa-1e53-23f755a2c26b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderTop_vAdd_le_orderTop_smul {Γ Γ'} [LinearOrder Γ] [LinearOrder Γ'] [VAdd Γ Γ']
    [IsOrderedCancelVAdd Γ Γ'] [MulZeroClass R] [SMulWithZero R V] {x : R⟦Γ⟧}
    [VAdd (WithTop Γ) (WithTop Γ')] {y : HahnModule Γ' R V}
    (h : ∀ (γ : Γ) (γ' : Γ'), γ +ᵥ γ' = (γ : WithTop Γ) +ᵥ (γ' : WithTop Γ')) :
    x.orderTop +ᵥ ((of R).symm y).orderTop ≤ ((of R).symm (x • y)).orderTop := by
  by_cases hx : x = 0; · simp_all
  by_cases hy : y = 0; · simp_all
  have hhy : ((of R).symm y) ≠ 0 := hy
  rw [HahnSeries.orderTop_of_ne_zero hx, HahnSeries.orderTop_of_ne_zero hhy, ← h,
      ← Set.IsWF.min_vadd]
  by_cases hxy : (of R).symm (x • y) = 0
  · rw [hxy, HahnSeries.orderTop_zero]
    exact OrderTop.le_top (α := WithTop Γ') _
  · rw [HahnSeries.orderTop_of_ne_zero hxy, WithTop.coe_le_coe]
    exact Set.IsWF.min_le_min_of_subset support_smul_subset_vadd_support

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ca27e0f35af81586b042c3765c44f16d309d137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
