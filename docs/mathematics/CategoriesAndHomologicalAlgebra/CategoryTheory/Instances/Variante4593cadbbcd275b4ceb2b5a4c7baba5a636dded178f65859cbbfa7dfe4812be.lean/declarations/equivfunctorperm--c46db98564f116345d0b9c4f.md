# EquivFunctorPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4dd6620cfa34cfb090dc6e9f28e2b1147352731364b4ede9e733198dd9992ec1",
  "kind": "instance",
  "lexical_name": "EquivFunctorPerm",
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
  "slug": "equivfunctorperm--c46db98564f116345d0b9c4f",
  "source": {
    "blob": "01a637cd38176af4abf4cfec0019471d2367986a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 26,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variante4593cadbbcd275b4ceb2b5a4c7baba5a636dded178f65859cbbfa7dfe4812be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c46db98564f116345d0b9c4f820d728b20fe70c020d945b63ed81c18080ee7d2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variante4593cadbbcd275b4ceb2b5a4c7baba5a636dded178f65859cbbfa7dfe4812be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4dd6620cfa34cfb090dc6e9f28e2b1147352731364b4ede9e733198dd9992ec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance EquivFunctorPerm : EquivFunctor Perm where
  map e p := (e.symm.trans p).trans e
  map_refl' α := by ext; simp
  map_trans' _ _ := by ext; simp
#align equiv_functor_perm EquivFunctorPerm

-- There is a classical instance of `LawfulFunctor Finset` available,
-- but we provide this computable alternative separately.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variante4593cadbbcd275b4ceb2b5a4c7baba5a636dded178f65859cbbfa7dfe4812be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variante4593cadbbcd275b4ceb2b5a4c7baba5a636dded178f65859cbbfa7dfe4812be.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01a637cd38176af4abf4cfec0019471d2367986a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
