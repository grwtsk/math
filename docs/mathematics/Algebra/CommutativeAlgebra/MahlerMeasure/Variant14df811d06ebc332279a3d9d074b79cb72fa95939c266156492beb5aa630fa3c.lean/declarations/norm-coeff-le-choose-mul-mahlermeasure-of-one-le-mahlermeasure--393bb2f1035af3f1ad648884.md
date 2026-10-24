# norm_coeff_le_choose_mul_mahlerMeasure_of_one_le_mahlerMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c44b876a-3126-eb4a-c64c-cd8a2cca49d2",
  "kind": "theorem",
  "lexical_name": "norm_coeff_le_choose_mul_mahlerMeasure_of_one_le_mahlerMeasure",
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
  "slug": "norm-coeff-le-choose-mul-mahlermeasure-of-one-le-mahlermeasure--393bb2f1035af3f1ad648884",
  "source": {
    "blob": "cf3d24a9c2c1c78fb8102b303c3c5f39dab3aacc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 437,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:393bb2f1035af3f1ad648884e3e9ed4578912aff2fb3aef171330a44ef2d18c3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c44b876a-3126-eb4a-c64c-cd8a2cca49d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_coeff_le_choose_mul_mahlerMeasure_of_one_le_mahlerMeasure (n : ℕ) (g h : ℂ[X])
    (hh : 1 ≤ h.mahlerMeasure) :
    ‖g.coeff n‖ ≤ g.natDegree.choose n * (g * h).mahlerMeasure :=
  (g.norm_coeff_le_choose_mul_mahlerMeasure n).trans <| by
    gcongr
    rw [mahlerMeasure_mul]
    exact le_mul_of_one_le_right g.mahlerMeasure_nonneg hh

end Polynomial

section generic

/-!
### Mahler Measure on Other Rings

While the Mahler measure is an inherently Complex concept, we often want to work with it for
polynomials with coefficients in subrings of `ℂ`. To do so, we introduce `mapMahlerMeasure`. This
takes a `RingHom A ℂ` which takes the polynomial from `A[X]` to `ℂ[X]`.

Some lemmas require the `RingHom` to also preserve the norm on the base ring, e.g.,
`leadingCoeff_le_mapMahlerMeasure`. Those will come below.
-/

namespace Polynomial

variable {A : Type*} [Semiring A] (p : A[X]) (v : A →+* ℂ)

/-- The Mahler measure for polynomials on rings other than `ℂ`. Most theorems
will require `A` to be a `NormedRing` and `v` to be an isometry. See, e.g.,
`mapMahlerMeasure_const` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf3d24a9c2c1c78fb8102b303c3c5f39dab3aacc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
