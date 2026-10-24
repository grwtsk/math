# mapCoeffs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6be44982376a08900d30883422a1b89e1577264523dc27f7e5aa0f319b0bd76",
  "kind": "def",
  "lexical_name": "mapCoeffs",
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
  "slug": "mapcoeffs--0af90f2fb4c408f0f4bff76d",
  "source": {
    "blob": "03b65839464a3c0cd2e9aa1b0df3d39e5706fafd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 33,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0af90f2fb4c408f0f4bff76dd9f94f78f9f9afc7ebd0139bd95df4dcbcc598fb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6be44982376a08900d30883422a1b89e1577264523dc27f7e5aa0f319b0bd76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapCoeffs : Derivation R A[X] (PolynomialModule A M) where
  __ := (PolynomialModule.map A d.toLinearMap).comp
    PolynomialModule.equivPolynomial.symm.toLinearMap
  map_one_eq_zero' := show (Finsupp.single 0 1).mapRange (d : A → M) d.map_zero = 0 by simp
  leibniz' p q := by
    dsimp
    induction p using Polynomial.induction_on' with
    | add => simp only [add_mul, map_add, add_smul, smul_add, add_add_add_comm, *]
    | monomial n a =>
      induction q using Polynomial.induction_on' with
      | add => simp only [mul_add, map_add, add_smul, smul_add, add_add_add_comm, *]
      | monomial m b =>
        refine Finsupp.ext fun i ↦ ?_
        dsimp [PolynomialModule.equivPolynomial, PolynomialModule.map]
        simp only [toFinsupp_mul, toFinsupp_monomial, AddMonoidAlgebra.single_mul_single]
        show d _ = _ + _
        -- TODO: copy more `Finsupp` API to `PolynomialModule`.
        -- We have to do a bit of work to go through the identification
        -- `PolynomialModule A M = ℕ →₀ M`...
        dsimp only [PolynomialModule, Finsupp.mapRange.linearMap_apply, coeFn_coe]
        rw [Finsupp.mapRange_single, Finsupp.mapRange_single]
        -- ... and here we go back through the identification.
        show _ = (_ • PolynomialModule.single A _ _) _ + (_ • PolynomialModule.single A _ _) i
        simp only [PolynomialModule.monomial_smul_single, AddMonoidAlgebra.single_apply,
          apply_ite d, leibniz, map_zero, coeFn_coe, PolynomialModule.single_apply, ite_add_zero,
          add_comm m n]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03b65839464a3c0cd2e9aa1b0df3d39e5706fafd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
