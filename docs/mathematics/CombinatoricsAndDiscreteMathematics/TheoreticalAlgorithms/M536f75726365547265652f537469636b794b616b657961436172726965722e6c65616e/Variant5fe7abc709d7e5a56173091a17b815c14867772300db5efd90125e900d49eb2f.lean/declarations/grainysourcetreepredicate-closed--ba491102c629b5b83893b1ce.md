# GrainySourceTreePredicate.closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7079a37151a8a5bbca5189d8f49bc2ef0f4aef70d62c15fd48ff1f92cf94d6bb",
  "kind": "def",
  "lexical_name": "GrainySourceTreePredicate.closed",
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
  "slug": "grainysourcetreepredicate-closed--ba491102c629b5b83893b1ce",
  "source": {
    "blob": "3e936b41c36ec1592be6a539032b0736767051bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e/Variant5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba491102c629b5b83893b1cec9d560032de1ffbb4d13d3639047a905acf52db1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e/Variant5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7079a37151a8a5bbca5189d8f49bc2ef0f4aef70d62c15fd48ff1f92cf94d6bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GrainySourceTreePredicate.closed
    (w : GrainySourceTreePredicate) : Prop :=
  w.sourceGrainCount > 0
    /\ w.grainSpacingFailureCount = 0
    /\ w.leafPairNotGrainCount = 0
    /\ w.grainCoverNotBalancedCount = 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e/Variant5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e/Variant5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e936b41c36ec1592be6a539032b0736767051bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
