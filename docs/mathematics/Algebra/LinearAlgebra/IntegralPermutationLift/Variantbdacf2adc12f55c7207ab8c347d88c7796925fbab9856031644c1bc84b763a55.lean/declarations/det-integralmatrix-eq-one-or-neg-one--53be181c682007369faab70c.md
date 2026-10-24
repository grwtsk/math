# det_integralMatrix_eq_one_or_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7e1d642-0f09-bb72-a9ee-595b7524da7a",
  "kind": "theorem",
  "lexical_name": "det_integralMatrix_eq_one_or_neg_one",
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
  "slug": "det-integralmatrix-eq-one-or-neg-one--53be181c682007369faab70c",
  "source": {
    "blob": "55e78448e70aeb33c015bd33834d4ce6c25dcfbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 104,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53be181c682007369faab70c78281cbae764b71e19fa6f987f23b3f8b8e6ae43",
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

Occurrence: `result:a7e1d642-0f09-bb72-a9ee-595b7524da7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_integralMatrix_eq_one_or_neg_one :
    P.integralMatrix.det = 1 ∨ P.integralMatrix.det = -1 := by
  have hdet := congrArg Matrix.det P.integralMatrix_mul_self
  rw [Matrix.det_mul, Matrix.det_one] at hdet
  apply (sq_eq_one_iff).mp
  simpa [pow_two] using hdet

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55e78448e70aeb33c015bd33834d4ce6c25dcfbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
