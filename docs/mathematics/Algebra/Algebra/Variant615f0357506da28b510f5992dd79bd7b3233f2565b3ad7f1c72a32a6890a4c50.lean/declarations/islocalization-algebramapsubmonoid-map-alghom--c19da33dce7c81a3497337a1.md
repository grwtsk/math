# isLocalization_algebraMapSubmonoid_map_algHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4422ff2835d3af21879f1eff136a9d825263cc85346fa6a8fdafb597d144cd4",
  "kind": "instance",
  "lexical_name": "isLocalization_algebraMapSubmonoid_map_algHom",
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
  "slug": "islocalization-algebramapsubmonoid-map-alghom--c19da33dce7c81a3497337a1",
  "source": {
    "blob": "4c329a3fecb92f5e7952dc64c79451cc02ef4272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 107,
    "path": "GRWTSK/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c19da33dce7c81a3497337a114df900e186da24444aae702b7e5a0f63b215964",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4422ff2835d3af21879f1eff136a9d825263cc85346fa6a8fdafb597d144cd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isLocalization_algebraMapSubmonoid_map_algHom (f : A →ₐ[R] B) :
    IsLocalization ((algebraMapSubmonoid A M).map f.toRingHom) Bₚ := by
  rw [AlgHom.toRingHom_eq_coe, ← Submonoid.map_coe_toMonoidHom, AlgHom.toRingHom_toMonoidHom,
    Submonoid.map_coe_toMonoidHom, algebraMapSubmonoid_map_eq M f]
  infer_instance

/-- An algebra map `A →ₐ[R] B` induces an algebra map on localizations `Aₚ →ₐ[Rₚ] Bₚ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c329a3fecb92f5e7952dc64c79451cc02ef4272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
