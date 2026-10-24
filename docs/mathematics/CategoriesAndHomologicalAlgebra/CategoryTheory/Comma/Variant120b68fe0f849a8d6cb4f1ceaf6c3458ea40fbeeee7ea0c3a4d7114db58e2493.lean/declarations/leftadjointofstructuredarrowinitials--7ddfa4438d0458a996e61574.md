# leftAdjointOfStructuredArrowInitials

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51a6ced20bfd7d7b7bb76ec70dab8e3128bdb46d7affbb5e80ac54a8e6762c2e",
  "kind": "def",
  "lexical_name": "leftAdjointOfStructuredArrowInitials",
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
  "slug": "leftadjointofstructuredarrowinitials--7ddfa4438d0458a996e61574",
  "source": {
    "blob": "c93ebf7292d36a2a288fa9caa4e8c05514bd6147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ddfa4438d0458a996e615743e11576af789a830495ab838f5669350d5658962",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51a6ced20bfd7d7b7bb76ec70dab8e3128bdb46d7affbb5e80ac54a8e6762c2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftAdjointOfStructuredArrowInitials : C ⥤ D :=
  Adjunction.leftAdjointOfEquiv (leftAdjointOfStructuredArrowInitialsAux G) fun _ _ => by simp
#align category_theory.left_adjoint_of_structured_arrow_initials CategoryTheory.leftAdjointOfStructuredArrowInitials

/--
If each structured arrow category on `G` has an initial object, we have a constructed left adjoint
to `G`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93ebf7292d36a2a288fa9caa4e8c05514bd6147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
