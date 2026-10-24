# sourceCorrelation_seam_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccf5c178-1d0f-10d5-9afa-ba6114361623",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_seam_neg",
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
  "slug": "sourcecorrelation-seam-neg--3684c58cb5390488aa3209d5",
  "source": {
    "blob": "ce60dda5b3243d0b402dd297ade9e8ea6309289a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 34,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant68e90480e6494463aba1e5623d4545987addff1a5c79dfaa6f3a0d04ce811430.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3684c58cb5390488aa3209d5ee6c6312d7cdc87e9a3ae5641d7f3331d42b0fe8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant68e90480e6494463aba1e5623d4545987addff1a5c79dfaa6f3a0d04ce811430.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccf5c178-1d0f-10d5-9afa-ba6114361623`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_seam_neg (A : ℝ) (hA : 15 ≤ A) :
    sourceCorrelation explicitSecondDerivative A (2 * A - 15) < 0 := by
  have hA1 : 1 ≤ A := by linarith
  have hA0 : 0 < A := by linarith
  have hAn : A ≠ 0 := ne_of_gt hA0
  have hv : 0 ≤ 2 - 15 / A := by
    have ht : 15 / A ≤ 2 := (div_le_iff₀ hA0).mpr (by linarith)
    linarith
  have hv2 : 2 - 15 / A ≤ 2 := sub_le_self _ (by positivity)
  have ht : A * (2 - 15 / A) = 2 * A - 15 := by field_simp
  rw [← ht, sourceCorrelation_eq_polynomial A _ hA1 hv hv2]
  have halg : bumpCorrelation (2 - 15 / A) / 16 -
      (1 / A ^ 2) * bumpCorrelationSecond (2 - 15 / A) / 2 +
      (1 / A ^ 2) ^ 2 * bumpCorrelationFourth (2 - 15 / A) =
      -(455625 * (21152708708203125 + 39698670531093750 * (A - 15) +
        19438586772750000 * (A - 15)^2 + 4578940532700000 * (A - 15)^3 +
        614846274300000 * (A - 15)^4 + 49701147912000 * (A - 15)^5 +
        2395655558400 * (A - 15)^6 + 63360028160 * (A - 15)^7 +
        705106688 * (A - 15)^8)) / (544544 * A^17) := by
    dsimp [bumpCorrelation, bumpCorrelationSecond, bumpCorrelationFourth]
    field_simp
    ring
  rw [halg]
  have hy : 0 ≤ A - 15 := sub_nonneg.mpr hA
  have hpoly : 0 < 455625 * (21152708708203125 + 39698670531093750 * (A - 15) +
      19438586772750000 * (A - 15)^2 + 4578940532700000 * (A - 15)^3 +
      614846274300000 * (A - 15)^4 + 49701147912000 * (A - 15)^5 +
      2395655558400 * (A - 15)^6 + 63360028160 * (A - 15)^7 +
      705106688 * (A - 15)^8) := by positivity
  exact div_neg_of_neg_of_pos
    (div_neg_of_neg_of_pos (neg_neg_of_pos hpoly) (by positivity))
    (source_normalization_pos A hA1)

/-- No eventual all-support nonnegativity assertion is true for this source.
This concerns source correlation only, not the signed arithmetic residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant68e90480e6494463aba1e5623d4545987addff1a5c79dfaa6f3a0d04ce811430.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant68e90480e6494463aba1e5623d4545987addff1a5c79dfaa6f3a0d04ce811430.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce60dda5b3243d0b402dd297ade9e8ea6309289a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
