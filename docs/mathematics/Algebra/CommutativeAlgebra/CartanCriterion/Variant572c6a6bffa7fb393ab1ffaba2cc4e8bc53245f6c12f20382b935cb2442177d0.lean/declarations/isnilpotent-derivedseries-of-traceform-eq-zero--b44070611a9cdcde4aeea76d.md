# isNilpotent_derivedSeries_of_traceForm_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23a18cf8-1c35-5220-9035-64fc72feb093",
  "kind": "theorem",
  "lexical_name": "isNilpotent_derivedSeries_of_traceForm_eq_zero",
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
  "slug": "isnilpotent-derivedseries-of-traceform-eq-zero--b44070611a9cdcde4aeea76d",
  "source": {
    "blob": "3854289ff253b95fb9294d6466c4e5eb5b0ab945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 175,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b44070611a9cdcde4aeea76d3d1d7e01b9af08324902d71cf5988a97d7e1e7ad",
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

Occurrence: `result:23a18cf8-1c35-5220-9035-64fc72feb093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem isNilpotent_derivedSeries_of_traceForm_eq_zero
    [Module R M] [LieModule R L M] [IsNoetherian R M] [Module.Free R M]
    (h : traceForm R L M = 0) :
    IsNilpotent (derivedSeries R L 1) M := by
  set A := AlgebraicClosure (FractionRing R)
  have _i : FaithfulSMul R A := FaithfulSMul.trans R (FractionRing R) A
  have nilp_ext : IsNilpotent (derivedSeries A (A ⊗[R] L) 1) (A ⊗[R] M) :=
    isNilpotent_derivedSeries_of_traceForm_eq_zero_aux <| by simpa
  rw [isNilpotent_iff_forall' (R := R)]
  rw [isNilpotent_iff_forall' (R := A)] at nilp_ext
  intro ⟨x, hx⟩
  have hx_ext : 1 ⊗ₜ[R] x ∈ derivedSeries A (A ⊗[R] L) 1 := by
    rw [derivedSeries_baseChange]
    exact Submodule.tmul_mem_baseChange_of_mem 1 hx
  have hbc_inj : Injective (End.baseChangeHom R A M) := LinearMap.baseChangeHom_injective R M A
  have aux : (toEnd R (derivedSeries R L 1) M ⟨x, hx⟩).baseChangeHom R A M =
      (toEnd R L M x).baseChange A := rfl
  rw [← IsNilpotent.map_iff hbc_inj, aux, ← toEnd_baseChange]
  exact nilp_ext ⟨_, hx_ext⟩

end LieModule

variable [IsNoetherian R L] [Module.Free R L]

open LieAlgebra in
/-- A convenience variation of `LieAlgebra.isSolvable_of_forall_derived_killingForm_eq_zero` for
working with ideals.

Over a principal ideal domain by `LieIdeal.killingForm_eq` this is just a specialisation of
`LieAlgebra.isSolvable_of_killingForm_apply_lie_eq_zero` but since it does not require the PID
assumption, it is a slightly stronger result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3854289ff253b95fb9294d6466c4e5eb5b0ab945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
