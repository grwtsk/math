# _root_.DecidableLT.ofOrd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b02423156fd9e4d2e789d4b5e75c694a20264c2b00bac321804d779f29dad66",
  "kind": "def",
  "lexical_name": "_root_.DecidableLT.ofOrd",
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
  "slug": "root-decidablelt-oford--8825c5b3970f53172feb4469",
  "source": {
    "blob": "a179b5d02d5671e3969076134f74434527132c1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant6e08ca9e5d4f166024c533d702bd86db1c6c137b63bed7efb19c7639fc7bed8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8825c5b3970f53172feb4469a641dff74db9e8cdc2ddf8b0981bf0bc12a95c3d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant6e08ca9e5d4f166024c533d702bd86db1c6c137b63bed7efb19c7639fc7bed8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b02423156fd9e4d2e789d4b5e75c694a20264c2b00bac321804d779f29dad66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def _root_.DecidableLT.ofOrd (α : Type u) [LE α] [LT α] [Ord α] [LawfulOrderOrd α]
    [LawfulOrderLT α] :
    DecidableLT α :=
  fun a b => if h : compare a b = .lt then
      isTrue (by simpa only [compare_eq_lt] using h)
    else
      isFalse (by simpa only [compare_eq_lt] using h)

/--
Creates a `BEq α` instance from an `Ord α` instance. -/
@[inline, expose, instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant6e08ca9e5d4f166024c533d702bd86db1c6c137b63bed7efb19c7639fc7bed8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant6e08ca9e5d4f166024c533d702bd86db1c6c137b63bed7efb19c7639fc7bed8c.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a179b5d02d5671e3969076134f74434527132c1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
