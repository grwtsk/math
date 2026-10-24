# exists_ordered_pivot_normal_form

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e7bb52e-2071-715e-9877-f6347fe9ed4f",
  "kind": "theorem",
  "lexical_name": "exists_ordered_pivot_normal_form",
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
  "slug": "exists-ordered-pivot-normal-form--6effd2f8b85d01710412856d",
  "source": {
    "blob": "6aace9f2684c1bf4f57419d9827903cd23c67c93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6effd2f8b85d01710412856da2f216683ec42fdcbc90526a00cd027f47a76a06",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e7bb52e-2071-715e-9877-f6347fe9ed4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ordered_pivot_normal_form (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A.rank = k) :
    ∃ I : Fin k ↪o Fin n, orderedMinor A I ≠ 0 ∧
      ∃! B : Matrix (Fin k) (Fin n) ℝ,
        columnSubmatrix B I = 1 ∧ frameRowSpace B = frameRowSpace A := by
  obtain ⟨I, hI⟩ := exists_orderedMinor_ne_zero_of_rank A hA
  exact ⟨I, hI, existsUnique_pivotNormalized A I hI⟩

/-- Frame full rank supplies its exact row-subspace dimension without a chosen chart. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aace9f2684c1bf4f57419d9827903cd23c67c93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
