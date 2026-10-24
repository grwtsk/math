# isIso_of_hom_simple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7542e51-81b3-9966-2558-d261b8495e05",
  "kind": "theorem",
  "lexical_name": "isIso_of_hom_simple",
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
  "slug": "isiso-of-hom-simple--fda93ea8365cb03e5da26e06",
  "source": {
    "blob": "0ebf03f3f1a2671f7da2cc20b8ad18fb5cb92d14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fda93ea8365cb03e5da26e06fc0fef771acb26b35c8813ae1309da6be944b596",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7542e51-81b3-9966-2558-d261b8495e05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIso_of_hom_simple
    [HasKernels C] {X Y : C} [Simple X] [Simple Y] {f : X ⟶ Y} (w : f ≠ 0) : IsIso f :=
  haveI := mono_of_nonzero_from_simple w
  isIso_of_mono_of_nonzero w

/-- As a corollary of Schur's lemma for preadditive categories,
any morphism between simple objects is (exclusively) either an isomorphism or zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ebf03f3f1a2671f7da2cc20b8ad18fb5cb92d14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
