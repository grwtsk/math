# equiv_of_Z_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3559302f-551e-a55f-6504-e6aa8ec63519",
  "kind": "lemma",
  "lexical_name": "equiv_of_Z_eq_zero",
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
  "slug": "equiv-of-z-eq-zero--e2555c676c354e764c99e6f7",
  "source": {
    "blob": "0a9f7c020c3bfaf5727e352af190868157558fc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 454,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant22d69d21132b40795886aa32da8cf3110f823c04da9fd36df190595dce38397f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2555c676c354e764c99e6f79ea630cdbb502c2c0247e5d4b2986a3356d51ce2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant22d69d21132b40795886aa32da8cf3110f823c04da9fd36df190595dce38397f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3559302f-551e-a55f-6504-e6aa8ec63519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equiv_of_Z_eq_zero {P Q : Fin 3 → F} (hP : W.Nonsingular P) (hQ : W.Nonsingular Q)
    (hPz : P z = 0) (hQz : Q z = 0) : P ≈ Q := by
  have hPx : IsUnit <| P x := isUnit_X_of_Z_eq_zero hP hPz
  have hPy : IsUnit <| P y := isUnit_Y_of_Z_eq_zero hP hPz
  have hQx : IsUnit <| Q x := isUnit_X_of_Z_eq_zero hQ hQz
  have hQy : IsUnit <| Q y := isUnit_Y_of_Z_eq_zero hQ hQz
  simp only [nonsingular_of_Z_eq_zero, equation_of_Z_eq_zero, hPz, hQz] at hP hQ
  use (hPy.unit / hPx.unit) * (hQx.unit / hQy.unit)
  simp only [Units.smul_def, smul_fin3, Units.val_mul, Units.val_div_eq_div_val, IsUnit.unit_spec,
    mul_pow, div_pow, hQz, mul_zero]
  conv_rhs => rw [← fin3_def P, hPz]
  congr! 2
  · rw [hP.left, pow_succ, (hPx.pow 2).mul_div_cancel_left, hQ.left, pow_succ _ 2,
      (hQx.pow 2).div_mul_cancel_left, hQx.inv_mul_cancel_right]
  · rw [← hP.left, pow_succ, (hPy.pow 2).mul_div_cancel_left, ← hQ.left, pow_succ _ 2,
      (hQy.pow 2).div_mul_cancel_left, hQy.inv_mul_cancel_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant22d69d21132b40795886aa32da8cf3110f823c04da9fd36df190595dce38397f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant22d69d21132b40795886aa32da8cf3110f823c04da9fd36df190595dce38397f.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a9f7c020c3bfaf5727e352af190868157558fc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
