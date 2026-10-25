# positivityCanon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6fe89e61fbc8dbc14023aed85ed6be5d2154697f6e9d1a00cbbf396d153b04e5",
  "kind": "def",
  "lexical_name": "positivityCanon",
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
  "slug": "positivitycanon--2b18b58c3cfdfbaa86cb997a",
  "source": {
    "blob": "c2c98a080ce0eb8a5bb5ec95ccfda0f08fe1d15d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 225,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b18b58c3cfdfbaa86cb997afff37809edf631b7212ced8ad1ce5fa09e2d27e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6fe89e61fbc8dbc14023aed85ed6be5d2154697f6e9d1a00cbbf396d153b04e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def positivityCanon (e : Q($α)) : MetaM (Strictness zα pα e) := do
  let _add ← synthInstanceQ q(AddMonoid $α)
  let _le ← synthInstanceQ q(PartialOrder $α)
  let _i ← synthInstanceQ q(CanonicallyOrderedAdd $α)
  assumeInstancesCommute
  pure (.nonnegative q(zero_le $e))

/-- A variation on `assumption` when the hypothesis is `lo ≤ e` where `lo` is a numeral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2c98a080ce0eb8a5bb5ec95ccfda0f08fe1d15d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
