# RefactorPhase.rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f84ebb249584341065f86e1c1a30555c891366aa64b5e024d7668d9549763db2",
  "kind": "def",
  "lexical_name": "RefactorPhase.rank",
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
  "slug": "refactorphase-rank--69e2522af876919eba324a29",
  "source": {
    "blob": "6bf9e593319025ddf7bd0644c37395242e3415a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pipeline/Variantf9a81efb6df143f4f6f157054a3f6753bcba292ccd02b54c6f9d4b1aaec9083d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69e2522af876919eba324a293fac7e6ee1b5f31dc43bdd8bc94d315e6c4897c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pipeline/Variantf9a81efb6df143f4f6f157054a3f6753bcba292ccd02b54c6f9d4b1aaec9083d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f84ebb249584341065f86e1c1a30555c891366aa64b5e024d7668d9549763db2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def RefactorPhase.rank : RefactorPhase → Nat
  | .created => 0
  | .indexed => 1
  | .patternsRetrieved => 2
  | .modelRequested => 3
  | .proposalReceived => 4
  | .schemaValidated => 5
  | .policyValidated => 6
  | .overlayApplied => 7
  | .elaborated => 8
  | .repairing => 8
  | .kernelChecked => 9
  | .audited => 10
  | .reviewReady => 11
  | .applied => 12
  | .rejected => 13
  | .cancelled => 13

@[surface_certificate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pipeline/Variantf9a81efb6df143f4f6f157054a3f6753bcba292ccd02b54c6f9d4b1aaec9083d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pipeline/Variantf9a81efb6df143f4f6f157054a3f6753bcba292ccd02b54c6f9d4b1aaec9083d.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bf9e593319025ddf7bd0644c37395242e3415a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
