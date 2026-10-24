# mono_of_stalk_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f6b250c-65f8-2de1-9dde-1c4c8f3e87c2",
  "kind": "theorem",
  "lexical_name": "mono_of_stalk_mono",
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
  "slug": "mono-of-stalk-mono--8a399fa0e5a06b68bf3bf1c0",
  "source": {
    "blob": "ccd349bd1003876841689780e0fe453c4ff911a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 538,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a399fa0e5a06b68bf3bf1c0f4460a4f9460df3870ce5f87d4728e7ee4b0e907",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f6b250c-65f8-2de1-9dde-1c4c8f3e87c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mono_of_stalk_mono {F G : Sheaf C X} (f : F ⟶ G) [∀ x, Mono <| (stalkFunctor C x).map f.1] :
    Mono f :=
  (Sheaf.Hom.mono_iff_presheaf_mono _ _ _).mpr <|
    (NatTrans.mono_iff_mono_app _).mpr fun U =>
      (ConcreteCategory.mono_iff_injective_of_preservesPullback _).mpr <|
        app_injective_of_stalkFunctor_map_injective f.1 U.unop fun _x _hx =>
          (ConcreteCategory.mono_iff_injective_of_preservesPullback
            ((stalkFunctor C _).map f.val)).mp <| inferInstance

include instCC in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccd349bd1003876841689780e0fe453c4ff911a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
