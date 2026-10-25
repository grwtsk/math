# ToInt.Div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02dd3ee640ee9fbd8d9db5131a4708bacf32f1879847f948cbb37e3e814f0941",
  "kind": "class",
  "lexical_name": "ToInt.Div",
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
  "slug": "toint-div--1c6d4c0e0a019581c22b2f2c",
  "source": {
    "blob": "50820fc28fefd3edf29b05335ab7ef90553fdbf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 320,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c6d4c0e0a019581c22b2f2c0378b0080ccd82d7a6c4175a36fc08d60e9592bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02dd3ee640ee9fbd8d9db5131a4708bacf32f1879847f948cbb37e3e814f0941`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ToInt.Div (α : Type u) [Div α] (I : outParam IntInterval) [ToInt α I] where
  /--
  The embedding takes division to division (without needing to wrap into the range interval).
  One might expect a `wrap` on the right hand side,
  but in practice this stronger statement is usually true.
  -/
  toInt_div : ∀ x y : α, toInt (x / y) = toInt x / toInt y

/--
The embedding into the integers is monotone.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50820fc28fefd3edf29b05335ab7ef90553fdbf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
