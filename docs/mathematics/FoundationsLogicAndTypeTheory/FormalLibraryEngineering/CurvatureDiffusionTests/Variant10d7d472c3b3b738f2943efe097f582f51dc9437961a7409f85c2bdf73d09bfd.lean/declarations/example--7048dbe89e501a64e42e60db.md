# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd00e4d4ec4b73ab822b9a36b1ecb95f9f568c2a7a5f6e274face243618cc15c",
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
  "slug": "example--7048dbe89e501a64e42e60db",
  "source": {
    "blob": "0c1c718d7a263e9bd3d5ffb86c20dde760e7923b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7048dbe89e501a64e42e60db812d641a831a78b7b6896de65912d738d5d13940",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd00e4d4ec4b73ab822b9a36b1ecb95f9f568c2a7a5f6e274face243618cc15c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example :
    legalLaplacian twoLegalNeighbors
        (twoFlow.model.edgeWeight (twoFlow.metric (0 : Fin 2)))
        (fun _ => (3 : ℝ)) = 0 :=
  legalLaplacian.constant _ _ _

/-- The complete pre-threshold map retains exact linearity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c1c718d7a263e9bd3d5ffb86c20dde760e7923b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
