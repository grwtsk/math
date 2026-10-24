# colimitLimitToLimitColimit_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5279b8ebbf4719b86ebf79c33f47172a488751c95672cd04441356a30dc1d60a",
  "kind": "instance",
  "lexical_name": "colimitLimitToLimitColimit_isIso",
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
  "slug": "colimitlimittolimitcolimit-isiso--53a6b4852398466666245e07",
  "source": {
    "blob": "9be2b974c6b50017a2e7085113a70b196a6378ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 331,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53a6b4852398466666245e07c7c038e130d26af0f4e9cb2853eb20659a0a4dfa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5279b8ebbf4719b86ebf79c33f47172a488751c95672cd04441356a30dc1d60a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance colimitLimitToLimitColimit_isIso : IsIso (colimitLimitToLimitColimit F) :=
  (isIso_iff_bijective _).mpr
    ⟨colimitLimitToLimitColimit_injective F, colimitLimitToLimitColimit_surjective F⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9be2b974c6b50017a2e7085113a70b196a6378ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
