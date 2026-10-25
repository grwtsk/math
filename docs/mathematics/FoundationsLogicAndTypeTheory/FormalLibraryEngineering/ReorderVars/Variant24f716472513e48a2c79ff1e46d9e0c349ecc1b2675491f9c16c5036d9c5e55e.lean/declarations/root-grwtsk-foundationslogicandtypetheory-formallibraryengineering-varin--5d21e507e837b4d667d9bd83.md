# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VarInfo.Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.Int.Internal.Linear.Poly.reorder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06092cb269533616f7722272b418789357e1671865e35d07565986145f9cfe73",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VarInfo.Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.Int.Internal.Linear.Poly.reorder",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-varin--5d21e507e837b4d667d9bd83",
  "source": {
    "blob": "2cae6808e6ea65ba2a295f4ad877fd7c69157b28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d21e507e837b4d667d9bd8357ad8d6dfd0e45f8cb1d73e6fc0f85d6da0d1a14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06092cb269533616f7722272b418789357e1671865e35d07565986145f9cfe73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VarInfo.Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.Int.Internal.Linear.Poly.reorder (p : Poly) (old2new : Array Var) : Poly :=
  match p with
  | .num k => .num k
  | .add a x p => .add a old2new[x]! (p.reorder old2new)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cae6808e6ea65ba2a295f4ad877fd7c69157b28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
