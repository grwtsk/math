# reprint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c6f508c64b4403778015782a1f0eb3683fe153c9ec71ba5da25f9ef3f8b873f",
  "kind": "def",
  "lexical_name": "reprint",
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
  "slug": "reprint--c16edf76c2af51f212f8c969",
  "source": {
    "blob": "7ae2f43f42bcee91140c4db6987b1b19bb78e887",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 391,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0ff05f35682b9082a3e6b8d19a81cdbdc1820cae57f7b7d6fc6c79f02402ddd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c16edf76c2af51f212f8c969332296203600cafaa5032c25df0af5b7fdab1855",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0ff05f35682b9082a3e6b8d19a81cdbdc1820cae57f7b7d6fc6c79f02402ddd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c6f508c64b4403778015782a1f0eb3683fe153c9ec71ba5da25f9ef3f8b873f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def reprint (stx : Syntax) : Option String := do
  let mut s := ""
  for stx in stx.topDown (firstChoiceOnly := true) do
    match stx with
    | atom info val           => s := s ++ reprintLeaf info val
    | ident info rawVal _ _   => s := s ++ reprintLeaf info rawVal.toString
    | node _    kind args     =>
      if kind == choiceKind then
        -- this visit the first arg twice, but that should hardly be a problem
        -- given that choice nodes are quite rare and small
        let s0 ← reprint args[0]!
        for arg in args[1...*] do
          let s' ← reprint arg
          guard (s0 == s')
    | _ => pure ()
  return s
where
  reprintLeaf (info : SourceInfo) (val : String) : String :=
    match info with
    | SourceInfo.original lead _ trail _ => s!"{lead}{val}{trail}"
    -- no source info => add gracious amounts of whitespace to definitely separate tokens
    -- Note that the proper pretty printer does not use this function.
    -- The parser as well always produces source info, so round-tripping is still
    -- guaranteed.
    | _                                => s!" {val} "

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0ff05f35682b9082a3e6b8d19a81cdbdc1820cae57f7b7d6fc6c79f02402ddd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0ff05f35682b9082a3e6b8d19a81cdbdc1820cae57f7b7d6fc6c79f02402ddd5.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ae2f43f42bcee91140c4db6987b1b19bb78e887` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
