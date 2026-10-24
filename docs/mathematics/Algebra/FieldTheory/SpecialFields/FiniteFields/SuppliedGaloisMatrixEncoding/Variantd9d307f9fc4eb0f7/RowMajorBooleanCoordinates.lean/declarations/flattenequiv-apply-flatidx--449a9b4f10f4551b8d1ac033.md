# flattenEquiv_apply_flatIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:898cb192-b72e-e1ed-abaa-2166c74e94b8",
  "kind": "theorem",
  "lexical_name": "flattenEquiv_apply_flatIdx",
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
  "slug": "flattenequiv-apply-flatidx--449a9b4f10f4551b8d1ac033",
  "source": {
    "blob": "bc641de6e9b11474f294d89f8440e31cd5fb61c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 90,
    "path": "GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:449a9b4f10f4551b8d1ac033aea5758bbf341985e21efd7e39827ae4a447f857",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:898cb192-b72e-e1ed-abaa-2166c74e94b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flattenEquiv_apply_flatIdx
    (A : BitMatrix m n) (i : Fin m) (j : Fin n) :
    flattenEquiv m n A (BitMatrix.ArrayBacked.flatIdx i j) = A i j := by
  change A ((rowMajorIndexEquiv m n).symm (BitMatrix.ArrayBacked.flatIdx i j)).1
      ((rowMajorIndexEquiv m n).symm (BitMatrix.ArrayBacked.flatIdx i j)).2 = A i j
  have hp : (rowMajorIndexEquiv m n).symm (BitMatrix.ArrayBacked.flatIdx i j) = (i, j) := by
    apply (rowMajorIndexEquiv m n).injective
    rw [Equiv.apply_symm_apply, rowMajorIndexEquiv_apply]
  rw [hp]


/-- Row-major flattening preserves pointwise XOR. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc641de6e9b11474f294d89f8440e31cd5fb61c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
