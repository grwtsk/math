# Instruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c1ec306556ccea2895037bbc5f2b0afda7990a0d8c2e88476a7d6e021ae0f2b",
  "kind": "inductive",
  "lexical_name": "Instruction",
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
  "slug": "instruction--7d5e21e5aea5e7aebe21a873",
  "source": {
    "blob": "089d886aaf5cfe2a0cef748bc4412d947b68c885",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant69958d8378310db7d21a0fb4aa6fe1f6d2ab0512cfc43e8ec7777d91a73272a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d5e21e5aea5e7aebe21a87334d89938a83a2f328027c7abc09f397fa4532e89",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant69958d8378310db7d21a0fb4aa6fe1f6d2ab0512cfc43e8ec7777d91a73272a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c1ec306556ccea2895037bbc5f2b0afda7990a0d8c2e88476a7d6e021ae0f2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Instruction
  | li : Word → Instruction
  | load : Register → Instruction
  | sto : Register → Instruction
  | add : Register → Instruction
  deriving Inhabited

/-- Machine state consists of the accumulator and a vector of registers.

The paper uses two functions `c` and `a` for accessing both the accumulator and registers.
For clarity, we make accessing the accumulator explicit and use `read`/`write` for registers.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant69958d8378310db7d21a0fb4aa6fe1f6d2ab0512cfc43e8ec7777d91a73272a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant69958d8378310db7d21a0fb4aa6fe1f6d2ab0512cfc43e8ec7777d91a73272a3.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `089d886aaf5cfe2a0cef748bc4412d947b68c885` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
