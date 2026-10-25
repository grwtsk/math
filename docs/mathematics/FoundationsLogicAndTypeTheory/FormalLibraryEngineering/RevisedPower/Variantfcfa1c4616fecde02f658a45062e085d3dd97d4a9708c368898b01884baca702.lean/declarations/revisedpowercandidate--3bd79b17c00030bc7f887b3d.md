# RevisedPowerCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7be517698c46528ce92f234fd655eb0ddc2e19b614847c10bbe9ed881765a210",
  "kind": "def",
  "lexical_name": "RevisedPowerCandidate",
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
  "slug": "revisedpowercandidate--3bd79b17c00030bc7f887b3d",
  "source": {
    "blob": "64bcb856b186f956fd9bfc10355f6605d96eaeb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RevisedPower/Variantfcfa1c4616fecde02f658a45062e085d3dd97d4a9708c368898b01884baca702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bd79b17c00030bc7f887b3d8f5b976b0f28584356921a6a6f88e875cea88720",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RevisedPower/Variantfcfa1c4616fecde02f658a45062e085d3dd97d4a9708c368898b01884baca702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7be517698c46528ce92f234fd655eb0ddc2e19b614847c10bbe9ed881765a210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RevisedPowerCandidate (lam theta : Cardinal.{u}) (P : Set (Set lam.out)) : Prop :=
  (∀ C ∈ P, #C = theta) ∧
    ∀ A : Set lam.out, #A = theta →
      ∃ Q : Set (Set lam.out), Q ⊆ P ∧ #Q < theta ∧ A ⊆ ⋃₀ Q

/-- The least possible family size equals lam, expressed without adding an axiom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RevisedPower/Variantfcfa1c4616fecde02f658a45062e085d3dd97d4a9708c368898b01884baca702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RevisedPower/Variantfcfa1c4616fecde02f658a45062e085d3dd97d4a9708c368898b01884baca702.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64bcb856b186f956fd9bfc10355f6605d96eaeb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
