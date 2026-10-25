# LeCnstr.norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:299a1716f475e935dd99375bae8a1150c7503aecf1efc073b364aed8fa3ba5b4",
  "kind": "def",
  "lexical_name": "LeCnstr.norm",
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
  "slug": "lecnstr-norm--60112d7e42de18a0dab79d14",
  "source": {
    "blob": "2a5accc7848eccf91fdde5bb792b38f049012fbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60112d7e42de18a0dab79d148a794adf5f1567e9e466d8d458110198d6d9c756",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:299a1716f475e935dd99375bae8a1150c7503aecf1efc073b364aed8fa3ba5b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeCnstr.norm (c : LeCnstr) : LeCnstr :=
  let c := if c.p.isSorted then
    c
  else
    { p := c.p.norm, h := .norm c }
  let k := c.p.gcdCoeffs'
  if k != 1 then
    { p := c.p.div k, h := .divCoeffs c }
  else
    c

/--
Given an equation `c₁` containing the monomial `a*x`, and an inequality constraint `c₂`
containing the monomial `b*x`, eliminate `x` by applying substitution.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a5accc7848eccf91fdde5bb792b38f049012fbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
