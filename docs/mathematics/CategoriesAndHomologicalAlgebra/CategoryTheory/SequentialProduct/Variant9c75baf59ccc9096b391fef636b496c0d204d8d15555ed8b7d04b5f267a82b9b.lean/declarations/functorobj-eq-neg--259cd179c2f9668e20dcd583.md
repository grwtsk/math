# functorObj_eq_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e966777-99d2-0226-57a7-987a9314be59",
  "kind": "lemma",
  "lexical_name": "functorObj_eq_neg",
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
  "slug": "functorobj-eq-neg--259cd179c2f9668e20dcd583",
  "source": {
    "blob": "2f82b18e6ee12531455d42696b83b0874c8f439f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:259cd179c2f9668e20dcd583cc2a940303de3f770fb3d874ce8f8741949e1b5f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e966777-99d2-0226-57a7-987a9314be59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma functorObj_eq_neg {n m : ℕ} (h : ¬(m < n)) :
    (fun i ↦ if _ : i < n then M i else N i) m = N m := dif_neg h

variable [Category C] (f : ∀ n, M n ⟶ N n) [HasProductsOfShape ℕ C]

variable (M N) in
/-- The product of the `m` first objects of `M` and the rest of the rest of `N` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f82b18e6ee12531455d42696b83b0874c8f439f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
