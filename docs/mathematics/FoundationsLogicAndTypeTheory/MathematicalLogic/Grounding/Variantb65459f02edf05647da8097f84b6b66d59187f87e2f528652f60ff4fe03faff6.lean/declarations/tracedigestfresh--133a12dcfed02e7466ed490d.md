# TraceDigestFresh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d12b5d3d0ab0a3bdf52466739ed618cde101923301b3b9264142ab8419e2391c",
  "kind": "def",
  "lexical_name": "TraceDigestFresh",
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
  "slug": "tracedigestfresh--133a12dcfed02e7466ed490d",
  "source": {
    "blob": "c8c8b485b9d6d57324713a67a7e40b3a6c56b790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 234,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variantb65459f02edf05647da8097f84b6b66d59187f87e2f528652f60ff4fe03faff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:133a12dcfed02e7466ed490d4653e7f5ca66f00413297664184f0f55a0deca20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variantb65459f02edf05647da8097f84b6b66d59187f87e2f528652f60ff4fe03faff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d12b5d3d0ab0a3bdf52466739ed618cde101923301b3b9264142ab8419e2391c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TraceDigestFresh
    (locator : ExternalRhetoricalLocator)
    (registry : RhetoricalEvidenceRegistry) : Prop :=
  ∃ certificate,
    registry.gramTraceFor locator.activeGramTraceId = some certificate ∧
    locator.traceDigest = certificate.traceDigest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variantb65459f02edf05647da8097f84b6b66d59187f87e2f528652f60ff4fe03faff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variantb65459f02edf05647da8097f84b6b66d59187f87e2f528652f60ff4fe03faff6.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8c8b485b9d6d57324713a67a7e40b3a6c56b790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
