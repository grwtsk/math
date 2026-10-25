# ModuleKey.lexicalKey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59b615c07ea9ec442d4a40ff00be4fe39c860b23f4709d176672053108d04eff",
  "kind": "def",
  "lexical_name": "ModuleKey.lexicalKey",
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
  "slug": "modulekey-lexicalkey--4c5de1d12c9d12e80cb6df99",
  "source": {
    "blob": "759be596d67fde5412a166d3c1d9198808b8d744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleKey/Variant25401ae486f954d1c647c5b5e5cd7f6e0738d58992b67cd920a7b2efabf98257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c5de1d12c9d12e80cb6df999e62d2b5dae681a2a4f4edfb3e6bfc6e48f74d60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleKey/Variant25401ae486f954d1c647c5b5e5cd7f6e0738d58992b67cd920a7b2efabf98257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59b615c07ea9ec442d4a40ff00be4fe39c860b23f4709d176672053108d04eff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–12.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ModuleKey.lexicalKey
    (M : ModuleKey) : String :=
  M.moduleName ++ "\n" ++ M.file

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleKey/Variant25401ae486f954d1c647c5b5e5cd7f6e0738d58992b67cd920a7b2efabf98257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleKey/Variant25401ae486f954d1c647c5b5e5cd7f6e0738d58992b67cd920a7b2efabf98257.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `759be596d67fde5412a166d3c1d9198808b8d744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
