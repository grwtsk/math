# localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92b92104fc1e91bcaf71e5862af4a07b8e65e029654d440885dc819dc3b64e36",
  "kind": "def",
  "lexical_name": "localization",
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
  "slug": "localization--9f1ec72069797a8cf47263b5",
  "source": {
    "blob": "d3a317ffc4aafcc9e4204e5f16639e3e1a7b21a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 136,
    "path": "GRWTSK/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f1ec72069797a8cf47263b5d09c70065277557ccb87b0031d2075da0b1700f7",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92b92104fc1e91bcaf71e5862af4a07b8e65e029654d440885dc819dc3b64e36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def localization (P : Extension.{w} R S) : Extension R S' where
  Ring := Localization (M.comap (algebraMap P.Ring S))
  algebra₂ := (IsLocalization.lift (M := (M.comap (algebraMap P.Ring S)))
      (g := (algebraMap S S').comp (algebraMap P.Ring S))
      (by simpa using fun x hx ↦ IsLocalization.map_units S' ⟨_, hx⟩)).toAlgebra
  isScalarTower := by
    letI : Algebra (Localization (M.comap (algebraMap P.Ring S))) S' :=
      (IsLocalization.lift (M := (M.comap (algebraMap P.Ring S)))
        (g := (algebraMap S S').comp (algebraMap P.Ring S))
        (by simpa using fun x hx ↦ IsLocalization.map_units S' ⟨_, hx⟩)).toAlgebra
    apply IsScalarTower.of_algebraMap_eq'
    rw [RingHom.algebraMap_toAlgebra, IsScalarTower.algebraMap_eq R P.Ring (Localization _),
      ← RingHom.comp_assoc, IsLocalization.lift_comp, RingHom.comp_assoc,
      ← IsScalarTower.algebraMap_eq, ← IsScalarTower.algebraMap_eq]
  σ s := Localization.mk (P.σ (IsLocalization.sec M s).1) ⟨P.σ (IsLocalization.sec M s).2, by simp⟩
  algebraMap_σ s := by
    simp [RingHom.algebraMap_toAlgebra, Localization.mk_eq_mk', IsLocalization.lift_mk',
      Units.mul_inv_eq_iff_eq_mul, IsUnit.coe_liftRight, IsLocalization.sec_spec]

end Localization

variable {T} [CommRing T] [Algebra R T] [Algebra S T] [IsScalarTower R S T]

/-- The base change of an `R`-extension of `S` to `T` gives a `T`-extension of `T ⊗[R] S`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3a317ffc4aafcc9e4204e5f16639e3e1a7b21a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
