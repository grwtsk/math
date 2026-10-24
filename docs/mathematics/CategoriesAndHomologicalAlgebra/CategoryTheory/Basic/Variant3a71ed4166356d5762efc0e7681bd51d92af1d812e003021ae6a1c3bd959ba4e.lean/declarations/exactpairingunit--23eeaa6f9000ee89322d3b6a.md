# exactPairingUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:510ddf314e53b37f48f472010bad9d138b5c0b0e5628f0f7078190e0afc03f61",
  "kind": "instance",
  "lexical_name": "exactPairingUnit",
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
  "slug": "exactpairingunit--23eeaa6f9000ee89322d3b6a",
  "source": {
    "blob": "746038af84a0be6e682335dd41e9e9357477ce3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 132,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23eeaa6f9000ee89322d3b6ae60c9178c7355b481238960b72b52de9747b5049",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:510ddf314e53b37f48f472010bad9d138b5c0b0e5628f0f7078190e0afc03f61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance exactPairingUnit : ExactPairing (𝟙_ C) (𝟙_ C) where
  coevaluation' := (ρ_ _).inv
  evaluation' := (ρ_ _).hom
  coevaluation_evaluation' := by monoidal_coherence
  evaluation_coevaluation' := by monoidal_coherence

/-- The tensor product of exact pairings. Given exact pairings `(X₁, Y₁)` and `(X₂, Y₂)`,
we get an exact pairing `(X₁ ⊗ X₂, Y₂ ⊗ Y₁)`. Note the reversed order in the second factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `746038af84a0be6e682335dd41e9e9357477ce3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
