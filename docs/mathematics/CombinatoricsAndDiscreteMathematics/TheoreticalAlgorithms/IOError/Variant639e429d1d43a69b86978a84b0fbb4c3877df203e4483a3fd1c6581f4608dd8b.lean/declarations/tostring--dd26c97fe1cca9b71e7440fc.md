# toString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f843683548ae34b0a99f489e232f5de199d0b904b634ece81d6c591b04802751",
  "kind": "def",
  "lexical_name": "toString",
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
  "slug": "tostring--dd26c97fe1cca9b71e7440fc",
  "source": {
    "blob": "ef33f8b03204d703746689500152544fd7ef3435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 280,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variant639e429d1d43a69b86978a84b0fbb4c3877df203e4483a3fd1c6581f4608dd8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd26c97fe1cca9b71e7440fc950bbe6e346679bc8f6df8614c88e75dfa8011e2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variant639e429d1d43a69b86978a84b0fbb4c3877df203e4483a3fd1c6581f4608dd8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f843683548ae34b0a99f489e232f5de199d0b904b634ece81d6c591b04802751`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toString : IO.Error → String
  | unexpectedEof                            => "end of file"
  | inappropriateType (some fn) code details => fopenErrorToString "inappropriate type" fn code (some details)
  | inappropriateType none code details      => otherErrorToString "inappropriate type" code (some details)
  | interrupted fn code details              => fopenErrorToString "interrupted system call" fn code (some details)
  | invalidArgument (some fn) code details   => fopenErrorToString "invalid argument" fn code (some details)
  | invalidArgument none code details        => otherErrorToString "invalid argument" code (some details)
  | noFileOrDirectory fn code _              => fopenErrorToString "no such file or directory" fn code none
  | noSuchThing (some fn) code details       => fopenErrorToString "no such thing" fn code (some details)
  | noSuchThing none code details            => otherErrorToString "no such thing" code (some details)
  | permissionDenied (some fn) code details  => fopenErrorToString details fn code none
  | permissionDenied none code details       => otherErrorToString details code none
  | resourceExhausted (some fn) code details => fopenErrorToString "resource exhausted" fn code (some details)
  | resourceExhausted none code details      => otherErrorToString "resource exhausted" code (some details)
  | alreadyExists none code details          => otherErrorToString "already exists" code (some details)
  | alreadyExists (some fn) code details     => fopenErrorToString "already exists" fn code (some details)
  | otherError code details                  => otherErrorToString details code none
  | resourceBusy code details                => otherErrorToString "resource busy" code (some details)
  | resourceVanished code details            => otherErrorToString "resource vanished" code (some details)
  | hardwareFault code _                     => otherErrorToString "hardware fault" code none
  | illegalOperation code details            => otherErrorToString "illegal operation" code (some details)
  | protocolError code details               => otherErrorToString "protocol error" code (some details)
  | timeExpired code details                 => otherErrorToString "time expired" code (some details)
  | unsatisfiedConstraints code _            => otherErrorToString "directory not empty" code none
  | unsupportedOperation code details        => otherErrorToString "unsupported operation" code (some details)
  | userError msg                            => msg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variant639e429d1d43a69b86978a84b0fbb4c3877df203e4483a3fd1c6581f4608dd8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variant639e429d1d43a69b86978a84b0fbb4c3877df203e4483a3fd1c6581f4608dd8b.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef33f8b03204d703746689500152544fd7ef3435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
