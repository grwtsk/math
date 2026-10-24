# OnePrimeMomentSystem.q

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d7a266367d7bc40ca506e8dc885fd1e53ee9e33ea284ac60109f18f883922f6",
  "kind": "def",
  "lexical_name": "OnePrimeMomentSystem.q",
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
  "slug": "oneprimemomentsystem-q--81875a1ca53aa21fd4a51722",
  "source": {
    "blob": "b1c3a7b87e5a1da793f73f6a52883ae162105152",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 34,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81875a1ca53aa21fd4a51722a394bafd8e42cd31ab1c9eaffb3cc10e34c0fbb9",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d7a266367d7bc40ca506e8dc885fd1e53ee9e33ea284ac60109f18f883922f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OnePrimeMomentSystem.q
    (system : OnePrimeMomentSystem) : ℚ :=
  1 / system.prime

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1c3a7b87e5a1da793f73f6a52883ae162105152` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
