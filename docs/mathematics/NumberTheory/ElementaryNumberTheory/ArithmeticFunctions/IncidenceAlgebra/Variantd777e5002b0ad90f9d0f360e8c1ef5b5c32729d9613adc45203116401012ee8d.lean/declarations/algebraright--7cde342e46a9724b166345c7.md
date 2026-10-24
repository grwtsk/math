# algebraRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:309150bc485cc689c19b920968b5cfdd2408b8b7eb45a69cccf96c451702e90b",
  "kind": "instance",
  "lexical_name": "algebraRight",
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
  "slug": "algebraright--7cde342e46a9724b166345c7",
  "source": {
    "blob": "42479a7ca982e93ff74a45317b33e66766138651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 298,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cde342e46a9724b166345c79de4ae87d6baccaeac2e977a17eccc0a6f0bc069",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:309150bc485cc689c19b920968b5cfdd2408b8b7eb45a69cccf96c451702e90b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance algebraRight [PartialOrder α] [LocallyFiniteOrder α] [DecidableEq α] [CommSemiring 𝕜]
    [CommSemiring 𝕝] [Algebra 𝕜 𝕝] : Algebra 𝕜 (IncidenceAlgebra 𝕝 α) where
  algebraMap :=
  { toFun c := algebraMap 𝕜 𝕝 c • (1 : IncidenceAlgebra 𝕝 α)
    map_one' := by
      ext; simp only [mul_boole, one_apply, smul_eq_mul, constSMul_apply, map_one]
    map_mul' c d := by
        ext a b
        obtain rfl | h := eq_or_ne a b
        · simp only [one_apply, smul_eq_mul, mul_apply, constSMul_apply, map_mul,
            eq_comm, Icc_self]
          simp
        · simp only [one_apply, mul_one, smul_eq_mul, mul_apply, zero_mul,
            constSMul_apply, ← ite_and, ite_mul, mul_ite, map_mul, mul_zero, ite_eq_right h]
          refine (sum_eq_zero fun x _ ↦ ?_).symm
          exact ite_eq_right fun hx ↦ h <| hx.2.trans hx.1
    map_zero' := by rw [map_zero, zero_smul]
    map_add' c d := by rw [map_add, add_smul] }
  commutes' c f := by classical ext a b hab; simp [ite_eq_left hab, constSMul_apply, mul_comm]
  smul_def' c f := by
    classical ext a b hab; simp [ite_eq_left hab, constSMul_apply, Algebra.smul_def]

/-! ### The Lambda function -/

section Lambda
variable (𝕜) [Zero 𝕜] [One 𝕜] [Preorder α] [DecidableRel (α := α) (· ⩿ ·)]

/-- The lambda function of the incidence algebra is the function that assigns `1` to every nonempty
interval of cardinality one or two. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42479a7ca982e93ff74a45317b33e66766138651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
