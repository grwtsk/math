# formatRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da5596d0e9c0aa6c231b104d8bd804a4c27a1a42280637874a056bcbcb18907c",
  "kind": "def",
  "lexical_name": "formatRat",
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
  "slug": "formatrat--583e0be5d5eeab56566a7ecd",
  "source": {
    "blob": "8ed0e55669afd09c6c89af2b58a88c6b3ca2b29e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 202,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:583e0be5d5eeab56566a7ecd0580a86b6428e3b5e2b847bf81150af49524e313",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da5596d0e9c0aa6c231b104d8bd804a4c27a1a42280637874a056bcbcb18907c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def formatRat (q : ℚ) (_precision : Nat := 6) : String :=
  -- Convert to decimal approximation
  let num := q.num
  let den := q.den
  if den == 1 then
    toString num
  else
    -- Compute decimal approximation manually
    let (sign, absNum) := if num < 0 then ("-", -num) else ("", num)
    let intPart := absNum / den
    let fracPart := absNum % den
    if fracPart == 0 then
      s!"{sign}{intPart}"
    else
      -- Compute 6 decimal digits
      let scaled := fracPart * 1000000 / den
      s!"{sign}{intPart}.{scaled}"

/-- Format an interval for display -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ed0e55669afd09c6c89af2b58a88c6b3ca2b29e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
