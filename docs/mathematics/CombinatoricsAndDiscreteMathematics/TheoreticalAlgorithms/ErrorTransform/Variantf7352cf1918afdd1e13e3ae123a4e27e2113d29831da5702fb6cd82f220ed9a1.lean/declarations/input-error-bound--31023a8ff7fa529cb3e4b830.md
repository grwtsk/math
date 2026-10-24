# input_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1daff2bb-4b18-2028-e05b-651405a652a1",
  "kind": "theorem",
  "lexical_name": "input_error_bound",
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
  "slug": "input-error-bound--31023a8ff7fa529cb3e4b830",
  "source": {
    "blob": "b4f03457fc634d747ab0c19df315ad47aba748fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 305,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31023a8ff7fa529cb3e4b830eeff2fd47c81c9204a94eac6a77469a4de356f05",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1daff2bb-4b18-2028-e05b-651405a652a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem input_error_bound
    (approximation : ControlledApproximation X Y)
    {implementationInput referenceInput : X}
    {initial : ℝ≥0}
    (initialSound :
      nndist implementationInput referenceInput ≤ initial) :
    nndist
        (approximation.implementation implementationInput)
        (approximation.reference referenceInput) ≤
      approximation.errorTransformer initial := by
  calc
    nndist
        (approximation.implementation implementationInput)
        (approximation.reference referenceInput)
        ≤
        nndist
            (approximation.implementation implementationInput)
            (approximation.reference implementationInput) +
          nndist
            (approximation.reference implementationInput)
            (approximation.reference referenceInput) :=
      nndist_triangle _ _ _
    _ ≤
        approximation.localError +
          approximation.lipschitz *
            nndist implementationInput referenceInput :=
      add_le_add
        (approximation.localSound implementationInput)
        (approximation.referenceLipschitz.nndist_le
          implementationInput referenceInput)
    _ ≤
        approximation.localError +
          approximation.lipschitz * initial := by
      exact add_le_add_right
        (mul_le_mul_right initialSound approximation.lipschitz)
        approximation.localError
    _ = approximation.errorTransformer initial := by
      simp [errorTransformer, toErrorTransform, ErrorTransform.apply]
      exact add_comm _ _

/-- Parenthesization does not change the declared composite gain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4f03457fc634d747ab0c19df315ad47aba748fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
