# isUnderscore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3fae48cb61e37f775fd46c79153f9c04cac9a2bffcdd11dc7e25ddd77dd62a3",
  "kind": "def",
  "lexical_name": "isUnderscore",
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
  "slug": "isunderscore--a274739fb458daae52037119",
  "source": {
    "blob": "734a5a1ab956d0a0a9362e968e54dc8231910429",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a274739fb458daae52037119db5c1783fce7c68b592d916b0608574fbe4cd7a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3fae48cb61e37f775fd46c79153f9c04cac9a2bffcdd11dc7e25ddd77dd62a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def isUnderscore : Term → Bool
  | `(_) | `(fun $_ => _) => true
  | _ => false

/-- `resolvePushId?` is a version of `resolveId?` that also supports notations like `_ ∈ _`,
`∃ x, _` and `∑ x, _`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `734a5a1ab956d0a0a9362e968e54dc8231910429` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
