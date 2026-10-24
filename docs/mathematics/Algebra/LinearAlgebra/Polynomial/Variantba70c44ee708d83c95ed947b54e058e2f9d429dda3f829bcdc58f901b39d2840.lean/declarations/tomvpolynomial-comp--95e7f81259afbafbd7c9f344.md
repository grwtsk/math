# toMvPolynomial_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a8caf6d-758d-13f5-62d8-deaf20517130",
  "kind": "lemma",
  "lexical_name": "toMvPolynomial_comp",
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
  "slug": "tomvpolynomial-comp--95e7f81259afbafbd7c9f344",
  "source": {
    "blob": "76a447cf469c5e7d910e521b03394a20268c9d91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 214,
    "path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95e7f81259afbafbd7c9f344105e119e3bfaff8a8fe29e630e9341d2ec5b1d25",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a8caf6d-758d-13f5-62d8-deaf20517130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toMvPolynomial_comp (g : M₂ →ₗ[R] M₃) (f : M₁ →ₗ[R] M₂) (i : ι₃) :
    (g ∘ₗ f).toMvPolynomial b₁ b₃ i =
      bind₁ (f.toMvPolynomial b₁ b₂) (g.toMvPolynomial b₂ b₃ i) := by
  simp only [toMvPolynomial, toMatrix_comp b₁ b₂ b₃, Matrix.toMvPolynomial_mul]
  rfl

end LinearMap

variable {R L M n ι ι' ιM : Type*}
variable [CommRing R] [AddCommGroup L] [Module R L] [AddCommGroup M] [Module R M]
variable (φ : L →ₗ[R] Module.End R M)
variable [Fintype ι] [Fintype ι'] [Fintype ιM] [DecidableEq ι] [DecidableEq ι']

namespace LinearMap

section aux

variable [DecidableEq ιM] (b : Basis ι R L) (bₘ : Basis ιM R M)

open Matrix

/-- (Implementation detail, see `LinearMap.polyCharpoly`.)

Let `L` and `M` be finite free modules over `R`,
and let `φ : L →ₗ[R] Module.End R M` be a linear map.
Let `b` be a basis of `L` and `bₘ` a basis of `M`.
Then `LinearMap.polyCharpolyAux φ b bₘ` is the polynomial that evaluates on elements `x` of `L`
to the characteristic polynomial of `φ x` acting on `M`.

This definition does not depend on the choice of `bₘ`
(see `LinearMap.polyCharpolyAux_basisIndep`). -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76a447cf469c5e7d910e521b03394a20268c9d91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
