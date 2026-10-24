# invertibleAlgebraCoeNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb0299dab114d9c69fbf89802e7ccb2fec62e9ed62c049ae7e96d1f3bd44b65c",
  "kind": "def",
  "lexical_name": "invertibleAlgebraCoeNat",
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
  "slug": "invertiblealgebracoenat--d414f6e5f1578f8b0344a280",
  "source": {
    "blob": "e2402c90b7efb9ebcbf607eba67187fc1ac039d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 58,
    "path": "GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d414f6e5f1578f8b0344a2803295e8238138fd8f9567dec0d087e5f45eedd2a2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb0299dab114d9c69fbf89802e7ccb2fec62e9ed62c049ae7e96d1f3bd44b65c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invertibleAlgebraCoeNat (n : ℕ) [inv : Invertible (n : R)] : Invertible (n : A) :=
  haveI : Invertible (algebraMap ℕ R n) := inv
  Invertible.algebraTower ℕ R A n
#align is_scalar_tower.invertible_algebra_coe_nat IsScalarTower.invertibleAlgebraCoeNat

end Semiring

section CommSemiring

variable [CommSemiring R] [CommSemiring A] [CommSemiring B]

variable [Algebra R A] [Algebra A B] [Algebra R B] [IsScalarTower R A B]

end CommSemiring

end IsScalarTower

section AlgebraMapCoeffs

variable {R} {ι M : Type*} [CommSemiring R] [Semiring A] [AddCommMonoid M]

variable [Algebra R A] [Module A M] [Module R M] [IsScalarTower R A M]

variable (b : Basis ι R M) (h : Function.Bijective (algebraMap R A))

/-- If `R` and `A` have a bijective `algebraMap R A` and act identically on `M`,
then a basis for `M` as `R`-module is also a basis for `M` as `R'`-module. -/
@[simps! repr_apply_support_val repr_apply_toFun]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2402c90b7efb9ebcbf607eba67187fc1ac039d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
