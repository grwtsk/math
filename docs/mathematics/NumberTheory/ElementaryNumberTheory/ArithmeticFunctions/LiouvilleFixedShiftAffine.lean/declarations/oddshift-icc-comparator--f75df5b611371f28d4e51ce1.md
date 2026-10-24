# oddShift_Icc_comparator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:192db2ad-5d43-4abe-2d07-171078a83f08",
  "kind": "theorem",
  "lexical_name": "oddShift_Icc_comparator",
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
  "slug": "oddshift-icc-comparator--f75df5b611371f28d4e51ce1",
  "source": {
    "blob": "9f3ce4b8553de27d257a4c3b8f04fe0f56c14621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 192,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f75df5b611371f28d4e51ce1f3eaffa3a294733ee999f90e8605959acb9be43a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:192db2ad-5d43-4abe-2d07-171078a83f08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oddShift_Icc_comparator (j M : ℕ) :
    (∑ n ∈ Finset.range (2 * (M + 1)),
       fixedShiftTerm (2 * j + 1) n) =
      -(oddAffineLeftTerm j 0 + oddAffineRightTerm j 0 +
        (∑ m ∈ Finset.Icc 1 M, oddAffineLeftTerm j m) +
        (∑ m ∈ Finset.Icc 1 M, oddAffineRightTerm j m)) := by
  rw [oddShift_prefix, range_head_add_Icc, range_head_add_Icc]
  ring

/-- Exact even-shift comparison with two positive-index affine
sums. For the nonproportional interpretation require j>0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f3ce4b8553de27d257a4c3b8f04fe0f56c14621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
