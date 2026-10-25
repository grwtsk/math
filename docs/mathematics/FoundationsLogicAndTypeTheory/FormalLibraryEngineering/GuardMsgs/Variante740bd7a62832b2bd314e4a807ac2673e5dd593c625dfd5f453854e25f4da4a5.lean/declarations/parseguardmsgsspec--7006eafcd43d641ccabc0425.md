# parseGuardMsgsSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39389964461394b473b51c09de95835b5ddd9861b98185dbe1a7286fab3df93c",
  "kind": "def",
  "lexical_name": "parseGuardMsgsSpec",
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
  "slug": "parseguardmsgsspec--7006eafcd43d641ccabc0425",
  "source": {
    "blob": "1ab77092545fa1ea57f37c3aff587a942fce34c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variante740bd7a62832b2bd314e4a807ac2673e5dd593c625dfd5f453854e25f4da4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7006eafcd43d641ccabc04250c970b71eabf450a7c3f0e1e643b7e75c62fd235",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variante740bd7a62832b2bd314e4a807ac2673e5dd593c625dfd5f453854e25f4da4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39389964461394b473b51c09de95835b5ddd9861b98185dbe1a7286fab3df93c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseGuardMsgsSpec (spec? : Option (TSyntax ``guardMsgsSpec)) :
    CommandElabM (Message → SpecResult) := do
  if let some spec := spec? then
    match spec with
    | `(guardMsgsSpec| ($[$elts:guardMsgsSpecElt],*)) => do
      let mut p : Message → SpecResult := fun _ => .passthrough
      let pushP (s : MessageSeverity) (drop : Bool) (p : Message → SpecResult)
          (msg : Message) : SpecResult :=
        if msg.severity == s then if drop then .drop else .check
        else p msg
      for elt in elts.reverse do
        match elt with
        | `(guardMsgsSpecElt| $[drop%$drop?]? info)    => p := pushP .information drop?.isSome p
        | `(guardMsgsSpecElt| $[drop%$drop?]? warning) => p := pushP .warning drop?.isSome p
        | `(guardMsgsSpecElt| $[drop%$drop?]? error)   => p := pushP .error drop?.isSome p
        | `(guardMsgsSpecElt| $[drop%$drop?]? all) =>
          p := fun _ => if drop?.isSome then .drop else .check
        | _ => throwErrorAt elt "Invalid #guard_msgs specification element"
      return p
    | _ => throwErrorAt spec "Invalid #guard_msgs specification"
  else
    return fun _ => .check

/-- An info tree node corresponding to a failed `#guard_msgs` invocation,
used for code action support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variante740bd7a62832b2bd314e4a807ac2673e5dd593c625dfd5f453854e25f4da4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variante740bd7a62832b2bd314e4a807ac2673e5dd593c625dfd5f453854e25f4da4a5.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ab77092545fa1ea57f37c3aff587a942fce34c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
