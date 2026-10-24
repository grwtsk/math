# corepresentableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4a93cb85011c9d1d1de8bf527a1391e81a3526fd05368613fe56e987d5dc92c",
  "kind": "def",
  "lexical_name": "corepresentableBy",
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
  "slug": "corepresentableby--3c291546e9e2b4dc8773a46c",
  "source": {
    "blob": "ef9bce497b5c63d82235f2ef55a1ca6c90f2dca3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 437,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c291546e9e2b4dc8773a46c0ef3de19c2e1a394a64e30a86d54fa0d8d4908e0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4a93cb85011c9d1d1de8bf527a1391e81a3526fd05368613fe56e987d5dc92c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def corepresentableBy :
  (W.isLocal.ι ⋙ coyoneda.obj (op Z)).CorepresentableBy
    ⟨_, isLocal_reflectionObj Z hW⟩ where
  homEquiv {A} :=
    (ObjectProperty.fullyFaithfulι _).homEquiv.trans
      (Equiv.ofBijective _ (isLocal_isLocal_reflection W Z κ _ A.2))

variable (W κ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef9bce497b5c63d82235f2ef55a1ca6c90f2dca3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
