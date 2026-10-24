# pairInteraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d57929fdbed33e7a6e37780f82df56676b4077d4478b85bcbe5391020c3041e8",
  "kind": "def",
  "lexical_name": "pairInteraction",
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
  "slug": "pairinteraction--faf725330290f0b3a4bca7dc",
  "source": {
    "blob": "1a65f90fed2341c078b2ebb9a7f79241b88c0239",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 13,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PlaceInteraction/Variant1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:faf725330290f0b3a4bca7dc9ca765a780343b9b13b47180244bc6328c85ad74",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PlaceInteraction/Variant1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d57929fdbed33e7a6e37780f82df56676b4077d4478b85bcbe5391020c3041e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pairInteraction
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    DiagonalOperator Coordinate :=
  capacity.value (insert first (insert second cut)) -
    capacity.value (insert first cut) -
    capacity.value (insert second cut) +
    capacity.value cut

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PlaceInteraction/Variant1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PlaceInteraction/Variant1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a65f90fed2341c078b2ebb9a7f79241b88c0239` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
