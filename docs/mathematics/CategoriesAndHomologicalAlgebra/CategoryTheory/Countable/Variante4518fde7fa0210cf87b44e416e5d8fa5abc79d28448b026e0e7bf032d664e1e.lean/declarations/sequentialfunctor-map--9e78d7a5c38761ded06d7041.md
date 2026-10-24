# sequentialFunctor_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d677be24-1ebf-5387-b99b-ee415fad457b",
  "kind": "theorem",
  "lexical_name": "sequentialFunctor_map",
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
  "slug": "sequentialfunctor-map--9e78d7a5c38761ded06d7041",
  "source": {
    "blob": "492c438e26500636379396dc1924d9f440145a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 196,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e78d7a5c38761ded06d7041b6e878141cb6220a0bdb2973711b9b1d052699a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d677be24-1ebf-5387-b99b-ee415fad457b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sequentialFunctor_map : Antitone (sequentialFunctor_obj J) :=
  antitone_nat_of_succ_le fun n ↦
    leOfHom (IsCofilteredOrEmpty.cone_objs ((exists_surjective_nat _).choose n)
      (sequentialFunctor_obj J n)).choose_spec.choose_spec.choose

/--
The initial functor `ℕᵒᵖ ⥤ J`, which allows us to turn cofiltered limits over countable preorders
into sequential limits.

TODO: redefine this as `(IsFiltered.sequentialFunctor Jᵒᵖ).leftOp`. This would need API for initial/
final functors of the form `leftOp`/`rightOp`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `492c438e26500636379396dc1924d9f440145a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
