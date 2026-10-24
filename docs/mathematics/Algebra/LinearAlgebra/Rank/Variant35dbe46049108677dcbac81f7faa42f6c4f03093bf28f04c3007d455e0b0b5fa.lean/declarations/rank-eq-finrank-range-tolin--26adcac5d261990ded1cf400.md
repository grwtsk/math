# rank_eq_finrank_range_toLin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87c76eaf-e23f-2250-87c5-50d833ed46eb",
  "kind": "theorem",
  "lexical_name": "rank_eq_finrank_range_toLin",
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
  "slug": "rank-eq-finrank-range-tolin--26adcac5d261990ded1cf400",
  "source": {
    "blob": "f8a7feee81b0a65091710388b0ad2bc4d890f2c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 258,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26adcac5d261990ded1cf4007b6c9ccd3c3078238faadaee1a0172955b84e22f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87c76eaf-e23f-2250-87c5-50d833ed46eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_eq_finrank_range_toLin [Finite m] [DecidableEq n] {M₁ M₂ : Type*} [AddCommGroup M₁]
    [AddCommGroup M₂] [Module R M₁] [Module R M₂] (A : Matrix m n R) (v₁ : Basis m R M₁)
    (v₂ : Basis n R M₂) : A.rank = finrank R (LinearMap.range (toLin v₂ v₁ A)) := by
  cases nonempty_fintype m
  let e₁ := (Pi.basisFun R m).equiv v₁ (Equiv.refl _)
  let e₂ := (Pi.basisFun R n).equiv v₂ (Equiv.refl _)
  have range_e₂ : LinearMap.range e₂ = ⊤ := by
    rw [LinearMap.range_eq_top]
    exact e₂.surjective
  refine LinearEquiv.finrank_eq (e₁.ofSubmodules _ _ ?_)
  rw [← LinearMap.range_comp, ← LinearMap.range_comp_of_range_eq_top (toLin v₂ v₁ A) range_e₂]
  congr 1
  apply LinearMap.pi_ext'
  rintro i
  apply LinearMap.ext_ring
  have aux₁ := toLin_self (Pi.basisFun R n) (Pi.basisFun R m) A i
  have aux₂ := Basis.equiv_apply (Pi.basisFun R n) i v₂
  rw [toLin_eq_toLin', toLin'_apply'] at aux₁
  rw [Pi.basisFun_apply] at aux₁ aux₂
  simp only [e₁, e₂, LinearMap.comp_apply, LinearEquiv.coe_coe, Equiv.refl_apply,
    aux₁, aux₂, LinearMap.coe_single, toLin_self, map_sum, LinearEquiv.map_smul, Basis.equiv_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8a7feee81b0a65091710388b0ad2bc4d890f2c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
