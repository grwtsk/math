# LieIdeal.isSolvable_of_killingForm_apply_lie_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04e9279d-cf27-d640-2468-af1f7abcf9c3",
  "kind": "theorem",
  "lexical_name": "LieIdeal.isSolvable_of_killingForm_apply_lie_eq_zero",
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
  "slug": "lieideal-issolvable-of-killingform-apply-lie-eq-zero--1c2dbf8a3f87189a81ae74e5",
  "source": {
    "blob": "3854289ff253b95fb9294d6466c4e5eb5b0ab945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 206,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c2dbf8a3f87189a81ae74e53f1d635dd17b8f8d743416c999ec4b587f0ffe25",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04e9279d-cf27-d640-2468-af1f7abcf9c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem LieIdeal.isSolvable_of_killingForm_apply_lie_eq_zero (I : LieIdeal R L)
    (h : ∀ x ∈ I, ∀ y ∈ ⁅I, I⁆, killingForm R L x y = 0) :
    IsSolvable I := by
  set DI : LieIdeal R L := ⁅I, I⁆
  set DDI : LieIdeal R L := ⁅DI, DI⁆
  have tf_eq_zero : LieModule.traceForm R DI L = 0 := by
    ext ⟨x, hx⟩ ⟨y, hy⟩
    change killingForm R L x y = 0
    exact h x (LieSubmodule.lie_le_left I I hx) y hy
  have module_nilp : LieModule.IsNilpotent (derivedSeries R DI 1) L :=
    LieModule.isNilpotent_derivedSeries_of_traceForm_eq_zero tf_eq_zero
  have ring_nilp : LieRing.IsNilpotent DDI := by
    rw [LieAlgebra.isNilpotent_iff_forall (R := R)]
    rintro ⟨x, hx⟩
    apply LieSubalgebra.isNilpotent_ad_of_isNilpotent_ad (DDI : LieSubalgebra R L) (x := ⟨x, hx⟩)
    refine (LieModule.isNilpotent_iff_forall' (R := R)).mp module_nilp
      ⟨⟨x, LieSubmodule.lie_le_left DI DI hx⟩, ?_⟩
    rwa [derivedSeries_eq_derivedSeriesOfIdeal_comap, mem_comap]
  obtain ⟨k, hk⟩ := IsSolvable.solvable R DDI
  rw [derivedSeries_eq_bot_iff] at hk
  refine IsSolvable.mk (k := k + 2) ((derivedSeries_eq_bot_iff I (k + 2)).mpr ?_)
  rwa [derivedSeriesOfIdeal_add, derivedSeriesOfIdeal_succ, derivedSeriesOfIdeal_succ,
    derivedSeriesOfIdeal_zero]

namespace LieAlgebra

/-- **Cartan's criterion for solvability**: if the Killing form of `L` vanishes on `L × ⁅L, L⁆`,
then `L` is solvable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3854289ff253b95fb9294d6466c4e5eb5b0ab945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
