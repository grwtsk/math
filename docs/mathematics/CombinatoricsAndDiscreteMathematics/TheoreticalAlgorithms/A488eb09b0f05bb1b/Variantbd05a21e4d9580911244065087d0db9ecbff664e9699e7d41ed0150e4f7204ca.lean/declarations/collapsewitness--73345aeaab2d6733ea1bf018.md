# CollapseWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1f7467f375b2fe96fa33b200b1fafe6ea92b046663e4b7f0e5690f240fc3cd4",
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
  "slug": "collapsewitness--73345aeaab2d6733ea1bf018",
  "source": {
    "blob": "02ad27a907bcd46bea92870c31e6a05f3a0a2d26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 16,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A488eb09b0f05bb1b/Variantbd05a21e4d9580911244065087d0db9ecbff664e9699e7d41ed0150e4f7204ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73345aeaab2d6733ea1bf0180f53dae082eeffb99f307ff8ca5a6c89f661339c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A488eb09b0f05bb1b/Variantbd05a21e4d9580911244065087d0db9ecbff664e9699e7d41ed0150e4f7204ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1f7467f375b2fe96fa33b200b1fafe6ea92b046663e4b7f0e5690f240fc3cd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CollapseWitness where
  id : CollapseWitnessId
  elementId : SourceElementId
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

end Mathematics.Element
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A488eb09b0f05bb1b/Variantbd05a21e4d9580911244065087d0db9ecbff664e9699e7d41ed0150e4f7204ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A488eb09b0f05bb1b/Variantbd05a21e4d9580911244065087d0db9ecbff664e9699e7d41ed0150e4f7204ca.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02ad27a907bcd46bea92870c31e6a05f3a0a2d26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
