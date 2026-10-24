# explicitXiHeadJ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f47f78945e05a8f6e3f2ed5c6940bd9dcb06e608d097f9c9b6716e4f682845f",
  "kind": "def",
  "lexical_name": "explicitXiHeadJ",
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
  "slug": "explicitxiheadj--21b78a2c8fe6317d2cbae88c",
  "source": {
    "blob": "158128759131d3fc9baf718be3749b322acd1068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 162,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variantb7ce0b94cd99005197339a1eb24f251ad8c6dd5fea6341d071d0d0c758416411.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21b78a2c8fe6317d2cbae88c1803f26721b3f3a27221454887cd2026c48d4e44",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variantb7ce0b94cd99005197339a1eb24f251ad8c6dd5fea6341d071d0d0c758416411.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f47f78945e05a8f6e3f2ed5c6940bd9dcb06e608d097f9c9b6716e4f682845f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def explicitXiHeadJ : ℝ :=
  2 * (Real.log 2 / Real.sqrt 2 + Real.log 3 / Real.sqrt 3 + Real.log 2 / 2 +
    Real.log 5 / Real.sqrt 5 + Real.log 7 / Real.sqrt 7 - Real.log 420 / Real.sqrt 7) -
    2 * (Real.sqrt 7 - Real.sqrt 2) +
      4 * (Real.eulerMascheroniConstant + 1 - Real.log 2) *
        (1 / Real.sqrt 2 - 1 / Real.sqrt 7)

/-- Evaluation of the literal original source head, without a numerical or signed premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variantb7ce0b94cd99005197339a1eb24f251ad8c6dd5fea6341d071d0d0c758416411.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variantb7ce0b94cd99005197339a1eb24f251ad8c6dd5fea6341d071d0d0c758416411.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `158128759131d3fc9baf718be3749b322acd1068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
