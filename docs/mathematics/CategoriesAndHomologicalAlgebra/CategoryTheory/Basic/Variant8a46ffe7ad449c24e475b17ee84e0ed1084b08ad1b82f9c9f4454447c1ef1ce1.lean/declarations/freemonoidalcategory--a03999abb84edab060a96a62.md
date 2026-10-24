# FreeMonoidalCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abf4cf87b59aeb30f4ed9216cc5e474d83f8d3a83e5ad14ed4d5b1847606f123",
  "kind": "inductive",
  "lexical_name": "FreeMonoidalCategory",
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
  "slug": "freemonoidalcategory--a03999abb84edab060a96a62",
  "source": {
    "blob": "dac377291f6036c4c49c5b1612ec4866f669d741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 53,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a03999abb84edab060a96a624f5b89fcc4207bb175c69bee1448e243b6c8719c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abf4cf87b59aeb30f4ed9216cc5e474d83f8d3a83e5ad14ed4d5b1847606f123`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive FreeMonoidalCategory : Type u
  | of : C → FreeMonoidalCategory
  | Unit : FreeMonoidalCategory
  | tensor : FreeMonoidalCategory → FreeMonoidalCategory → FreeMonoidalCategory
  deriving Inhabited
#align category_theory.free_monoidal_category CategoryTheory.FreeMonoidalCategory

end

local notation "F" => FreeMonoidalCategory

namespace FreeMonoidalCategory

attribute [nolint simpNF] Unit.sizeOf_spec tensor.injEq tensor.sizeOf_spec

/-- Formal compositions and tensor products of identities, unitors and associators. The morphisms
    of the free monoidal category are obtained as a quotient of these formal morphisms by the
    relations defining a monoidal category. -/
-- porting note: unsupported linter
-- @[nolint has_nonempty_instance]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dac377291f6036c4c49c5b1612ec4866f669d741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
