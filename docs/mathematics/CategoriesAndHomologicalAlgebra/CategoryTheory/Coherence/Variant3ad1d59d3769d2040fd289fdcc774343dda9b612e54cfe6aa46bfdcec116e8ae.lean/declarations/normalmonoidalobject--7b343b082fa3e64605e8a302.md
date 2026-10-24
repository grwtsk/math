# NormalMonoidalObject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e091713a15471a95c2a18a0ad1745c58f0b797e578f3a1ff154f039c9a933ca9",
  "kind": "inductive",
  "lexical_name": "NormalMonoidalObject",
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
  "slug": "normalmonoidalobject--7b343b082fa3e64605e8a302",
  "source": {
    "blob": "0e81f48665a804e4f727be265fa7053e245286a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 65,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b343b082fa3e64605e8a302976443de2d31e02f0054f01c48f6645641d7dfc7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e091713a15471a95c2a18a0ad1745c58f0b797e578f3a1ff154f039c9a933ca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive NormalMonoidalObject : Type u
  | Unit : NormalMonoidalObject
  | tensor : NormalMonoidalObject → C → NormalMonoidalObject
#align category_theory.free_monoidal_category.normal_monoidal_object CategoryTheory.FreeMonoidalCategory.NormalMonoidalObject

end

local notation "F" => FreeMonoidalCategory

local notation "N" => Discrete ∘ NormalMonoidalObject

local infixr:10 " ⟶ᵐ " => Hom

-- porting note: this was automatic in mathlib 3
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e81f48665a804e4f727be265fa7053e245286a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
