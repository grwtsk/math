# atlasHasOmission

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0dd7326fb62d8e577a06b2110c451f32ee5edacd55334f86dd02ee87da6cbcb4",
  "kind": "def",
  "lexical_name": "atlasHasOmission",
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
  "slug": "atlashasomission--0c24561896bd80d724202b26",
  "source": {
    "blob": "907ac5aab34e6ac2b200141d3550d5db3a2f42c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764ProbeTest/Variantb8a580926b4ee4d7a4b476540da63d417e1128ffa132ebc98dc9475de024738e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c24561896bd80d724202b2681b92c4f19b61fa85852bde59e5b7fe817852fc2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764ProbeTest/Variantb8a580926b4ee4d7a4b476540da63d417e1128ffa132ebc98dc9475de024738e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0dd7326fb62d8e577a06b2110c451f32ee5edacd55334f86dd02ee87da6cbcb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def atlasHasOmission (stx : Syntax) : Bool :=
  stx.isOfKind ``Lean.Parser.Term.omission || stx.getArgs.any atlasHasOmission
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764ProbeTest/Variantb8a580926b4ee4d7a4b476540da63d417e1128ffa132ebc98dc9475de024738e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764ProbeTest/Variantb8a580926b4ee4d7a4b476540da63d417e1128ffa132ebc98dc9475de024738e.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `907ac5aab34e6ac2b200141d3550d5db3a2f42c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
