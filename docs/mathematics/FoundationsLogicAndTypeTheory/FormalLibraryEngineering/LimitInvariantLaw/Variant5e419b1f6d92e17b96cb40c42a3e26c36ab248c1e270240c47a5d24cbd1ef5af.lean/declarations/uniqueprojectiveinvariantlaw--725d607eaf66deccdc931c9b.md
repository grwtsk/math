# UniqueProjectiveInvariantLaw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d77162ec1de595f1836b1e4775d9e6cc87220a4702485dd80f91eb72d1a2e25",
  "kind": "structure",
  "lexical_name": "UniqueProjectiveInvariantLaw",
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
  "slug": "uniqueprojectiveinvariantlaw--725d607eaf66deccdc931c9b",
  "source": {
    "blob": "16fc6b34c40cad90935dc0b9c8016d046b207610",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitInvariantLaw/Variant5e419b1f6d92e17b96cb40c42a3e26c36ab248c1e270240c47a5d24cbd1ef5af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:725d607eaf66deccdc931c9b245fa0cc24aa95e5e9011d7ed9ab06a38725223a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitInvariantLaw/Variant5e419b1f6d92e17b96cb40c42a3e26c36ab248c1e270240c47a5d24cbd1ef5af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d77162ec1de595f1836b1e4775d9e6cc87220a4702485dd80f91eb72d1a2e25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UniqueProjectiveInvariantLaw
    (Kernel Law : Type u) where
  kernel : Kernel
  limitLaw : Law
  finiteMarginal : Nat → Law
  invariant : Prop
  invariantProof : invariant
  projects : Nat → Prop
  projectProof :
    ∀ stage : Nat,
      projects stage
  unique :
    ∀ candidate : Law,
      candidate = limitLaw

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitInvariantLaw/Variant5e419b1f6d92e17b96cb40c42a3e26c36ab248c1e270240c47a5d24cbd1ef5af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitInvariantLaw/Variant5e419b1f6d92e17b96cb40c42a3e26c36ab248c1e270240c47a5d24cbd1ef5af.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16fc6b34c40cad90935dc0b9c8016d046b207610` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
