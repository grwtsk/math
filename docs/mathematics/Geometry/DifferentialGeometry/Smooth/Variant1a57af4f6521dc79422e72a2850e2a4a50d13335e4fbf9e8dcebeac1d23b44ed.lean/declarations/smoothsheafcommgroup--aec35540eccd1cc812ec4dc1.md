# smoothSheafCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73d5c8416dbbac2dd29725342ef48af7963d36fa84f550ed893d8bb9a8e3d4fb",
  "kind": "def",
  "lexical_name": "smoothSheafCommGroup",
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
  "slug": "smoothsheafcommgroup--aec35540eccd1cc812ec4dc1",
  "source": {
    "blob": "f7688d9a32c03ec419d80638acb14ce051589252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 231,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aec35540eccd1cc812ec4dc105eb3fb85d9293b61cf669d8a6ee4cbc2b68b4e4",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73d5c8416dbbac2dd29725342ef48af7963d36fa84f550ed893d8bb9a8e3d4fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def smoothSheafCommGroup : TopCat.Sheaf CommGrpCat.{u} ↧M :=
  { obj := smoothPresheafCommGroup IM I M A
    property := by
      rw [CategoryTheory.Presheaf.isSheaf_iff_isSheaf_forget _ _
        (CategoryTheory.forget CommGrpCat)]
      exact (smoothSheaf IM I M A).property }

open scoped Manifold in
/-- For a manifold `M` and a smooth homomorphism `φ` between abelian Lie groups `A`, `A'`, the
'left-composition-by-`φ`' morphism of sheaves from `smoothSheafCommGroup IM I M A` to
`smoothSheafCommGroup IM I' M A'`. -/
@[to_additive /-- For a manifold `M` and a smooth homomorphism `φ` between abelian additive Lie
groups `A`, `A'`, the 'left-composition-by-`φ`' morphism of sheaves from
`smoothSheafAddCommGroup IM I M A` to `smoothSheafAddCommGroup IM I' M A'`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7688d9a32c03ec419d80638acb14ce051589252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
