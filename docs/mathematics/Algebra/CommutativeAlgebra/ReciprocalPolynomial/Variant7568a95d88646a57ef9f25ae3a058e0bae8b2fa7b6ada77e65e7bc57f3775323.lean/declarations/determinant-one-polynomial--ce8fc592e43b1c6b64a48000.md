# determinant_one_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7a3d53b-4555-04d8-1b39-36240f61aedd",
  "kind": "theorem",
  "lexical_name": "determinant_one_polynomial",
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
  "slug": "determinant-one-polynomial--ce8fc592e43b1c6b64a48000",
  "source": {
    "blob": "2b1b0309325967bc2baa74b10b97318701e650c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 24,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant7568a95d88646a57ef9f25ae3a058e0bae8b2fa7b6ada77e65e7bc57f3775323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce8fc592e43b1c6b64a4800049f87ff3adafd3caaf4c94af1ddb432016cf0618",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant7568a95d88646a57ef9f25ae3a058e0bae8b2fa7b6ada77e65e7bc57f3775323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7a3d53b-4555-04d8-1b39-36240f61aedd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem determinant_one_polynomial (alpha beta : R) (hdet : alpha * beta = 1) :
    (X - C alpha) * (X - C beta) = X ^ 2 - C (alpha + beta) * X + 1 := by
  rw [generic_factorization, hdet]
  simp

variable {K : Type} [GroupWithZero K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant7568a95d88646a57ef9f25ae3a058e0bae8b2fa7b6ada77e65e7bc57f3775323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant7568a95d88646a57ef9f25ae3a058e0bae8b2fa7b6ada77e65e7bc57f3775323.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1b0309325967bc2baa74b10b97318701e650c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
