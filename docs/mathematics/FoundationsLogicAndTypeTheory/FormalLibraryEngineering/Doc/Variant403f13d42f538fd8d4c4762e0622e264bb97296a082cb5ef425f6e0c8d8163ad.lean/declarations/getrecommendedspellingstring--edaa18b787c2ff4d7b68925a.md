# getRecommendedSpellingString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72147be8ef621752f9249f96137ff662331612e63e3de087021ac9c8ca20e237",
  "kind": "def",
  "lexical_name": "getRecommendedSpellingString",
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
  "slug": "getrecommendedspellingstring--edaa18b787c2ff4d7b68925a",
  "source": {
    "blob": "89488ad7b55151a6b0203e16e72fb2096f0b5037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant403f13d42f538fd8d4c4762e0622e264bb97296a082cb5ef425f6e0c8d8163ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edaa18b787c2ff4d7b68925ad5eaeea7d6f53e570202555138180b857ead66ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant403f13d42f538fd8d4c4762e0622e264bb97296a082cb5ef425f6e0c8d8163ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72147be8ef621752f9249f96137ff662331612e63e3de087021ac9c8ca20e237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getRecommendedSpellingString (env : Environment) (declName : Name) : String := Id.run do
  let spellings := getRecommendedSpellingsForName env declName
  if spellings.size == 0 then ""
  else "\n\nConventions for notations in identifiers:\n\n" ++ String.join (spellings.toList.map bullet) |>.trimAsciiEnd |>.copy
where
  indentLine (str : String) : String :=
    (if str.all Char.isWhitespace then str else "   " ++ str) ++ "\n"
  bullet (spelling : RecommendedSpelling) : String :=
    let firstLine := s!" * The recommended spelling of `{spelling.«notation»}` in identifiers is `{spelling.recommendedSpelling}`"
    let additionalInfoLines := spelling.additionalInformation?.map (·.split '\n' |>.toStringList)
    match additionalInfoLines with
    | none | some [] => firstLine ++ ".\n\n"
    | some [l] => firstLine ++ s!" ({l.trimAsciiEnd}).\n\n"
    | some ls => firstLine ++ ".\n\n" ++ String.join (ls.map indentLine) ++ "\n\n"

end Lean.Parser.Term.Doc
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant403f13d42f538fd8d4c4762e0622e264bb97296a082cb5ef425f6e0c8d8163ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant403f13d42f538fd8d4c4762e0622e264bb97296a082cb5ef425f6e0c8d8163ad.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89488ad7b55151a6b0203e16e72fb2096f0b5037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
