# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:880461ee7e3e294db512191258da5a93aebd346241c9445c8d81e5d77f32e937",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--ca9e6ed2e28aaefe621069f7",
  "source": {
    "blob": "d13638cb1abcc68c2eef43b5d3851e7197a7a18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NegativeChecks/Variantb222a06abe7f22f6b8a84a8fedd92937aadd20e0d9090015b0c73e54a0bb0c02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca9e6ed2e28aaefe621069f7f43621211cf656fa4430d82250d3db7a35939655",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NegativeChecks/Variantb222a06abe7f22f6b8a84a8fedd92937aadd20e0d9090015b0c73e54a0bb0c02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:880461ee7e3e294db512191258da5a93aebd346241c9445c8d81e5d77f32e937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example
    {Coordinate : Type uCoordinate}
    (specification : SieveSpecification Coordinate)
    (claimArtifact : ArtifactRef .sieveClosureClaim)
    (proofArtifact : ArtifactRef .theoremProof)
    (furtherFactor : Coordinate → Coordinate → Coordinate → Prop)
    (closed :
      ∀ source intermediate target,
        specification.accepts source intermediate →
        furtherFactor source intermediate target →
        specification.accepts source target) :
    Nonempty (SieveClosureClaim specification) :=
  ⟨{
    claimArtifact := claimArtifact
    proofArtifact := proofArtifact
    furtherFactor := furtherFactor
    acceptedFactorizationClosed := closed
  }⟩

/--
A theory indexed without soundness cannot fill the soundness-required theory
slot used by an accepted transport derivation, even though completeness itself
is optional.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NegativeChecks/Variantb222a06abe7f22f6b8a84a8fedd92937aadd20e0d9090015b0c73e54a0bb0c02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NegativeChecks/Variantb222a06abe7f22f6b8a84a8fedd92937aadd20e0d9090015b0c73e54a0bb0c02.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d13638cb1abcc68c2eef43b5d3851e7197a7a18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
