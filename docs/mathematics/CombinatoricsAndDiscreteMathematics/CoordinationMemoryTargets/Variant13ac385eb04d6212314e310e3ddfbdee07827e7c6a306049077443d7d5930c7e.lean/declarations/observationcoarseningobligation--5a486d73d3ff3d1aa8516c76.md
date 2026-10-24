# ObservationCoarseningObligation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f749d76fd7a06f314f16fa6667bc4a8e67a901fe11b307b92ba04eb8b3bbae87",
  "kind": "def",
  "lexical_name": "ObservationCoarseningObligation",
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
  "slug": "observationcoarseningobligation--5a486d73d3ff3d1aa8516c76",
  "source": {
    "blob": "1b039760048c54bd0f0e30a5b5b28ca5c1bbe215",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 20,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CoordinationMemoryTargets/Variant13ac385eb04d6212314e310e3ddfbdee07827e7c6a306049077443d7d5930c7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a486d73d3ff3d1aa8516c766a9b61e83d548af19fb26c9943285d3a1cabb320",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CoordinationMemoryTargets/Variant13ac385eb04d6212314e310e3ddfbdee07827e7c6a306049077443d7d5930c7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f749d76fd7a06f314f16fa6667bc4a8e67a901fe11b307b92ba04eb8b3bbae87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ObservationCoarseningObligation : Prop :=
  (∀ (notion : FiniteNotion ℕ ℕ ℕ) (budget x y : ℕ),
    notion.compare budget x y = true ↔ notion.Equivalent budget x y) ∧
  (∀ (notion : FiniteNotion ℕ ℕ ℕ) (small large x y : ℕ),
    small ≤ large → notion.Equivalent large x y → notion.Equivalent small x y) ∧
  (∀ (policy : ObservationPolicy ℕ ℕ ℕ) (small large x y : ℕ),
    small ≤ large → ObservationallyEquivalent policy large x y →
      ObservationallyEquivalent policy small x y)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CoordinationMemoryTargets/Variant13ac385eb04d6212314e310e3ddfbdee07827e7c6a306049077443d7d5930c7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CoordinationMemoryTargets/Variant13ac385eb04d6212314e310e3ddfbdee07827e7c6a306049077443d7d5930c7e.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b039760048c54bd0f0e30a5b5b28ca5c1bbe215` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
