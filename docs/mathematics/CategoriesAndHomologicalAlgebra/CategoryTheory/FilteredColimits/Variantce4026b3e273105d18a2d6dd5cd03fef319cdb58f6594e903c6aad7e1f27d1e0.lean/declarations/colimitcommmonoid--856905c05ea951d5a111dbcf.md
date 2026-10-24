# colimitCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f9ec9530a10ea0db7f4c770e26db4426cd578f8ea696823dbbec5a0edbb3fa8",
  "kind": "instance",
  "lexical_name": "colimitCommMonoid",
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
  "slug": "colimitcommmonoid--856905c05ea951d5a111dbcf",
  "source": {
    "blob": "63c6430bf75093a50d373e196580baa234842f31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 314,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantce4026b3e273105d18a2d6dd5cd03fef319cdb58f6594e903c6aad7e1f27d1e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:856905c05ea951d5a111dbcf3f6b28eaafc1a3d28c8aaa3818e17e801992767f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantce4026b3e273105d18a2d6dd5cd03fef319cdb58f6594e903c6aad7e1f27d1e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f9ec9530a10ea0db7f4c770e26db4426cd578f8ea696823dbbec5a0edbb3fa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance colimitCommMonoid : CommMonoid.{max v u} (M.{v, u} F) :=
  { (M.{v, u} F) with
    mul_comm := fun x y => by
      refine Quot.induction_on₂ x y ?_
      clear x y
      intro x y
      let k := max' x.1 y.1
      let f := IsFiltered.leftToMax x.1 y.1
      let g := IsFiltered.rightToMax x.1 y.1
      rw [colimit_mul_mk_eq.{v, u} (F ⋙ forget₂ CommMonCat MonCat) x y k f g,
        colimit_mul_mk_eq.{v, u} (F ⋙ forget₂ CommMonCat MonCat) y x k g f]
      dsimp
      rw [mul_comm] }

/-- The bundled commutative monoid giving the filtered colimit of a diagram. -/
@[to_additive "The bundled additive commutative monoid giving the filtered colimit of a diagram."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantce4026b3e273105d18a2d6dd5cd03fef319cdb58f6594e903c6aad7e1f27d1e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantce4026b3e273105d18a2d6dd5cd03fef319cdb58f6594e903c6aad7e1f27d1e0.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63c6430bf75093a50d373e196580baa234842f31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
