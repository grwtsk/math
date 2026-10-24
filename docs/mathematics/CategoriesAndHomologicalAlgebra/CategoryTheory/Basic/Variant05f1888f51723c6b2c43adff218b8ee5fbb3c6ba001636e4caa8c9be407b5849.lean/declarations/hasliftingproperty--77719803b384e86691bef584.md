# HasLiftingProperty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb3ee471566715164dc9314185684643bdc86a79ec2e1e44717ea2b02612d0fb",
  "kind": "class",
  "lexical_name": "HasLiftingProperty",
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
  "slug": "hasliftingproperty--77719803b384e86691bef584",
  "source": {
    "blob": "974905ba98f81f323304eed08d48f84525a59533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant05f1888f51723c6b2c43adff218b8ee5fbb3c6ba001636e4caa8c9be407b5849.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77719803b384e86691bef584c87e8ae9d58cc416a358fa298754e1d2c3448bcb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant05f1888f51723c6b2c43adff218b8ee5fbb3c6ba001636e4caa8c9be407b5849.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb3ee471566715164dc9314185684643bdc86a79ec2e1e44717ea2b02612d0fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasLiftingProperty : Prop where
  /-- Unique field expressing that any commutative square built from `f` and `g` has a lift -/
  sq_hasLift : ∀ {f : A ⟶ X} {g : B ⟶ Y} (sq : CommSq f i p g), sq.HasLift

attribute [to_dual self (reorder := A Y, B X, i p, sq_hasLift (f g))] HasLiftingProperty.mk

@[to_dual self]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant05f1888f51723c6b2c43adff218b8ee5fbb3c6ba001636e4caa8c9be407b5849.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant05f1888f51723c6b2c43adff218b8ee5fbb3c6ba001636e4caa8c9be407b5849.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `974905ba98f81f323304eed08d48f84525a59533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
