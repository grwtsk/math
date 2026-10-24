# CollapseWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbee4caa0c0eb229fb976f75d954c2731f5d63bef9075bf5c8fb7ed4581dfea1",
  "kind": "structure",
  "lexical_name": "CollapseWitness",
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
  "slug": "collapsewitness--fcf2ae7eb3eba0e41acc9d71",
  "source": {
    "blob": "30101e24b148981d809b3963cb617bede750718a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 9,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Witness/Variant1f3513d87b5ac1dd268f918df67b7a4752f757afe685eed09da2cd8d2044f23d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcf2ae7eb3eba0e41acc9d71abce9d41a428ed14a2a69f8b766bc135af8b35b3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Witness/Variant1f3513d87b5ac1dd268f918df67b7a4752f757afe685eed09da2cd8d2044f23d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbee4caa0c0eb229fb976f75d954c2731f5d63bef9075bf5c8fb7ed4581dfea1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CollapseWitness where
  id : CollapseWitnessId
  atomId : SourceAtomId
  leftCommands : Array SourceCommandId
  rightCommands : Array SourceCommandId
  reason : CollapseReasonKind
  provider : Option SourceCommandId
  consumer : Option SourceCommandId
  failingDeclaration : Option ExtractorDeclarationId
  baselineDigest : Digest
  candidateDigest : Digest
  diagnostic : String
  replayCommand : String
  witnessDigest : Digest
  reproduced : Bool
  deriving DecidableEq, Repr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Witness/Variant1f3513d87b5ac1dd268f918df67b7a4752f757afe685eed09da2cd8d2044f23d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Witness/Variant1f3513d87b5ac1dd268f918df67b7a4752f757afe685eed09da2cd8d2044f23d.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30101e24b148981d809b3963cb617bede750718a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
