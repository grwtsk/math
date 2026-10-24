# ImageMap.map_uniq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df3247cf-f641-7fd7-1dc5-3ed62020231a",
  "kind": "theorem",
  "lexical_name": "ImageMap.map_uniq",
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
  "slug": "imagemap-map-uniq--4e5b2a4ce6273942faaa7f39",
  "source": {
    "blob": "c3f7dfc8f13b50184e3f36754f84e94345654ce6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 783,
    "line": 777,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant41f955ed289bb3a0e64465324c5c068a74b4baab1818f2b55204ca28e803b71b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e5b2a4ce6273942faaa7f391f7603324c76edd959bf9711ee3cef7360988fca",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant41f955ed289bb3a0e64465324c5c068a74b4baab1818f2b55204ca28e803b71b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df3247cf-f641-7fd7-1dc5-3ed62020231a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 777–783.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ImageMap.map_uniq {f g : Arrow C} [HasImage f.hom] [HasImage g.hom]
    {sq : f ⟶ g} (F G : ImageMap sq) : F.map = G.map := by
  apply ImageMap.map_uniq_aux _ F.map_ι _ G.map_ι

@[deprecated (since := "2026-04-08")]
alias ImageMap.mk.injEq' := ImageMap.mk.injEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant41f955ed289bb3a0e64465324c5c068a74b4baab1818f2b55204ca28e803b71b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant41f955ed289bb3a0e64465324c5c068a74b4baab1818f2b55204ca28e803b71b.lean#L777).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f7dfc8f13b50184e3f36754f84e94345654ce6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
