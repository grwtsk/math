# isoClosure_respectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:341900b7a893bf6afb3ac5f79d0c86ba48f5ef95e2fab1436ac2f0998144abb9",
  "kind": "instance",
  "lexical_name": "isoClosure_respectsIso",
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
  "slug": "isoclosure-respectsiso--a977c7863f0308246f3c7341",
  "source": {
    "blob": "5f4be29deb46f6148755da80c3f025fdf506fc84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 505,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant942cc1e37ef9bc2aa66aad3a3d284928240308333ae406d5098f1021ebf1bd32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a977c7863f0308246f3c73419995bd118b6dc4c7803fb0235793cc1243d26e6e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant942cc1e37ef9bc2aa66aad3a3d284928240308333ae406d5098f1021ebf1bd32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:341900b7a893bf6afb3ac5f79d0c86ba48f5ef95e2fab1436ac2f0998144abb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isoClosure_respectsIso (P : MorphismProperty C) :
    RespectsIso P.isoClosure where
  precomp := fun e (he : IsIso e) f ⟨_, _, f', hf', ⟨iso⟩⟩ => ⟨_, _, f', hf',
      ⟨Arrow.isoMk (asIso iso.hom.left ≪≫ asIso (inv e)) (asIso iso.hom.right) (by simp)⟩⟩
  postcomp := fun e (he : IsIso e) f ⟨_, _, f', hf', ⟨iso⟩⟩ => ⟨_, _, f', hf',
      ⟨Arrow.isoMk (asIso iso.hom.left) (asIso iso.hom.right ≪≫ asIso e) (by simp)⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant942cc1e37ef9bc2aa66aad3a3d284928240308333ae406d5098f1021ebf1bd32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant942cc1e37ef9bc2aa66aad3a3d284928240308333ae406d5098f1021ebf1bd32.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4be29deb46f6148755da80c3f025fdf506fc84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
