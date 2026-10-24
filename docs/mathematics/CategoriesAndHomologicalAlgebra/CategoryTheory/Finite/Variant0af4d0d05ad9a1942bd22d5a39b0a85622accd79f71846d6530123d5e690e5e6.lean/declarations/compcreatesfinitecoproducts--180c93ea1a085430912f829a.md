# compCreatesFiniteCoproducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8207dc4e3ac17b14285ea85c234685c485989c219d38696867c5fe760055495d",
  "kind": "instance",
  "lexical_name": "compCreatesFiniteCoproducts",
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
  "slug": "compcreatesfinitecoproducts--180c93ea1a085430912f829a",
  "source": {
    "blob": "5346116830bf7855b6898e0c3e4f1a95f700bf29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant0af4d0d05ad9a1942bd22d5a39b0a85622accd79f71846d6530123d5e690e5e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:180c93ea1a085430912f829a20cda2a2c077f4295a34014db9e4e1f982557453",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant0af4d0d05ad9a1942bd22d5a39b0a85622accd79f71846d6530123d5e690e5e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8207dc4e3ac17b14285ea85c234685c485989c219d38696867c5fe760055495d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance compCreatesFiniteCoproducts (F : C ⥤ D) (G : D ⥤ E) [CreatesFiniteCoproducts F]
    [CreatesFiniteCoproducts G] : CreatesFiniteCoproducts (F ⋙ G) where
  creates _ _ := compCreatesColimitsOfShape _ _

/-- Transfer creation of finite limits along a natural isomorphism in the functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant0af4d0d05ad9a1942bd22d5a39b0a85622accd79f71846d6530123d5e690e5e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant0af4d0d05ad9a1942bd22d5a39b0a85622accd79f71846d6530123d5e690e5e6.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5346116830bf7855b6898e0c3e4f1a95f700bf29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
