# lookup_sorted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abd8e381-f449-4825-7e12-7618ee06829c",
  "kind": "theorem",
  "lexical_name": "lookup_sorted",
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
  "slug": "lookup-sorted--e317b6f076be2093738bbc02",
  "source": {
    "blob": "d81a210bf99d15ebf74df90acce4ac92f7042be9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 279,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variantef92665f897771fdf850b780f9d0966a8fd76ed0ced850c784e6f9734be66334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e317b6f076be2093738bbc02aecc5aa6204ff9183a7f396be1b0d3547065288c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variantef92665f897771fdf850b780f9d0966a8fd76ed0ced850c784e6f9734be66334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abd8e381-f449-4825-7e12-7618ee06829c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lookup_sorted {context : List (Expr Bool)} {index : Nat} {type : Expr Bool}
    (lookup : Lookup context index type) (valid : ValidContext monomorphicArrow context) :
    ∃ sort, HasType monomorphicArrow context type (.sort sort) := by
  induction valid generalizing index type with
  | nil => cases lookup
  | cons tail typed ih =>
      cases lookup with
      | zero => exact ⟨_, .weaken typed typed⟩
      | succ declared lookup =>
          obtain ⟨sourceSort, sourceTyped⟩ := ih lookup
          exact ⟨sourceSort, .weaken sourceTyped typed⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variantef92665f897771fdf850b780f9d0966a8fd76ed0ced850c784e6f9734be66334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variantef92665f897771fdf850b780f9d0966a8fd76ed0ced850c784e6f9734be66334.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d81a210bf99d15ebf74df90acce4ac92f7042be9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
