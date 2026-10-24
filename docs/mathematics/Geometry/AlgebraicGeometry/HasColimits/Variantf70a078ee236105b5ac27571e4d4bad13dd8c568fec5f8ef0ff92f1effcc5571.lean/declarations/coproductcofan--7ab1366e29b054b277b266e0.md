# coproductCofan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7cd3be827b97e9a2ab1f830813dc41ee7f4e0e5a690bbf66d020f6f3a87b3a0",
  "kind": "def",
  "lexical_name": "coproductCofan",
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
  "slug": "coproductcofan--7ab1366e29b054b277b266e0",
  "source": {
    "blob": "5d1d31b8ff076c8c338694de7c1ab588cd37de0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 97,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ab1366e29b054b277b266e03d337ce6ea56db6c4c2a2c98da8e766e91a0903c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7cd3be827b97e9a2ab1f830813dc41ee7f4e0e5a690bbf66d020f6f3a87b3a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coproductCofan : Cocone F where
  pt := coproduct F
  ι :=
    { app := fun j => ⟨colimit.ι (C := SheafedSpace.{u+1, u, u} CommRingCatMax.{u, u})
        (F ⋙ forgetToSheafedSpace) j, inferInstance⟩
      naturality := fun ⟨j⟩ ⟨j'⟩ ⟨⟨(f : j = j')⟩⟩ => by subst f; aesop }
#align algebraic_geometry.LocallyRingedSpace.coproduct_cofan AlgebraicGeometry.LocallyRingedSpace.coproductCofan

/-- The explicit coproduct cofan constructed in `coproduct_cofan` is indeed a colimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d1d31b8ff076c8c338694de7c1ab588cd37de0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
