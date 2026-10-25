# SieveTermination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4c77f617e4b63b0551e80af540a1c5c273c36f54bde11857d1d4a69249a2c5c",
  "kind": "structure",
  "lexical_name": "SieveTermination",
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
  "slug": "sievetermination--8664f25eba55c98be3a853d5",
  "source": {
    "blob": "2ca26291db3f473af52243c57230f07eb35ae74c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8664f25eba55c98be3a853d5106da5ae3d32d581f14e17f4b9ad0077b10b1c31",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4c77f617e4b63b0551e80af540a1c5c273c36f54bde11857d1d4a69249a2c5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SieveTermination
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    (procedure : SieveProcedure specification) where
  evidenceArtifact : ArtifactRef .sieveTermination
  scope : Coordinate → Coordinate → Prop
  terminates :
    ∀ left right, scope left right →
      ∃ decision, procedure.evaluate left right = decision

/--
One immutable, nonempty evidence-theory version. Soundness, completeness, and
termination are independently optional law records; consumers must request the
exact laws their claims use instead of obtaining one law from another.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ca26291db3f473af52243c57230f07eb35ae74c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
