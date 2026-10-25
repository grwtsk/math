# CanonicalPath.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7aebf3c8490f98c572a44f6aac60a18de36aa442689c7819918bd0dcb506716d",
  "kind": "def",
  "lexical_name": "CanonicalPath.Valid",
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
  "slug": "canonicalpath-valid--14305e967fcd0b4721e49efb",
  "source": {
    "blob": "9cda78cb78865bce95818dab3fb1df26cb09e50b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalPath/Variant2f95b081351b45a7b2520d9da6638bc02bff383393adfe4740680093647fcd72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14305e967fcd0b4721e49efbb08baa1a1c6b02445395f6957be622b6ddd65ad6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalPath/Variant2f95b081351b45a7b2520d9da6638bc02bff383393adfe4740680093647fcd72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7aebf3c8490f98c572a44f6aac60a18de36aa442689c7819918bd0dcb506716d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CanonicalPath.Valid (path : CanonicalPath) : Prop :=
  path.value ≠ "" ∧
  path.value.startsWith "/" = false ∧
  path.value.contains '\\' = false ∧
  (path.value.splitOn "/").all (fun component ↦ component != "..") = true

end Mathematics.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalPath/Variant2f95b081351b45a7b2520d9da6638bc02bff383393adfe4740680093647fcd72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalPath/Variant2f95b081351b45a7b2520d9da6638bc02bff383393adfe4740680093647fcd72.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cda78cb78865bce95818dab3fb1df26cb09e50b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
