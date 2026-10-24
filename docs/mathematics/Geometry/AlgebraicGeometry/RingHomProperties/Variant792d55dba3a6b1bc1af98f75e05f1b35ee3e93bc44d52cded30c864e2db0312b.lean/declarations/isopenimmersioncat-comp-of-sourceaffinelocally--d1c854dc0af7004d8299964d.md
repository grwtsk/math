# isOpenImmersionCat_comp_of_sourceAffineLocally

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74728277-90b9-216b-6603-6e183e17572b",
  "kind": "theorem",
  "lexical_name": "isOpenImmersionCat_comp_of_sourceAffineLocally",
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
  "slug": "isopenimmersioncat-comp-of-sourceaffinelocally--d1c854dc0af7004d8299964d",
  "source": {
    "blob": "653ea3160ced1b0792ac93326eb237d91538f8c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 338,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1c854dc0af7004d8299964d1c7b5f76343d899d26bacdee7002fddc0bdfa453",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74728277-90b9-216b-6603-6e183e17572b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpenImmersionCat_comp_of_sourceAffineLocally (h₁ : RingHom.RespectsIso @P)
    {X Y Z : Scheme} [IsAffine X] [IsAffine Z] (f : X ⟶ Y) [IsOpenImmersion f] (g : Y ⟶ Z)
    (h₂ : sourceAffineLocally (@P) g) : P (Scheme.Γ.map (f ≫ g).op) := by
  rw [← h₁.cancel_right_isIso _
    (Scheme.Γ.map (IsOpenImmersion.isoOfRangeEq (Y.ofRestrict _) f _).hom.op),
    ← Functor.map_comp, ← op_comp]
  convert h₂ ⟨_, rangeIsAffineOpenOfOpenImmersion f⟩ using 3
  · rw [IsOpenImmersion.isoOfRangeEq_hom, IsOpenImmersion.lift_fac_assoc]
    · exact Subtype.range_coe
#align algebraic_geometry.is_open_immersion_comp_of_source_affine_locally AlgebraicGeometry.isOpenImmersionCat_comp_of_sourceAffineLocally

end AlgebraicGeometry

open AlgebraicGeometry

namespace RingHom.PropertyIsLocal

variable {P} (hP : RingHom.PropertyIsLocal @P)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653ea3160ced1b0792ac93326eb237d91538f8c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
