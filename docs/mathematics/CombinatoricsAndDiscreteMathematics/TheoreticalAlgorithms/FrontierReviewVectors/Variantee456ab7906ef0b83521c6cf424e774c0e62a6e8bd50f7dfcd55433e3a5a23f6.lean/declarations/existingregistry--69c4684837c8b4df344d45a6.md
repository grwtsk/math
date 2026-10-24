# existingRegistry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d95f4cf1f172b1b7e04021dedee4b828a757e704f915635a918420e826c4daba",
  "kind": "def",
  "lexical_name": "existingRegistry",
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
  "slug": "existingregistry--69c4684837c8b4df344d45a6",
  "source": {
    "blob": "844d509a529249d95f8ec94b4c61956f29032221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrontierReviewVectors/Variantee456ab7906ef0b83521c6cf424e774c0e62a6e8bd50f7dfcd55433e3a5a23f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69c4684837c8b4df344d45a6a62397c2aedd759e73d0b4e88ce5d7f8265e60c9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrontierReviewVectors/Variantee456ab7906ef0b83521c6cf424e774c0e62a6e8bd50f7dfcd55433e3a5a23f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d95f4cf1f172b1b7e04021dedee4b828a757e704f915635a918420e826c4daba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def existingRegistry : AcceptedOrbitRegistry where
  lookup orbitId :=
    if orbitId = existingOrbit.orbitId then
      some existingOrbit
    else
      none
  nextAcceptanceOrdinal := 4
  coherent := by
    intro orbitId entry found
    by_cases same : orbitId = existingOrbit.orbitId
    · subst orbitId
      simp at found
      cases found
      rfl
    · simp [same] at found
  ordinalBelowNext := by
    intro orbitId entry found
    by_cases same : orbitId = existingOrbit.orbitId
    · subst orbitId
      simp at found
      cases found
      decide
    · simp [same] at found

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrontierReviewVectors/Variantee456ab7906ef0b83521c6cf424e774c0e62a6e8bd50f7dfcd55433e3a5a23f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrontierReviewVectors/Variantee456ab7906ef0b83521c6cf424e774c0e62a6e8bd50f7dfcd55433e3a5a23f6.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `844d509a529249d95f8ec94b4c61956f29032221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
