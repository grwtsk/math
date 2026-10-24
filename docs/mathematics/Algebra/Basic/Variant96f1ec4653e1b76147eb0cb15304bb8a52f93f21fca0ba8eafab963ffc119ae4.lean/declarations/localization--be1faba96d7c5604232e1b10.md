# localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8cd978da46998e8a24d351c6f691327caf74a1c422a37804fc64b82e139559ad",
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
  "slug": "localization--be1faba96d7c5604232e1b10",
  "source": {
    "blob": "62b70d574e93968f180bdcda95c79b34eae29422",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 140,
    "path": "GRWTSK/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be1faba96d7c5604232e1b106b6a0e90f07675f8402ff3874707aaf46e3b0d37",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8cd978da46998e8a24d351c6f691327caf74a1c422a37804fc64b82e139559ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def localization (P : Extension.{w} R S) : Extension R S' where
  Ring := Localization (M.comap (algebraMap P.Ring S))
  algebra₂ := (IsLocalization.lift (M := (M.comap (algebraMap P.Ring S)))
      (g := (algebraMap S S').comp (algebraMap P.Ring S))
      (by simpa using fun x hx ↦ IsLocalization.map_units S' ⟨_, hx⟩)).toAlgebra
  isScalarTower := by
    let : Algebra (Localization (M.comap (algebraMap P.Ring S))) S' :=
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

variable {T} [CommRing T] [Algebra R T]

/-- The base change of an `R`-extension of `S` to `T` gives a `T`-extension of `T ⊗[R] S`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62b70d574e93968f180bdcda95c79b34eae29422` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
