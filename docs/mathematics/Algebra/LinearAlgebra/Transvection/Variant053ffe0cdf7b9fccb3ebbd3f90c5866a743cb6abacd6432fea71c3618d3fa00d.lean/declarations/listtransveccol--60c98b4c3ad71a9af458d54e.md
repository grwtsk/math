# listTransvecCol

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abed6510feefc98429e21df835862b2ef4cec13cd505853208906e8e648dd8c9",
  "kind": "def",
  "lexical_name": "listTransvecCol",
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
  "slug": "listtransveccol--60c98b4c3ad71a9af458d54e",
  "source": {
    "blob": "e46f0b5feaf0882c66dbe82c198cb27c96eaf3f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 330,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60c98b4c3ad71a9af458d54ecc8474772aada9ad8ad08d601c081247a764952d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abed6510feefc98429e21df835862b2ef4cec13cd505853208906e8e648dd8c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def listTransvecCol : List (Matrix (Fin r ⊕ Unit) (Fin r ⊕ Unit) 𝕜) :=
  List.ofFn fun i : Fin r =>
    transvection (inl i) (inr unit) <| -M (inl i) (inr unit) / M (inr unit) (inr unit)

/-- A list of transvections such that multiplying on the right with these transvections will replace
the last row with zeroes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46f0b5feaf0882c66dbe82c198cb27c96eaf3f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
