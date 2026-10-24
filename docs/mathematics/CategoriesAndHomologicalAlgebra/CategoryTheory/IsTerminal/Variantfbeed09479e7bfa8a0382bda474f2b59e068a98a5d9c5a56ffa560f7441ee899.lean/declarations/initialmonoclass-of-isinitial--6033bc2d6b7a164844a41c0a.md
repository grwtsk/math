# InitialMonoClass.of_isInitial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbd7c8e5-b58c-201e-a878-8160d7fefa6a",
  "kind": "theorem",
  "lexical_name": "InitialMonoClass.of_isInitial",
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
  "slug": "initialmonoclass-of-isinitial--6033bc2d6b7a164844a41c0a",
  "source": {
    "blob": "e6ce53f60c8cc7bc88d0a485c58e68ac7b6c1c12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 236,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsTerminal/Variantfbeed09479e7bfa8a0382bda474f2b59e068a98a5d9c5a56ffa560f7441ee899.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6033bc2d6b7a164844a41c0adf94024376dcd7b2686ce10fea52da1c6497d8ad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsTerminal/Variantfbeed09479e7bfa8a0382bda474f2b59e068a98a5d9c5a56ffa560f7441ee899.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbd7c8e5-b58c-201e-a878-8160d7fefa6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem InitialMonoClass.of_isInitial {I : C} (hI : IsInitial I) (h : ∀ X, Mono (hI.to X)) :
    InitialMonoClass C where
  isInitial_mono_from {I'} X hI' := by
    rw [hI'.hom_ext (hI'.to X) ((hI'.uniqueUpToIso hI).hom ≫ hI.to X)]
    apply mono_comp

/-- To show a category is an `InitialMonoClass` it suffices to show the unique morphism from an
initial object to a terminal object is a monomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsTerminal/Variantfbeed09479e7bfa8a0382bda474f2b59e068a98a5d9c5a56ffa560f7441ee899.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsTerminal/Variantfbeed09479e7bfa8a0382bda474f2b59e068a98a5d9c5a56ffa560f7441ee899.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6ce53f60c8cc7bc88d0a485c58e68ac7b6c1c12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
