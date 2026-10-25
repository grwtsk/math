# fixedPointNaturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:124402a3-2958-f98a-6136-c68866e2e885",
  "kind": "theorem",
  "lexical_name": "fixedPointNaturality",
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
  "slug": "fixedpointnaturality--d02203759b760704edf896b1",
  "source": {
    "blob": "f2dfa320be06bef3eb17e5d303910fbcfc9b38df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d02203759b760704edf896b1ba0be612ba3a3dcb5aba6b6125a274da435a3e7a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:124402a3-2958-f98a-6136-c68866e2e885`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedPointNaturality
    (naturality : OperatorPathNaturality operators action)
    (authority : Concept.Profile) :
    Concept.PropertyNaturality action
      (exactFixedPointProperty operators authority) where
  natural := by
    intro source target path state fixed
    change
      (operators target).step (action.map path state) =
        action.map path state
    calc
      (operators target).step (action.map path state) =
          action.map path ((operators source).step state) :=
        (naturality.step_commutes path state).symm
      _ = action.map path state :=
        congrArg (action.map path) fixed

/-- A commuting path maps one exact fixed point to another exact fixed point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2dfa320be06bef3eb17e5d303910fbcfc9b38df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
