# IsSheaf.isSeparated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a32b956-720f-11dc-0229-d1407c438f02",
  "kind": "theorem",
  "lexical_name": "IsSheaf.isSeparated",
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
  "slug": "issheaf-isseparated--e6aadcc5610ca99c956be47f",
  "source": {
    "blob": "0741a4c8933c5634333fee0b6ba10b507ff44e58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0eaea542347ffbcf6c21bd521217f2f74f62ea3175cb990c36cb643e85cbbe42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6aadcc5610ca99c956be47fc55b6ee0b1f5de4c755f49334a07a0acf46dc14b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0eaea542347ffbcf6c21bd521217f2f74f62ea3175cb990c36cb643e85cbbe42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a32b956-720f-11dc-0229-d1407c438f02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSheaf.isSeparated {P : Cᵒᵖ ⥤ Type w} (h : IsSheaf J P) : IsSeparated J P :=
  fun _ S hS => (h S hS).isSeparatedFor

variable {J} in
/-- If `P` is separated and every compatible family of elements of `P` for a covering
sieve has an amalgamation, `P` is a sheaf. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0eaea542347ffbcf6c21bd521217f2f74f62ea3175cb990c36cb643e85cbbe42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0eaea542347ffbcf6c21bd521217f2f74f62ea3175cb990c36cb643e85cbbe42.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0741a4c8933c5634333fee0b6ba10b507ff44e58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
