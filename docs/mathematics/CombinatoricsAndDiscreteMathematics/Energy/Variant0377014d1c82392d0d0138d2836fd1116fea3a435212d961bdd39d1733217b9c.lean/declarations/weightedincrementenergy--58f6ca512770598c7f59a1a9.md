# weightedIncrementEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d719fab72f763ab9e46e05ebbf042008de8e3da8598d8ea742afbb72c754537a",
  "kind": "def",
  "lexical_name": "weightedIncrementEnergy",
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
  "slug": "weightedincrementenergy--58f6ca512770598c7f59a1a9",
  "source": {
    "blob": "4d855865b9b80539be8a24370246033f02eb0049",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58f6ca512770598c7f59a1a90864233ff1f0afd79e692fdabe0ef6bfb0b26d32",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d719fab72f763ab9e46e05ebbf042008de8e3da8598d8ea742afbb72c754537a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def weightedIncrementEnergy
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    [Fintype Coordinate]
    (capacity : PositiveCapacity Prime Coordinate)
    (packet : Packet Coordinate)
    (cut : Finset Prime)
    (prime : Prime) : ℚ :=
  ∑ coordinate,
    packet.amplitude coordinate ^ 2 *
      capacity.increment cut prime coordinate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d855865b9b80539be8a24370246033f02eb0049` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
