# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c6c4000babe7ab64d86b1cd05a277aa1c479727cd3d441d0b5be3c0e285f487",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4b089cac1e15e6c17f00f598",
  "source": {
    "blob": "6820aceb9450686c2e9744deaedb0baeb33bbb32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 178,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b089cac1e15e6c17f00f598330c64853b40d6ba93bf6edd41f6bfda74b281fd",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c6c4000babe7ab64d86b1cd05a277aa1c479727cd3d441d0b5be3c0e285f487`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsIntegral X] (x : X.carrier) :
    IsFractionRing (X.presheaf.stalk x) X.functionField :=
  let U : Opens X.carrier :=
    ⟨Set.range (X.affineCover.map x).1.base,
      PresheafedSpace.IsOpenImmersion.base_open.open_range⟩
  have hU : IsAffineOpen U := rangeIsAffineOpenOfOpenImmersion (X.affineCover.map x)
  let x : U := ⟨x, X.affineCover.Covers x⟩
  have : Nonempty U := ⟨x⟩
  let M := (hU.primeIdealOf x).asIdeal.primeCompl
  have := hU.isLocalization_stalk x
  have := functionField_isFractionRing_of_isAffineOpen X U hU
  -- Porting note: the following two lines were not needed.
  let _hA := Presheaf.algebra_section_stalk X.presheaf x
  have := functionField_isScalarTower X U x
  .isFractionRing_of_isDomain_of_isLocalization M ↑(Presheaf.stalk X.presheaf x)
    (Scheme.functionField X)

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6820aceb9450686c2e9744deaedb0baeb33bbb32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
