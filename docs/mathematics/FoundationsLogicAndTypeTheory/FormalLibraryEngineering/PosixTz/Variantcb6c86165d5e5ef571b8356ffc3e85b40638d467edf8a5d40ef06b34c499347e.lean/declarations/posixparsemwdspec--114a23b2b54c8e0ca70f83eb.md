# posixParseMwdSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c352f963b5dc8dfdc73cc823e1b122e95de21f034247528d78d98145a7cbe711",
  "kind": "def",
  "lexical_name": "posixParseMwdSpec",
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
  "slug": "posixparsemwdspec--114a23b2b54c8e0ca70f83eb",
  "source": {
    "blob": "5f0a246349c315d480aeddaf7b159b3df3e95fa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PosixTz/Variantcb6c86165d5e5ef571b8356ffc3e85b40638d467edf8a5d40ef06b34c499347e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:114a23b2b54c8e0ca70f83eb992d81e5b66def546975b29a855fcabdcfb2ac9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PosixTz/Variantcb6c86165d5e5ef571b8356ffc3e85b40638d467edf8a5d40ef06b34c499347e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c352f963b5dc8dfdc73cc823e1b122e95de21f034247528d78d98145a7cbe711`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def posixParseMwdSpec : Parser TransitionSpec := do
  skipChar 'M'

  let month ← parseBoundedNat "month" <* skipChar '.'
  let week ← parseBoundedNat "week" (· ≤ 5) <* skipChar '.'

  -- Convert POSIX day (0=Sunday … 6=Saturday) to ISO ordinal (1=Monday … 7=Sunday).
  let d ← digits
  if d > 6 then fail s!"day {d} out of range 0-6"

  let day ← match (Bounded.LE.ofInt (if d == 0 then 7 else Int.ofNat d)) with
    | some wd => pure wd
    | none => fail s!"day {d} out of range 0-6"

  return .mwd month week day

-- "J" <n> where n is 1–365; Feb 29 is never counted.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PosixTz/Variantcb6c86165d5e5ef571b8356ffc3e85b40638d467edf8a5d40ef06b34c499347e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PosixTz/Variantcb6c86165d5e5ef571b8356ffc3e85b40638d467edf8a5d40ef06b34c499347e.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f0a246349c315d480aeddaf7b159b3df3e95fa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
