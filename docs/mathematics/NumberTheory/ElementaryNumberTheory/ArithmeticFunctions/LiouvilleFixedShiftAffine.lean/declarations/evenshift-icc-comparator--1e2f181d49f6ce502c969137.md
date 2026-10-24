# evenShift_Icc_comparator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db6b6263-6461-4e09-822e-b3fc4c0070b2",
  "kind": "theorem",
  "lexical_name": "evenShift_Icc_comparator",
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
  "slug": "evenshift-icc-comparator--1e2f181d49f6ce502c969137",
  "source": {
    "blob": "9f3ce4b8553de27d257a4c3b8f04fe0f56c14621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 203,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e2f181d49f6ce502c9691375c475af4da1863c9ac474fb3c18c65a5fc2e4bbb",
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

Occurrence: `result:db6b6263-6461-4e09-822e-b3fc4c0070b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evenShift_Icc_comparator (j M : ℕ) :
    (∑ n ∈ Finset.range (2 * (M + 1)),
       fixedShiftTerm (2 * j) n) =
      evenAffineLeftTerm j 0 + evenAffineRightTerm j 0 +
        (∑ m ∈ Finset.Icc 1 M, evenAffineLeftTerm j m) +
        (∑ m ∈ Finset.Icc 1 M, evenAffineRightTerm j m) := by
  rw [evenShift_prefix, range_head_add_Icc, range_head_add_Icc]
  ring

/-- The two fixed odd-shift affine pairs have identical nonzero
coefficient determinant h=2j+1. Their coefficients and intercepts
are all natural and positive, exactly as required by the comparator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f3ce4b8553de27d257a4c3b8f04fe0f56c14621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
