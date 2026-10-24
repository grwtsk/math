# derivationToSquareZeroOfLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7479cda4bb8616578b5ee0407fa84ab16589467cae525a200dcffa5d4d6cdfe",
  "kind": "def",
  "lexical_name": "derivationToSquareZeroOfLift",
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
  "slug": "derivationtosquarezerooflift--00cb9032d7bd9cb2a0285b7e",
  "source": {
    "blob": "af3f8877bfc2490f25adf1af1e69357dd97637c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 53,
    "path": "GRWTSK/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00cb9032d7bd9cb2a0285b7e3912ec4e88c900aa36b8d881fad7d35659ecaf61",
  "verification": {
    "reference": "docs/verification/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7479cda4bb8616578b5ee0407fa84ab16589467cae525a200dcffa5d4d6cdfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def derivationToSquareZeroOfLift [IsScalarTower R A B] (hI : I ^ 2 = ⊥) (f : A →ₐ[R] B)
    (e : (Ideal.Quotient.mkₐ R I).comp f = IsScalarTower.toAlgHom R A (B ⧸ I)) :
    Derivation R A I := by
  refine
    { diffToIdealOfQuotientCompEq I f (IsScalarTower.toAlgHom R A B) ?_ with
      map_one_eq_zero' := ?_
      leibniz' := ?_ }
  · rw [e]; ext; rfl
  · ext; simp
  · intro x y
    let F := diffToIdealOfQuotientCompEq I f (IsScalarTower.toAlgHom R A B) (by rw [e]; ext; rfl)
    have : (f x - algebraMap A B x) * (f y - algebraMap A B y) = 0 := by
      rw [← Ideal.mem_bot, ← hI, pow_two]
      convert Ideal.mul_mem_mul (F x).2 (F y).2 using 1
    ext
    dsimp only [Submodule.coe_add, Submodule.coe_mk, LinearMap.coe_mk,
      diffToIdealOfQuotientCompEq_apply, Submodule.coe_smul_of_tower, IsScalarTower.coe_toAlgHom',
      LinearMap.toFun_eq_coe]
    simp only [map_mul, sub_mul, mul_sub, Algebra.smul_def] at this ⊢
    rw [sub_eq_iff_eq_add, sub_eq_iff_eq_add] at this
    simp only [LinearMap.coe_toAddHom, diffToIdealOfQuotientCompEq_apply, map_mul, this,
      IsScalarTower.coe_toAlgHom']
    ring

variable (hI : I ^ 2 = ⊥)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af3f8877bfc2490f25adf1af1e69357dd97637c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
