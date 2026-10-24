# derivationToSquareZeroOfLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66cd2cd74e809ade3111805ab5947468e9baa5884d6a4711990eadf2e62689b3",
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
  "slug": "derivationtosquarezerooflift--209efec3720f4d8c4995b397",
  "source": {
    "blob": "e163ab58bb8f3344af03b1cbf12520410f212159",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 50,
    "path": "GRWTSK/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:209efec3720f4d8c4995b397e8791d42cfdd1bfb6eca252dae9514cd9f0ae853",
  "verification": {
    "reference": "docs/verification/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66cd2cd74e809ade3111805ab5947468e9baa5884d6a4711990eadf2e62689b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def derivationToSquareZeroOfLift (f : A →ₐ[R] B)
    (e : (Ideal.Quotient.mkₐ R I).comp f = IsScalarTower.toAlgHom R A (B ⧸ I)) :
    Derivation R A I := by
  refine'
    { diffToIdealOfQuotientCompEq I f (IsScalarTower.toAlgHom R A B) _ with
      map_one_eq_zero' := _
      leibniz' := _ }
  · rw [e]; ext; rfl
  · ext; change f 1 - algebraMap A B 1 = 0; rw [map_one, map_one, sub_self]
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
#align derivation_to_square_zero_of_lift derivationToSquareZeroOfLift

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e163ab58bb8f3344af03b1cbf12520410f212159` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
