# mkSymSimpExt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da7ce1866b6a6c8a9ca47111688423193a21e6c57aed1461af9dc22399473a41",
  "kind": "def",
  "lexical_name": "mkSymSimpExt",
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
  "slug": "mksymsimpext--893e9c515c3a0ccb6e678b5f",
  "source": {
    "blob": "46a348406fecc28002a9f23519348b5c80aa515d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:893e9c515c3a0ccb6e678b5f59ed2522327f71a0b0fd6f9e95c508625374a68a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da7ce1866b6a6c8a9ca47111688423193a21e6c57aed1461af9dc22399473a41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkSymSimpExt (name : Name := by exact decl_name%) : IO SymSimpExtension :=
  registerSimpleScopedEnvExtension {
    name     := name
    initial  := {}
    addEntry := fun thms thm => thms.insert thm
    exportEntry? := fun _ thm =>
      match thm.expr with
      | .const declName _ =>
        if isPrivateName declName then ⟨none, none, some thm⟩
        else .uniform (some thm)
      | _ => .uniform (some thm)
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46a348406fecc28002a9f23519348b5c80aa515d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
