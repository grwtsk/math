# freeFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:250e61aa2d1adb8caf298eb1b2ce4bb3393d821a15799f9989eef54c47b2e717",
  "kind": "def",
  "lexical_name": "freeFunctor",
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
  "slug": "freefunctor--beab7d0075491a7390f63ccc",
  "source": {
    "blob": "0fd7972f084fcb5714fe6552a4e09ed90709781d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 91,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:beab7d0075491a7390f63ccc6be180e8390442eb26bed1ad472571247436a177",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:250e61aa2d1adb8caf298eb1b2ce4bb3393d821a15799f9989eef54c47b2e717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def freeFunctor : Type u ⥤ SheafOfModules.{u} R where
  obj := free
  map f := freeMap f
  map_id X := (freeHomEquiv _).injective (by ext1 i; simp)
  map_comp {I J K} f g := (freeHomEquiv _).injective (by ext1; simp [freeHomEquiv_comp_apply])

end SheafOfModules
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fd7972f084fcb5714fe6552a4e09ed90709781d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
