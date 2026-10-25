# ResiduePatternFeature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa5d19f353c218368f1ca2e9b57fea957bb2ba85ddf93894749b4034121f072a",
  "kind": "structure",
  "lexical_name": "ResiduePatternFeature",
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
  "slug": "residuepatternfeature--1ebf14adad28e7aaf2657a8a",
  "source": {
    "blob": "049c186f7522c646e53f56c8a6815bb3ed7bce9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variantbaf32dcbab4095db3b240277580ada55b3f46f05f54b8839a6f27fd25b6eaa1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ebf14adad28e7aaf2657a8a6d50fb353fa519850b6d750e87011554c1051447",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variantbaf32dcbab4095db3b240277580ada55b3f46f05f54b8839a6f27fd25b6eaa1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa5d19f353c218368f1ca2e9b57fea957bb2ba85ddf93894749b4034121f072a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ResiduePatternFeature where
  featureId : Nat
  method : PatternRecognitionMethod
  supportCellCount : Nat
  scoreHash : Nat
  finiteEvidenceOnly : Prop
  finiteEvidenceOnlyProof : finiteEvidenceOnly

/-- Candidate status for a generated residue-reduction theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variantbaf32dcbab4095db3b240277580ada55b3f46f05f54b8839a6f27fd25b6eaa1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variantbaf32dcbab4095db3b240277580ada55b3f46f05f54b8839a6f27fd25b6eaa1a.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `049c186f7522c646e53f56c8a6815bb3ed7bce9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
