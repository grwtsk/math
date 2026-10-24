# MonCat.forget_reflects_isos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef8d4a72c9560a180507148eba8ef60a7684f213101a3dc652fee57cf1226143",
  "kind": "instance",
  "lexical_name": "MonCat.forget_reflects_isos",
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
  "slug": "moncat-forget-reflects-isos--e5bb5e8a6e6dc21da1b39732",
  "source": {
    "blob": "9eb83c3206ded33763cced66ccc0b969fe22b787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 518,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant033458924e4e28e9f81403a0fa0ff6cc1da8cb15d0ad74e2a89cf5e66ff64015.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5bb5e8a6e6dc21da1b397324e2c6bdf28d7f5397bd433c16f666f27d5db1113",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant033458924e4e28e9f81403a0fa0ff6cc1da8cb15d0ad74e2a89cf5e66ff64015.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef8d4a72c9560a180507148eba8ef60a7684f213101a3dc652fee57cf1226143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance MonCat.forget_reflects_isos : (forget MonCat.{u}).ReflectsIsomorphisms where
  reflects {X Y} f _ := by
    let i := asIso ((forget MonCat).map f)
    let e : X ≃* Y := { f.hom, i.toEquiv with }
    exact e.toMonCatIso.isIso_hom

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant033458924e4e28e9f81403a0fa0ff6cc1da8cb15d0ad74e2a89cf5e66ff64015.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant033458924e4e28e9f81403a0fa0ff6cc1da8cb15d0ad74e2a89cf5e66ff64015.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eb83c3206ded33763cced66ccc0b969fe22b787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
