# spanCoeffs_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:708d32bd-8f54-ea2f-7a83-8ada2f705297",
  "kind": "theorem",
  "lexical_name": "spanCoeffs_ne_top",
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
  "slug": "spancoeffs-ne-top--ba7d6af3f8d8464bc10e87e4",
  "source": {
    "blob": "15fa2c7599026f625a9ecf007aadc2eaa3498135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 108,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variantb01196e9a4efd8a0cc1c26837a0212efc4e3a0798d58f7a540272728221ad45e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba7d6af3f8d8464bc10e87e498be690a8088a5eaf00b29ad9ac106e2f7a62638",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variantb01196e9a4efd8a0cc1c26837a0212efc4e3a0798d58f7a540272728221ad45e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:708d32bd-8f54-ea2f-7a83-8ada2f705297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spanCoeffs_ne_top : spanCoeffs k ≠ ⊤ := by
  rw [Ideal.ne_top_iff_one, spanCoeffs, Ideal.span, ← Set.image_univ,
    Finsupp.mem_span_image_iff_linearCombination]
  rintro ⟨v, _, hv⟩
  classical
  replace hv := congr_arg (toSplittingField <| v.support.image Prod.fst) hv
  rw [map_one, Finsupp.linearCombination_apply, Finsupp.sum, map_sum, Finset.sum_eq_zero] at hv
  · exact zero_ne_one hv
  intro j hj
  rw [smul_eq_mul, map_mul, toSplittingField_coeff (Finset.mem_image_of_mem _ hj), mul_zero]

/-- A random maximal ideal that contains `spanEval k` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variantb01196e9a4efd8a0cc1c26837a0212efc4e3a0798d58f7a540272728221ad45e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variantb01196e9a4efd8a0cc1c26837a0212efc4e3a0798d58f7a540272728221ad45e.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15fa2c7599026f625a9ecf007aadc2eaa3498135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
