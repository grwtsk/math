# validationResidues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:120e7b5ef17a9517fd0d80bd4dbeabeacfecaedbe1a9dc46dd4209a10b2d6803",
  "kind": "def",
  "lexical_name": "validationResidues",
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
  "slug": "validationresidues--76196f08c85c39a25e189ad1",
  "source": {
    "blob": "b8e768ea11be5642a691f8e459cda30284b54ec6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M4b65726e656c2f4272696467652e6c65616e/Variant5d54e590b3a2fc213629cb51fb1ff1d48e231b779c5d58e7c714c66f50f5f0c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76196f08c85c39a25e189ad14c0157cd1d4da9099b2e0a78862b1dbb171e08ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M4b65726e656c2f4272696467652e6c65616e/Variant5d54e590b3a2fc213629cb51fb1ff1d48e231b779c5d58e7c714c66f50f5f0c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:120e7b5ef17a9517fd0d80bd4dbeabeacfecaedbe1a9dc46dd4209a10b2d6803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def validationResidues (target : Target) : List Residue := [
  { target := target
    atomId := "bridgeAttempt.decodeTotality"
    kind := ResidueKind.missingDecode
    blocks := "validation that decoding is total and matches the target carrier"
    clearsBy := "a decode-totality theorem for the bridge attempt" },
  { target := target
    atomId := "bridgeAttempt.quotientWellDefined"
    kind := ResidueKind.missingTraceQuotient
    blocks := "validation that the bridge respects the intended quotient relation"
    clearsBy := "a quotient well-definedness theorem for the bridge attempt" },
  { target := target
    atomId := "bridgeAttempt.rightSection"
    kind := ResidueKind.missingSection
    blocks := "construction of a right inverse for the proposed bridge"
    clearsBy := "a proof of the right round-trip law" },
  { target := target
    atomId := "bridgeAttempt.leftSection"
    kind := ResidueKind.missingSection
    blocks := "construction of a left inverse for the proposed bridge"
    clearsBy := "a proof of the left round-trip law" },
  { target := target
    atomId := "bridgeAttempt.transitionCompatibility"
    kind := ResidueKind.missingTransition
    blocks := "compatibility of bridge attempts across finite stages"
    clearsBy := "a transition-compatibility theorem for the bridge attempt" }
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M4b65726e656c2f4272696467652e6c65616e/Variant5d54e590b3a2fc213629cb51fb1ff1d48e231b779c5d58e7c714c66f50f5f0c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M4b65726e656c2f4272696467652e6c65616e/Variant5d54e590b3a2fc213629cb51fb1ff1d48e231b779c5d58e7c714c66f50f5f0c2.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8e768ea11be5642a691f8e459cda30284b54ec6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
