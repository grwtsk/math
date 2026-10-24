# ModuleCat.asHomLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d178f5e717bfc51bc01635c21ae96332f65b6b041384ccf52ecdf3557c7e056a",
  "kind": "def",
  "lexical_name": "ModuleCat.asHomLeft",
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
  "slug": "modulecat-ashomleft--2cbe7507f3bbd90e90bd7b30",
  "source": {
    "blob": "fdcf78003971c3261160f6f0547cf5ed869620cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 268,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cbe7507f3bbd90e90bd7b3058876ed23466ff6424be2210d7f4cff6d1dc2252",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d178f5e717bfc51bc01635c21ae96332f65b6b041384ccf52ecdf3557c7e056a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ModuleCat.asHomLeft {X₁ : ModuleCat.{v} R} [AddCommGroup X₂] [Module R X₂] :
    (X₁ →ₗ[R] X₂) → (X₁ ⟶ ModuleCat.of R X₂) :=
  id
#align Module.as_hom_left ModuleCat.asHomLeft

/-- Reinterpreting a linear map in the category of `R`-modules. -/
scoped[ModuleCat] notation "↿" f:1024 => ModuleCat.asHomLeft f

section

/-- Build an isomorphism in the category `Module R` from a `LinearEquiv` between `Module`s. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdcf78003971c3261160f6f0547cf5ed869620cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
