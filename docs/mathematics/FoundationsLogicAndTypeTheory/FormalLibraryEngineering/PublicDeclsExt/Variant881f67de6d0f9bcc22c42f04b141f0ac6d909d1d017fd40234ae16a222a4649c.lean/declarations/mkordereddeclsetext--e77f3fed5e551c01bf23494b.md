# mkOrderedDeclSetExt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:936f3f086ee38c14667f17c0527c2b35630ef185bdac3dada2135b6e267d3716",
  "kind": "def",
  "lexical_name": "mkOrderedDeclSetExt",
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
  "slug": "mkordereddeclsetext--e77f3fed5e551c01bf23494b",
  "source": {
    "blob": "38d2be93b8cb371fe1aa4a4b7fee904dfa0331f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PublicDeclsExt/Variant881f67de6d0f9bcc22c42f04b141f0ac6d909d1d017fd40234ae16a222a4649c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e77f3fed5e551c01bf23494b6aa79421bb691953f622176bdab52feef1bbc181",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PublicDeclsExt/Variant881f67de6d0f9bcc22c42f04b141f0ac6d909d1d017fd40234ae16a222a4649c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:936f3f086ee38c14667f17c0527c2b35630ef185bdac3dada2135b6e267d3716`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkOrderedDeclSetExt : IO (EnvExtension (List Name × NameSet)) :=
  registerEnvExtension
    (mkInitial := pure ([], {}))
    (asyncMode := .sync)
    (replay? := some <| fun oldState newState _ s =>
      let newEntries := newState.1.take (newState.1.length - oldState.1.length)
      newEntries.reverse.foldl (init := s) fun s n =>
        if s.2.contains n then
          s
        else
          (n :: s.1, if newState.2.contains n then s.2.insert n else s.2))

/--
Set of declarations to be exported to other modules; visibility shared by base/mono/IR phases.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PublicDeclsExt/Variant881f67de6d0f9bcc22c42f04b141f0ac6d909d1d017fd40234ae16a222a4649c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PublicDeclsExt/Variant881f67de6d0f9bcc22c42f04b141f0ac6d909d1d017fd40234ae16a222a4649c.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38d2be93b8cb371fe1aa4a4b7fee904dfa0331f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
