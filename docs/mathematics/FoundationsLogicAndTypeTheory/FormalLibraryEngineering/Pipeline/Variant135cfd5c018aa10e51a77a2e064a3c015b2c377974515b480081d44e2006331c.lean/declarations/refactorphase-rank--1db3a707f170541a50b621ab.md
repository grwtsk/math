# RefactorPhase.rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:716a6edda8620fd70ae1d0aebdda0dc9dd4c766f95df001d9406949937ee674d",
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
  "slug": "refactorphase-rank--1db3a707f170541a50b621ab",
  "source": {
    "blob": "bca53772bfa87b8fcd889171e7fb55ea3f432c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pipeline/Variant135cfd5c018aa10e51a77a2e064a3c015b2c377974515b480081d44e2006331c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1db3a707f170541a50b621ab5249e9a3b8cd4b9f63d2f79c7b6be496f6d0fdba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pipeline/Variant135cfd5c018aa10e51a77a2e064a3c015b2c377974515b480081d44e2006331c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:716a6edda8620fd70ae1d0aebdda0dc9dd4c766f95df001d9406949937ee674d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–49.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pipeline/Variant135cfd5c018aa10e51a77a2e064a3c015b2c377974515b480081d44e2006331c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pipeline/Variant135cfd5c018aa10e51a77a2e064a3c015b2c377974515b480081d44e2006331c.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bca53772bfa87b8fcd889171e7fb55ea3f432c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
