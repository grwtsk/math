# exterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aaf2b8281568710a95b3d32f5071c0c4709807d7d5f7ca2479ae4ff47f04fe1d",
  "kind": "def",
  "lexical_name": "exterior",
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
  "slug": "exterior--93a666de56a3f6fdb2bb71e9",
  "source": {
    "blob": "f85b5fec091fed5c7a3a0d033060528f59c4091e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93a666de56a3f6fdb2bb71e9b0ecfa0611267ee4f20265cdcd1763132a8563c2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aaf2b8281568710a95b3d32f5071c0c4709807d7d5f7ca2479ae4ff47f04fe1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exterior {rows columns : Nat} (cut : CutDatum rows columns) :
    Finset (GridCell rows columns) :=
  Finset.univ \ cut.selected

/-- Retained cells sharing a cubical edge with at least one selected cell.
This is the exposed boundary of the retained cubical complex; the configurable
foreground/background digital-adjacency interfaces are defined separately
below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variantd1838e57ccc5f953db6bf58cffe15996a7ddae25bb81cce1fe1daba4ed36d086.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f85b5fec091fed5c7a3a0d033060528f59c4091e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
