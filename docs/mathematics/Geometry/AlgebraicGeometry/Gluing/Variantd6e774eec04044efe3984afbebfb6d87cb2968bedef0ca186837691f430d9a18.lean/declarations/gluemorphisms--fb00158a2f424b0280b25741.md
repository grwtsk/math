# glueMorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85292c78d0a3c1891b18bcf430ea91b537a6c882406344d730c492e5b2db6004",
  "kind": "def",
  "lexical_name": "glueMorphisms",
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
  "slug": "gluemorphisms--fb00158a2f424b0280b25741",
  "source": {
    "blob": "516ec4697b72be3ad354c27f0dcb974ab82c1416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 463,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb00158a2f424b0280b25741b8e06e9df36686b5d1ca78e6404ec408fafe8dfc",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85292c78d0a3c1891b18bcf430ea91b537a6c882406344d730c492e5b2db6004`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def glueMorphisms {Y : Scheme} (f : ∀ x, 𝒰.obj x ⟶ Y)
    (hf : ∀ x y, (pullback.fst : pullback (𝒰.map x) (𝒰.map y) ⟶ _) ≫ f x = pullback.snd ≫ f y) :
    X ⟶ Y := by
  refine' inv 𝒰.fromGlued ≫ _
  fapply Multicoequalizer.desc
  exact f
  rintro ⟨i, j⟩
  change pullback.fst ≫ f i = (_ ≫ _) ≫ f j
  erw [pullbackSymmetry_hom_comp_fst]
  exact hf i j
#align algebraic_geometry.Scheme.open_cover.glue_morphisms AlgebraicGeometry.Scheme.OpenCover.glueMorphisms

@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `516ec4697b72be3ad354c27f0dcb974ab82c1416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
