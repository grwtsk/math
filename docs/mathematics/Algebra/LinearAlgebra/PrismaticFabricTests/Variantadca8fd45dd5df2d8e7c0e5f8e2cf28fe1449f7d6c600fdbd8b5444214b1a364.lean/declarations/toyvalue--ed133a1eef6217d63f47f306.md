# toyValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a18422aeeae2b15f811296846c7a8db2c249e76d662d3a169fbb9c6482f4ea3e",
  "kind": "def",
  "lexical_name": "toyValue",
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
  "slug": "toyvalue--ed133a1eef6217d63f47f306",
  "source": {
    "blob": "becfab12e769edb7c0447f971caf66ca92696195",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrismaticFabricTests/Variantadca8fd45dd5df2d8e7c0e5f8e2cf28fe1449f7d6c600fdbd8b5444214b1a364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed133a1eef6217d63f47f306a8c321593d04bc42e07de667093d336cb05fa100",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrismaticFabricTests/Variantadca8fd45dd5df2d8e7c0e5f8e2cf28fe1449f7d6c600fdbd8b5444214b1a364.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a18422aeeae2b15f811296846c7a8db2c249e76d662d3a169fbb9c6482f4ea3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toyValue : ToyAlgᵒᵖ ⥤ Type :=
  (Functor.const ToyAlgᵒᵖ).obj Bool

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrismaticFabricTests/Variantadca8fd45dd5df2d8e7c0e5f8e2cf28fe1449f7d6c600fdbd8b5444214b1a364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrismaticFabricTests/Variantadca8fd45dd5df2d8e7c0e5f8e2cf28fe1449f7d6c600fdbd8b5444214b1a364.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `becfab12e769edb7c0447f971caf66ca92696195` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
