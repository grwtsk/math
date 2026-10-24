# pseudofunctorToPithCompInclusionStrongIsoHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27018a1cf090fa4363e9ea1b5739d1d4e785b30dc61598618b6ee3606a9a9512",
  "kind": "def",
  "lexical_name": "pseudofunctorToPithCompInclusionStrongIsoHom",
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
  "slug": "pseudofunctortopithcompinclusionstrongisohom--05968cd447990b09a54409c0",
  "source": {
    "blob": "9f48c50aeda4e3d4445dac4315ffb71757378947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyGroupoid/Variant883da5b7db048250e2b3515723f280d761781cb4f45cf0f6bb7448f652c2e89a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05968cd447990b09a54409c0a1a90c4422b48b784543cdfe7b87263d432089ae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyGroupoid/Variant883da5b7db048250e2b3515723f280d761781cb4f45cf0f6bb7448f652c2e89a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27018a1cf090fa4363e9ea1b5739d1d4e785b30dc61598618b6ee3606a9a9512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pseudofunctorToPithCompInclusionStrongIsoHom :
    ((pseudofunctorToPith F).comp (inclusion B)).StrongTrans F where
  app b' := 𝟙 _
  naturality f := (ρ_ _) ≪≫ (λ_ _).symm

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The inv direction of the (strong) natural isomorphism of pseudofunctors
between `(pseudofunctorToPith F).comp (inclusion B)` and `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyGroupoid/Variant883da5b7db048250e2b3515723f280d761781cb4f45cf0f6bb7448f652c2e89a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyGroupoid/Variant883da5b7db048250e2b3515723f280d761781cb4f45cf0f6bb7448f652c2e89a.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f48c50aeda4e3d4445dac4315ffb71757378947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
