# discr_zeta_eq_discr_zeta_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32ee979c-3507-fb69-32a8-4e6e0240e704",
  "kind": "theorem",
  "lexical_name": "discr_zeta_eq_discr_zeta_sub_one",
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
  "slug": "discr-zeta-eq-discr-zeta-sub-one--d81e7672f9504d2b79b64f02",
  "source": {
    "blob": "345cbe97065f18528b9c2f079af9b567e211cdbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 48,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d81e7672f9504d2b79b64f02c457527ad2626c981e5f3021498aae79fa86fae0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32ee979c-3507-fb69-32a8-4e6e0240e704`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_zeta_eq_discr_zeta_sub_one (hζ : IsPrimitiveRoot ζ n) :
    discr ℚ (hζ.powerBasis ℚ).basis = discr ℚ (hζ.subOnePowerBasis ℚ).basis := by
  haveI : NumberField K := @NumberField.mk _ _ _ (IsCyclotomicExtension.finiteDimensional {n} ℚ K)
  have H₁ : (aeval (hζ.powerBasis ℚ).gen) (X - 1 : ℤ[X]) = (hζ.subOnePowerBasis ℚ).gen := by simp
  have H₂ : (aeval (hζ.subOnePowerBasis ℚ).gen) (X + 1 : ℤ[X]) = (hζ.powerBasis ℚ).gen := by simp
  refine' discr_eq_discr_of_toMatrix_coeff_isIntegral _ (fun i j => toMatrix_isIntegral H₁ _ _ _ _)
    fun i j => toMatrix_isIntegral H₂ _ _ _ _
  · exact hζ.isIntegral n.pos
  · refine' minpoly.isIntegrallyClosed_eq_field_fractions' (K := ℚ) (hζ.isIntegral n.pos)
  · exact isIntegral_sub (hζ.isIntegral n.pos) isIntegral_one
  · refine' minpoly.isIntegrallyClosed_eq_field_fractions' (K := ℚ) _
    exact isIntegral_sub (hζ.isIntegral n.pos) isIntegral_one
#align is_primitive_root.discr_zeta_eq_discr_zeta_sub_one IsPrimitiveRoot.discr_zeta_eq_discr_zeta_sub_one

end IsPrimitiveRoot

namespace IsCyclotomicExtension

variable {p : ℕ+} {k : ℕ} {K : Type u} {L : Type v} {ζ : L} [Field K] [Field L]

variable [Algebra K L]

/-- If `p` is a prime and `IsCyclotomicExtension {p ^ (k + 1)} K L`, then the discriminant of
`hζ.powerBasis K` is `(-1) ^ ((p ^ (k + 1).totient) / 2) * p ^ (p ^ k * ((p - 1) * (k + 1) - 1))`
if `Irreducible (cyclotomic (p ^ (k + 1)) K))`, and `p ^ (k + 1) ≠ 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `345cbe97065f18528b9c2f079af9b567e211cdbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
