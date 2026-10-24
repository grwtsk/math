# reverse_X_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:048babf1-dd44-8d92-50ae-9d1166c60ef7",
  "kind": "lemma",
  "lexical_name": "reverse_X_mul",
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
  "slug": "reverse-x-mul--8b23fd72701885c43731adf8",
  "source": {
    "blob": "a0531dc47cc4ec4a77daa3f39a2784fbf1c826f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 317,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b23fd72701885c43731adf8eba29993f633c7ca3888032216423133a94ddca7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:048babf1-dd44-8d92-50ae-9d1166c60ef7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma reverse_X_mul (p : R[X]) : reverse (X * p) = reverse p := by
  rw [commute_X p, reverse_mul_X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0531dc47cc4ec4a77daa3f39a2784fbf1c826f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
