# FieldRedeclInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edb4c12fcf890fc66c4cfd95e2825b627a0fa7040222cab065ff4f4b6ff8bf35",
  "kind": "structure",
  "lexical_name": "FieldRedeclInfo",
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
  "slug": "fieldredeclinfo--fe486c9a6f2e60a79fa5f5f7",
  "source": {
    "blob": "ff0b1f85d6b211677b763aacdb13d569b6f62025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe486c9a6f2e60a79fa5f5f7dfbc03d10c933e9bb13704018dfb52d010c5719a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edb4c12fcf890fc66c4cfd95e2825b627a0fa7040222cab065ff4f4b6ff8bf35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FieldRedeclInfo where
  stx : Syntax

/--
Denotes TermInfo with additional configurations to control interactions with delaborated terms.

For example, the omission term `⋯` that is emitted by the delaborator when omitting a term
due to `pp.deepTerms false` or `pp.proofs false` uses this.
Omission needs to be treated differently from regular terms because
it has to be delaborated differently in `Lean.Widget.InteractiveDiagnostics.infoToInteractive`:
Regular terms are delaborated explicitly, whereas omitted terms are simply to be expanded with
regular delaboration settings. Additionally, omissions come with a reason for omission.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff0b1f85d6b211677b763aacdb13d569b6f62025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
