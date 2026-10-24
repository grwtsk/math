# integralMatrix_mul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:511af0c8-cca4-554c-15a8-f6ccd4193568",
  "kind": "theorem",
  "lexical_name": "integralMatrix_mul_self",
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
  "slug": "integralmatrix-mul-self--449590189c9a385947158912",
  "source": {
    "blob": "55e78448e70aeb33c015bd33834d4ce6c25dcfbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:449590189c9a38594715891210e185360a6639f63cf2cbc105bbce72ab7cdcbc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:511af0c8-cca4-554c-15a8-f6ccd4193568`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralMatrix_mul_self :
    P.integralMatrix * P.integralMatrix = 1 := by
  ext i j
  classical
  rw [Matrix.mul_apply]
  let k := P.encodedPerm j
  rw [Finset.sum_eq_single k]
  · have hk : P.encodedPerm k = j := by simp [k]
    simp [P.integralMatrix_eq_ite, k, hk, Matrix.one_apply, eq_comm]
  · intro b _ hb
    have hne : P.encodedPerm j ≠ b := by simpa [k] using hb.symm
    rw [P.integralMatrix_eq_ite, P.integralMatrix_eq_ite, if_neg hne]
    simp
  · simp

/-- Exact agreement with Mathlib's permutation-sign homomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55e78448e70aeb33c015bd33834d4ce6c25dcfbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
