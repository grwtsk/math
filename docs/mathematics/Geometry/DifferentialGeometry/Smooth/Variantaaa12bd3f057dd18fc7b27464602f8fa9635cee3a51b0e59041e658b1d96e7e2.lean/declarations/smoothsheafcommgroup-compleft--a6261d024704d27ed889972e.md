# smoothSheafCommGroup.compLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb2a53d046ec7509d42e4f57bc49a611c6d234011203a1d9181edfac8bbdefe9",
  "kind": "def",
  "lexical_name": "smoothSheafCommGroup.compLeft",
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
  "slug": "smoothsheafcommgroup-compleft--a6261d024704d27ed889972e",
  "source": {
    "blob": "476f47d527c0d340cae23555ab99e7d80b527abe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 228,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6261d024704d27ed889972ec156b01e679f6d3d6266d35b4e0db382e9ade642",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb2a53d046ec7509d42e4f57bc49a611c6d234011203a1d9181edfac8bbdefe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def smoothSheafCommGroup.compLeft (φ : A →* A') (hφ : ContMDiff I I' ∞ φ) :
    smoothSheafCommGroup IM I M A ⟶ smoothSheafCommGroup IM I' M A' :=
  CategoryTheory.Sheaf.Hom.mk <|
  { app := fun _ ↦ CommGrp.ofHom <| ContMDiffMap.compLeftMonoidHom _ _ φ hφ
    naturality := fun _ _ _ ↦ rfl }

end CommLieGroup

section ContMDiffRing
variable [Ring R] [ContMDiffRing I ∞ R]

open Manifold in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476f47d527c0d340cae23555ab99e7d80b527abe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
