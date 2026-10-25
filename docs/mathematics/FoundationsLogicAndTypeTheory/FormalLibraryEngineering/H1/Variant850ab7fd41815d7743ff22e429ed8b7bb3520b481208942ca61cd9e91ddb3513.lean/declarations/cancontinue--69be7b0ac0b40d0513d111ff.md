# canContinue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e9fa8b8f98af28fe2f56f81a3deaf7b08edf285b36a7058c669e51e4885bfb3",
  "kind": "def",
  "lexical_name": "canContinue",
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
  "slug": "cancontinue--69be7b0ac0b40d0513d111ff",
  "source": {
    "blob": "e244ad062e99c3043e796a2a97ac54bbdb7a8215",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 986,
    "line": 961,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69be7b0ac0b40d0513d111ff07f99923592404a513989ef47c9657050ca28d62",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e9fa8b8f98af28fe2f56f81a3deaf7b08edf285b36a7058c669e51e4885bfb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 961–986.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canContinue (machine : Machine dir) (status : Status) : Machine dir :=
  match dir, machine.reader.state with
  | .sending, _ => machine
  | .receiving, Reader.State.«continue» nextState =>
    if status == .«continue» then
      let machine := machine.modifyWriter (fun writer => {
        writer with outputData := Encode.encode (v := .v11) writer.outputData ({ status := .«continue» } : Response.Head)
      })
      machine.setReaderState nextState
    else
      machine.send { status }
      |>.setKnownSize (.fixed 0)
      |>.userClosedBody
      |>.disableKeepAlive
      |>.closeReader
      |>.setReaderState .closed
  | .receiving, _ => machine

/--
Sends an error response with `Connection: close` and shuts down input.

If the machine is waiting to send a message, sends `status` with a `Connection: close`
header and signals that the body is done (letting the step function encode and flush the
response), then stops accepting further input. Otherwise, closes the writer directly and
stops accepting further input.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean#L961).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e244ad062e99c3043e796a2a97ac54bbdb7a8215` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
