# whatsNew

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6539e4d43d320bbb7ff0e3a220691f96363c70a6bea986b674e8250f4006b28",
  "kind": "def",
  "lexical_name": "whatsNew",
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
  "slug": "whatsnew--83a3c64e6518d9fbfff17aea",
  "source": {
    "blob": "3532393e3fcb235f57c968259a08117049721b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variantd6107206c63de20e6019fe36c20a6c9228c8d31c9e2ec7c39e042f9ccabfe213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83a3c64e6518d9fbfff17aea107eab9e4f24e9bde0b83a2a7877171a34fb3c75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variantd6107206c63de20e6019fe36c20a6c9228c8d31c9e2ec7c39e042f9ccabfe213.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6539e4d43d320bbb7ff0e3a220691f96363c70a6bea986b674e8250f4006b28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def whatsNew (old new : Environment) : CoreM MessageData := do
  let mut diffs := #[]

  for (c, i) in new.constants.map₂.toList do
    unless old.constants.map₂.contains c do
      diffs := diffs.push (← printIdCore c i)

  for ext in ← persistentEnvExtensionsRef.get do
    if let some diff ← diffExtension old new ext then
      diffs := diffs.push diff

  if diffs.isEmpty then return "no new constants"

  pure <| MessageData.joinSep diffs.toList "\n\n"

/-- `#whats_new in` executes the following command and then prints the
declarations that were added to the environment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variantd6107206c63de20e6019fe36c20a6c9228c8d31c9e2ec7c39e042f9ccabfe213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhatsNew/Variantd6107206c63de20e6019fe36c20a6c9228c8d31c9e2ec7c39e042f9ccabfe213.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3532393e3fcb235f57c968259a08117049721b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
