# actual_finite_bounds_of_complete_height_and_strict_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a82efb0-0629-6842-7c67-5df8aab26d70",
  "kind": "theorem",
  "lexical_name": "actual_finite_bounds_of_complete_height_and_strict_tail",
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
  "slug": "actual-finite-bounds-of-complete-height-and-strict-tail--cb14cb09dbbc55f244e83c97",
  "source": {
    "blob": "8ccecba5d45dd0a71b668b216b81d0c4390bb1aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/FiveModeFiniteActual/Variant854d5dbc7547f33e12c82c7fdd8bdce4d69cd1becd8a274f1e47edf7279c311a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb14cb09dbbc55f244e83c97f9bceb11c23cb6798acf0dbf7f50914b83ad9b32",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/FiveModeFiniteActual/Variant854d5dbc7547f33e12c82c7fdd8bdce4d69cd1becd8a274f1e47edf7279c311a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a82efb0-0629-6842-7c67-5df8aab26d70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_finite_bounds_of_complete_height_and_strict_tail
    (hverified : CompletePositiveVerifiedHeight 3000175332800)
    (htail : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      ‖actualZeroStrictTail A 3000000000000‖ ≤
        CommonMean20261004.FiniteCertificate.tailBound) :
    (∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1/500000 : ℝ) ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) ∧
      EstimateMertensResidual.mertensResidual A ≤
        sourceA0/2 + 195/A^2 + (1/1000000 : ℝ)) ∧
    (∀ A : ℝ, 10 ≤ A → A ≤ 160 →
      EstimateMertensResidual.mertensResidual A < 0) := by
  apply actual_finite_bounds_of_premises
    (fun A => (actualZeroHead A 3000000000000).re)
    (fun A => (actualZeroStrictTail A 3000000000000).re) sourceA0
  · intro A hA _
    exact actual_matrix_head_tail_decomposition A _ hA
  · intro A hA _
    exact actual_zero_head_nonnegative A _ hA (working_complete_verified_height hverified)
  · intro A hA hA160
    exact (Complex.abs_re_le_norm _).trans (htail A hA hA160)
  · intro A hA _
    exact actual_gamma_upper A hA
  · exact sourceA0_lt_neg_four

end CommonMeanScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/FiveModeFiniteActual/Variant854d5dbc7547f33e12c82c7fdd8bdce4d69cd1becd8a274f1e47edf7279c311a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/FiveModeFiniteActual/Variant854d5dbc7547f33e12c82c7fdd8bdce4d69cd1becd8a274f1e47edf7279c311a.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ccecba5d45dd0a71b668b216b81d0c4390bb1aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
