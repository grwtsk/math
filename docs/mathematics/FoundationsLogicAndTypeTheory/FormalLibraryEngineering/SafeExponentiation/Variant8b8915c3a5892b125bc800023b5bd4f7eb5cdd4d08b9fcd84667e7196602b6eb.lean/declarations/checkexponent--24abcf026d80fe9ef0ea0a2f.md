# checkExponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d24eb299e1b2058d698ad9d630bd466d5064f46bbb8b2e8ece524b0326a50558",
  "kind": "def",
  "lexical_name": "checkExponent",
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
  "slug": "checkexponent--24abcf026d80fe9ef0ea0a2f",
  "source": {
    "blob": "476983a5900b990e098a4dd4b1305b1eee65dc54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeExponentiation/Variant8b8915c3a5892b125bc800023b5bd4f7eb5cdd4d08b9fcd84667e7196602b6eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24abcf026d80fe9ef0ea0a2f75ea170beef7aa59fe51ab10897be22c72283bb4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeExponentiation/Variant8b8915c3a5892b125bc800023b5bd4f7eb5cdd4d08b9fcd84667e7196602b6eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d24eb299e1b2058d698ad9d630bd466d5064f46bbb8b2e8ece524b0326a50558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkExponent (n : Nat) (warning := true) : CoreM Bool := do
  let threshold := exponentiation.threshold.get (← getOptions)
  if n > threshold then
    if (← pure warning <&&> logMessageKind `unsafe.exponentiation) then
      logWarning s!"exponent {n} exceeds the threshold {threshold}, exponentiation operation was not evaluated, use `set_option {exponentiation.threshold.name} <num>` to set a new threshold"
    return false
  else
    return true

end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeExponentiation/Variant8b8915c3a5892b125bc800023b5bd4f7eb5cdd4d08b9fcd84667e7196602b6eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeExponentiation/Variant8b8915c3a5892b125bc800023b5bd4f7eb5cdd4d08b9fcd84667e7196602b6eb.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476983a5900b990e098a4dd4b1305b1eee65dc54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
