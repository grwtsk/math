# pivot_mul_pivotNormalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b1bc9b94d15beb3cb56d35a83947f51ab06065b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:343fae81-574e-1945-c787-f84263cf4352",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d70579a8-a599-5c24-bf90-327c8a9e6aca",
  "kind": "theorem",
  "lexical_name": "pivot_mul_pivotNormalize",
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
  "slug": "pivot-mul-pivotnormalize--4c1ca1e59d17a5a6e9a9fee8",
  "source": {
    "blob": "5b1bc9b94d15beb3cb56d35a83947f51ab06065b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c1ca1e59d17a5a6e9a9fee871cb1977abf56251e0680c2faaf938a7d5c9f63f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d70579a8-a599-5c24-bf90-327c8a9e6aca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pivot_mul_pivotNormalize (A : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n)
    (hc : columnMinor A c ≠ 0) :
    columnSubmatrix A c * pivotNormalize A c = A :=
  Matrix.mul_nonsing_inv_cancel_left _ _ (isUnit_iff_ne_zero.mpr hc)

/-- Pivot normalization preserves the independently defined row space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b1bc9b94d15beb3cb56d35a83947f51ab06065b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
