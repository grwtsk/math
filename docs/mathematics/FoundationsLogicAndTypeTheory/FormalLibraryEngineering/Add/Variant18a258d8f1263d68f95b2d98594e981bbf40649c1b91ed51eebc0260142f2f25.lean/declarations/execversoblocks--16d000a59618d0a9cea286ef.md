# execVersoBlocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b3c8d47b016596daccbb222d35d48e809c2b3f07e63793ce0508d82f8aeb7ae",
  "kind": "def",
  "lexical_name": "execVersoBlocks",
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
  "slug": "execversoblocks--16d000a59618d0a9cea286ef",
  "source": {
    "blob": "82eb3405a1d5338b927f8d59030245e047e9fe7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16d000a59618d0a9cea286ef444266b39432088f25856734650d4ae0247eb6a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b3c8d47b016596daccbb222d35d48e809c2b3f07e63793ce0508d82f8aeb7ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def execVersoBlocks
    (declName : Name) (binders : Syntax) (blocks : Array Syntax) (fileMap? : Option FileMap) :
    TermElabM VersoDocResult := do
  let msgs ← Core.getAndEmptyMessageLog
  let (val, msgs') ←
    try
      let act := (Doc.elabBlocks (blocks.map (⟨·⟩))).exec declName binders (suggestionMode := .batch)
      let val ←
        Elab.withEnableInfoTree false <|
          match fileMap? with
          | some fileMap => withTheReader Core.Context ({· with fileMap }) act
          | none => act
      pure (val, ← Core.getAndEmptyMessageLog)
    finally
      Core.setMessageLog msgs
  for msg in msgs'.toArray do
    logAt (← getRef) msg.data (severity := msg.severity) (isSilent := msg.isSilent)
  let ((text, subsections), deferredChecks) := val
  pure { text, subsections, deferredChecks }

open Lean.Doc in
open Parser in
/--
Parses a Verso docstring from its text and elaborates it for the specified declaration. Because the
text carries no source positions, interactive features are disabled and any messages are reported at
the current reference.

`binders` should be the syntax of the parameters to the constant that is being documented, as a null
node that contains a sequence of bracketed binders, or an empty null node when none are available.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82eb3405a1d5338b927f8d59030245e047e9fe7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
