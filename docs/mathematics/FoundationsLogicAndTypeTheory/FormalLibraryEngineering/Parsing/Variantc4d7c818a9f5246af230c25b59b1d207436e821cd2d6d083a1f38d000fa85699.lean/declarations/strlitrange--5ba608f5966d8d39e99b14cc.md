# strLitRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81e96886335848e519c118dc5c66c53357d07e63ec9dd290d5c977081e2f9862",
  "kind": "def",
  "lexical_name": "strLitRange",
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
  "slug": "strlitrange--5ba608f5966d8d39e99b14cc",
  "source": {
    "blob": "8356d89deb4d462c5b7f1840a2e584d941339a2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ba608f5966d8d39e99b14ccb0c079ee736583b632556587e85318f13fe637ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81e96886335848e519c118dc5c66c53357d07e63ec9dd290d5c977081e2f9862`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def strLitRange [Monad m] [MonadFileMap m] (s : StrLit) : m Lean.Syntax.Range := do
  let pos := (s.raw.getPos? (canonicalOnly := true)).get!
  let endPos := s.raw.getTailPos? true |>.get!
  return ⟨pos, endPos⟩

variable [Monad m] [MonadFileMap m] [MonadEnv m]
variable [MonadError m] [AddMessageContext m] [MonadLog m] [MonadOptions m]

/--
Parses a string literal's contents directly from its decoded value rather than from the source file.
This is used when the literal has no source position, as in a docstring that came from a macro.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8356d89deb4d462c5b7f1840a2e584d941339a2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
