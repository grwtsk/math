# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasOxfordStrings.Variantad327cf0a32ddfffca166a191dc84db4df7e356c903f73ee897d84c6ea3228bd.Nat.toOrdinal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:720993a4a8db282d24b9b69f87af820646f49d9acd21cdb8f7293e8f9254ee8c",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasOxfordStrings.Variantad327cf0a32ddfffca166a191dc84db4df7e356c903f73ee897d84c6ea3228bd.Nat.toOrdinal",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-hasox--116f1c123449d4e75f2c1938",
  "source": {
    "blob": "5ab40c5ec09548101b4f42e527624212636b6590",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorUtils/Variant62fe89beb2d192487bfc041bef90276bb405ceff14b4332bfdc2687032f5c439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:116f1c123449d4e75f2c1938f1991e91bcd4d5c8587e0d5b021fe28d4058b56a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorUtils/Variant62fe89beb2d192487bfc041bef90276bb405ceff14b4332bfdc2687032f5c439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:720993a4a8db282d24b9b69f87af820646f49d9acd21cdb8f7293e8f9254ee8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasOxfordStrings.Variantad327cf0a32ddfffca166a191dc84db4df7e356c903f73ee897d84c6ea3228bd.Nat.toOrdinal : Nat -> String
  | 0 => "zeroth"
  | 1 => "first"
  | 2 => "second"
  | 3 => "third"
  | 4 => "fourth"
  | 5 => "fifth"
  | 6 => "sixth"
  | 7 => "seventh"
  | 8 => "eighth"
  | 9 => "ninth"
  | 10 => "tenth"
  | n => if n % 100 > 10 && n % 100 < 20 then
      s!"{n}th"
    else if n % 10 == 2 then
      s!"{n}nd"
    else if n % 10 == 3 then
      s!"{n}rd"
    else
      s!"{n}th"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorUtils/Variant62fe89beb2d192487bfc041bef90276bb405ceff14b4332bfdc2687032f5c439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorUtils/Variant62fe89beb2d192487bfc041bef90276bb405ceff14b4332bfdc2687032f5c439.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ab40c5ec09548101b4f42e527624212636b6590` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
