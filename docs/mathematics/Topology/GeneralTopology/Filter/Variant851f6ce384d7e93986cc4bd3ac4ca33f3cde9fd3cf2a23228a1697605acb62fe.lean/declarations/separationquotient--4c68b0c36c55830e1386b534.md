# SeparationQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b642af859bdb33546c067d6faba0c78e373002afe747be504dc8881054f33200",
  "kind": "def",
  "lexical_name": "SeparationQuotient",
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
  "slug": "separationquotient--4c68b0c36c55830e1386b534",
  "source": {
    "blob": "346f2dbbe9c9c32560e0cf600681cded46ae67c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 234,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c68b0c36c55830e1386b5342c19e3e1196949dc06343216f4e8e635e327a947",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b642af859bdb33546c067d6faba0c78e373002afe747be504dc8881054f33200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SeparationQuotient := Quotient (inseparableSetoid X)

variable {X}

section Lim


/-- If `f` is a filter, then `Filter.lim f` is a limit of the filter, if it exists. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `346f2dbbe9c9c32560e0cf600681cded46ae67c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
