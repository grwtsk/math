# PrincipalCarrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd97fa390d693c37c3a57ad4de1f9fbdf9a20c5d02da8730b1fa1186e657a06f",
  "kind": "inductive",
  "lexical_name": "PrincipalCarrier",
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
  "slug": "principalcarrier--fc61ad16c9779848c7e325cc",
  "source": {
    "blob": "f0e7cd52895a2645a53af47c4135a7c4a4275719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant7f44aeb506522f0696562dfe54031b9f6542f7586badf6f88420c50db47c7cb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc61ad16c9779848c7e325cc2dc921ceb25df746474cda40ac4a9761595194f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant7f44aeb506522f0696562dfe54031b9f6542f7586badf6f88420c50db47c7cb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd97fa390d693c37c3a57ad4de1f9fbdf9a20c5d02da8730b1fa1186e657a06f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive PrincipalCarrier : PrincipalModelRole → Type where
  | state (value : Nat) : PrincipalCarrier .state
  | input (value : Nat) : PrincipalCarrier .input
  | output (value : Nat) : PrincipalCarrier .output
  | residual (value : Nat) : PrincipalCarrier .residual
  | memory (value : Nat) : PrincipalCarrier .memory
  | energy (value : Nat) : PrincipalCarrier .energy
  | parameter (value : Nat) : PrincipalCarrier .parameter
  | checkpoint (value : Nat) : PrincipalCarrier .checkpoint
deriving Repr, DecidableEq

/-- PRD-01: all principal role indices, and therefore their indexed carrier
types, are pairwise distinct. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant7f44aeb506522f0696562dfe54031b9f6542f7586badf6f88420c50db47c7cb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant7f44aeb506522f0696562dfe54031b9f6542f7586badf6f88420c50db47c7cb5.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0e7cd52895a2645a53af47c4135a7c4a4275719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
