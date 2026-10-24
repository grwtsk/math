# differentIdeal_eq_differentIdeal_mul_differentIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dc9ffe0-71d3-2060-f11b-dadab4aac066",
  "kind": "theorem",
  "lexical_name": "differentIdeal_eq_differentIdeal_mul_differentIdeal",
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
  "slug": "differentideal-eq-differentideal-mul-differentideal--0083fb9be5519082efd5f84c",
  "source": {
    "blob": "80aa2fd72bb8b22bf434ee45037d3305580fea98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 579,
    "path": "GRWTSK/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0083fb9be5519082efd5f84c6ab033b7871be4223ce9336bfa48e30d3d927f77",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dc9ffe0-71d3-2060-f11b-dadab4aac066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentIdeal_eq_differentIdeal_mul_differentIdeal (C : Type*) [IsDomain B] [CommRing C]
    [Algebra B C] [Algebra A C] [IsDedekindDomain C]
    [Module.Finite A B] [Module.Finite A C] [Module.Finite B C]
    [IsTorsionFree A C] [IsTorsionFree B C] [IsScalarTower A B C]
    [Algebra.IsSeparable (FractionRing A) (FractionRing C)] :
    differentIdeal A C = differentIdeal B C * (differentIdeal A B).map (algebraMap B C) := by
  have : Algebra.IsSeparable (FractionRing B) (FractionRing C) :=
    isSeparable_tower_top_of_isSeparable (FractionRing A) _ _
  have : Algebra.IsSeparable (FractionRing A) (FractionRing B) :=
    isSeparable_tower_bot_of_isSeparable _ _ (FractionRing C)
  have : FiniteDimensional (FractionRing A) (FractionRing B) := .of_isLocalization A B A⁰
  have : FiniteDimensional (FractionRing A) (FractionRing C) := .of_isLocalization A C A⁰
  have : FiniteDimensional (FractionRing B) (FractionRing C) := .of_isLocalization B C B⁰
  rw [← coeIdeal_inj (K := FractionRing C), coeIdeal_mul, coeIdeal_differentIdeal A
    (FractionRing A), coeIdeal_differentIdeal B (FractionRing B)]
  rw [← extendedHom_coeIdeal_eq_map (K := FractionRing B), coeIdeal_differentIdeal A
    (FractionRing A), map_inv₀, ← mul_inv, ← inv_eq_iff_eq_inv, inv_inv]
  exact dual_eq_dual_mul_dual A (FractionRing A) (FractionRing B) B C (FractionRing C)

variable {B L}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80aa2fd72bb8b22bf434ee45037d3305580fea98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
