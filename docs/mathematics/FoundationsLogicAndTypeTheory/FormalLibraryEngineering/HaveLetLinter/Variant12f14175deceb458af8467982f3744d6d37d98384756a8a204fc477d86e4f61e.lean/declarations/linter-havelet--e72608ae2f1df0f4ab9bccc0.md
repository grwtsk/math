# linter.haveLet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76eb434f9e874573d91e143609df329ca211556534c097f28a544f5d962ae78a",
  "kind": "register_option",
  "lexical_name": "linter.haveLet",
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
  "slug": "linter-havelet--e72608ae2f1df0f4ab9bccc0",
  "source": {
    "blob": "670bf62a4bb478165ebf7d15014d32da18c50d0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e72608ae2f1df0f4ab9bccc09d1e0d1ca5138e25b20e484e5da114b3fa6c33f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `register_option` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76eb434f9e874573d91e143609df329ca211556534c097f28a544f5d962ae78a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
register_option linter.haveLet : Nat := {
  defValue := 0
  descr := "enable the `have` vs `let` linter:\n\
            * 0 -- inactive;\n\
            * 1 -- active only on noisy declarations;\n\
            * 2 or more -- always active."
}

namespace haveLet

/-- find the `have` syntax. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant12f14175deceb458af8467982f3744d6d37d98384756a8a204fc477d86e4f61e.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `670bf62a4bb478165ebf7d15014d32da18c50d0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
