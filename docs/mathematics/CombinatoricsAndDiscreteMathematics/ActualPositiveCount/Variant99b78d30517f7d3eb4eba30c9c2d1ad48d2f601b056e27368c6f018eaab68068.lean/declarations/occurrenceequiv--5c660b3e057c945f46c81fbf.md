# occurrenceEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f701a7cf75f7761f418f02886f4e5c59da7250b175d59317e4a0d5a54b7d6a7",
  "kind": "def",
  "lexical_name": "occurrenceEquiv",
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
  "slug": "occurrenceequiv--5c660b3e057c945f46c81fbf",
  "source": {
    "blob": "0232cd3b93d385167f35cee12f11e31977ef1e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c660b3e057c945f46c81fbfa9bf6548cbfbe92ec7d40ddbfcc5feb4b5f0458d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f701a7cf75f7761f418f02886f4e5c59da7250b175d59317e4a0d5a54b7d6a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def occurrenceEquiv (t : ℝ) : PositiveOccurrences t ≃ WindowOccurrences t where
  toFun o := ⟨⟨o.val.1.val, o.val.1.property, by
    simpa [shiftedValue] using o.property⟩, o.val.2⟩
  invFun w := ⟨⟨⟨w.1.val, w.1.property.1⟩, w.2⟩, by
    simpa [shiftedValue] using w.1.property.2⟩
  left_inv o := by cases o; rfl
  right_inv w := by cases w; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0232cd3b93d385167f35cee12f11e31977ef1e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
