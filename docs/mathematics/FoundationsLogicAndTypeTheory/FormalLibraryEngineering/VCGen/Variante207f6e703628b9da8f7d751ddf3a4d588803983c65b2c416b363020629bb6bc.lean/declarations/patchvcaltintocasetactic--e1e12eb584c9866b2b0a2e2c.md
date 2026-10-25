# patchVCAltIntoCaseTactic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d958f79f28272df640ddef4ee4e6551ef2c6465b2d26704c4211602dcd446ebf",
  "kind": "def",
  "lexical_name": "patchVCAltIntoCaseTactic",
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
  "slug": "patchvcaltintocasetactic--e1e12eb584c9866b2b0a2e2c",
  "source": {
    "blob": "964b9a3545181fb2bd21a38d7eac3761854f7eb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 428,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1e12eb584c9866b2b0a2e2c340d05e568995b50a2380104035e75a12f8f4a35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d958f79f28272df640ddef4ee4e6551ef2c6465b2d26704c4211602dcd446ebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def patchVCAltIntoCaseTactic (alt : TSyntax ``vcAlt) : TSyntax ``case :=
  -- syntax vcAlt := sepBy1(caseArg, " | ") " => " tacticSeq
  -- syntax case := "case " sepBy1(caseArg, " | ") " => " tacticSeq
  ⟨alt.raw |>.setKind ``case |>.setArg 0 (mkAtom "case")⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `964b9a3545181fb2bd21a38d7eac3761854f7eb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
