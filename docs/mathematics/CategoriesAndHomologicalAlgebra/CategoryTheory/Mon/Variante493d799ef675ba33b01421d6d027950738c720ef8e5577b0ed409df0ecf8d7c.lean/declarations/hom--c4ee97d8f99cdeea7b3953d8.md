# Hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fe38598f26bebc828815c4ca919575ee6ad1ecacc0eb26aaebde17971f6be10",
  "kind": "structure",
  "lexical_name": "Hom",
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
  "slug": "hom--c4ee97d8f99cdeea7b3953d8",
  "source": {
    "blob": "b1e1e697de66beb6cfcbca1ab8cabeab7cb7e303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variante493d799ef675ba33b01421d6d027950738c720ef8e5577b0ed409df0ecf8d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4ee97d8f99cdeea7b3953d862a5f4fa229fc9669ae255db6a5ede0718991952",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variante493d799ef675ba33b01421d6d027950738c720ef8e5577b0ed409df0ecf8d7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fe38598f26bebc828815c4ca919575ee6ad1ecacc0eb26aaebde17971f6be10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Hom (M N : Mon_ C) where
  hom : M.X ⟶ N.X
  one_hom : M.one ≫ hom = N.one := by aesop_cat
  mul_hom : M.mul ≫ hom = (hom ⊗ hom) ≫ N.mul := by aesop_cat
#align Mon_.hom Mon_.Hom

attribute [reassoc (attr := simp)] Hom.one_hom Hom.mul_hom

/-- The identity morphism on a monoid object. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variante493d799ef675ba33b01421d6d027950738c720ef8e5577b0ed409df0ecf8d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variante493d799ef675ba33b01421d6d027950738c720ef8e5577b0ed409df0ecf8d7c.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1e1e697de66beb6cfcbca1ab8cabeab7cb7e303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
