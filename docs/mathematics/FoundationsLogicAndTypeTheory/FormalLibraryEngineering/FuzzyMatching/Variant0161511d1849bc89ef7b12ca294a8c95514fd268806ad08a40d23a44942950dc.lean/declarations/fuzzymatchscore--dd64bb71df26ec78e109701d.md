# fuzzyMatchScore?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a54735680e882ac9c1ac259a8de6d01a60e165f3a184e613f018e2f5ffe1836",
  "kind": "def",
  "lexical_name": "fuzzyMatchScore?",
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
  "slug": "fuzzymatchscore--dd64bb71df26ec78e109701d",
  "source": {
    "blob": "3227c14d58d907195bccb2f10c7adb80fb99a634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 270,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant0161511d1849bc89ef7b12ca294a8c95514fd268806ad08a40d23a44942950dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd64bb71df26ec78e109701d52f533d8a888c97acfbff5f050eaec0833e189d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant0161511d1849bc89ef7b12ca294a8c95514fd268806ad08a40d23a44942950dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a54735680e882ac9c1ac259a8de6d01a60e165f3a184e613f018e2f5ffe1836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fuzzyMatchScore? (pattern word : String) : Option Float := Id.run do
  /- Some fast and simple checks. -/
  if pattern.isEmpty then
    return some 1
  if pattern.length > word.length then
    return none
  if !(pattern.charactersIn word) then
    return none

  let some score := fuzzyMatchCore pattern word (stringInfo pattern) (stringInfo word)
    | none
  let mut score := score

  /- Bonus if every character is matched. -/
  if pattern.length == word.length then
    score := score * 2

  /- Perfect score per character. -/
  let perfect := 4
  /- Perfect score for full match given the heuristic in `matchResult`;
  the latter term represents the bonus of a perfect consecutive run. -/
  let perfectMatch := (perfect * pattern.length + ((pattern.length * (pattern.length + 1) / 2) - 1))
  let normScore := Float.ofInt score / Float.ofInt perfectMatch

  return some <| min 1 (max 0 normScore)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant0161511d1849bc89ef7b12ca294a8c95514fd268806ad08a40d23a44942950dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant0161511d1849bc89ef7b12ca294a8c95514fd268806ad08a40d23a44942950dc.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3227c14d58d907195bccb2f10c7adb80fb99a634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
