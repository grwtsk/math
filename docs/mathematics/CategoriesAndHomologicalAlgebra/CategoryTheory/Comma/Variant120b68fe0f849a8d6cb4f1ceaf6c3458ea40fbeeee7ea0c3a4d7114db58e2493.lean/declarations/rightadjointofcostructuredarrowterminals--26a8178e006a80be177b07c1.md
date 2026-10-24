# rightAdjointOfCostructuredArrowTerminals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5aa20513289f473996876d6b5d8796cb552a2ba711d47928a6b31410459aa84",
  "kind": "def",
  "lexical_name": "rightAdjointOfCostructuredArrowTerminals",
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
  "slug": "rightadjointofcostructuredarrowterminals--26a8178e006a80be177b07c1",
  "source": {
    "blob": "c93ebf7292d36a2a288fa9caa4e8c05514bd6147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26a8178e006a80be177b07c1bf70687866b7ce0ed058337768dd33070fd97de4",
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

Occurrence: `declaration:d5aa20513289f473996876d6b5d8796cb552a2ba711d47928a6b31410459aa84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rightAdjointOfCostructuredArrowTerminals : C ⥤ D :=
  Adjunction.rightAdjointOfEquiv (rightAdjointOfCostructuredArrowTerminalsAux G)
      fun B₁ B₂ A f g => by
    rw [← Equiv.eq_symm_apply]
    simp
#align category_theory.right_adjoint_of_costructured_arrow_terminals CategoryTheory.rightAdjointOfCostructuredArrowTerminals

/-- If each costructured arrow category on `G` has a terminal object, we have a constructed right
adjoint to `G`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93ebf7292d36a2a288fa9caa4e8c05514bd6147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
