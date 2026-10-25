# weeks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d181249e9fee7b334bba34a51f40e0eea6be329cac7c7d16f48358f6bfe6502",
  "kind": "def",
  "lexical_name": "weeks",
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
  "slug": "weeks--fca6397b85a1a0f51c6f4f07",
  "source": {
    "blob": "810d6f3c78c9d984958a4c2dcb48c8dd2779f06a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Year/Variantac13fded946426f0cf4bc02e92425bc62e4e106ccdd4d5d457740bc5670bcba9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fca6397b85a1a0f51c6f4f077b5c91aba1877289059cfe2c02d139421047bbae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Year/Variantac13fded946426f0cf4bc02e92425bc62e4e106ccdd4d5d457740bc5670bcba9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d181249e9fee7b334bba34a51f40e0eea6be329cac7c7d16f48358f6bfe6502`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def weeks (year : Offset) : Bounded.LE 52 53 :=
  let p (year : Offset) := Bounded.LE.byEmod (year.toInt + year.toInt/4 - year.toInt/100 + year.toInt/400) 7 (by decide)

  let add : Bounded.LE 0 1 :=
    if (p year).val = 4 ∨ (p (year - 1)).val = 3
      then Bounded.LE.ofNat 1 (by decide)
      else Bounded.LE.ofNat 0 (by decide)

  Bounded.LE.exact 52 |>.addBounds add

/--
Checks if the given date is valid for the specified year, month, and day.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Year/Variantac13fded946426f0cf4bc02e92425bc62e4e106ccdd4d5d457740bc5670bcba9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Year/Variantac13fded946426f0cf4bc02e92425bc62e4e106ccdd4d5d457740bc5670bcba9.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `810d6f3c78c9d984958a4c2dcb48c8dd2779f06a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
