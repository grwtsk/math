# actual_strict_tail_certificate_of_source_and_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca8fcfa8-a711-6024-90c8-3a31f601ffa0",
  "kind": "theorem",
  "lexical_name": "actual_strict_tail_certificate_of_source_and_count",
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
  "slug": "actual-strict-tail-certificate-of-source-and-count--d3fa69c5c83130ed87813ac7",
  "source": {
    "blob": "c5648ffc42bbaa45949357b5e54fa2b5e5287671",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 78,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FiveModeFiniteTailBudget/Variant18a00297b23b9ac3ff418ab26a14b799ec67107003a0070f21749bbddd207b69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3fa69c5c83130ed87813ac7b4b1e09b7b9ff9e1008b88ea370034cf3063f102",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FiveModeFiniteTailBudget/Variant18a00297b23b9ac3ff418ab26a14b799ec67107003a0070f21749bbddd207b69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca8fcfa8-a711-6024-90c8-3a31f601ffa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_strict_tail_certificate_of_source_and_count
    (hpoint : ∀ A : ℝ, 1 ≤ A → A ≤ 160 → SourceAbsoluteTailMajorant A 3000000000000)
    (hs : Summable (positiveSixthPowerWeight 3000000000000))
    (hcount : actualPositiveSixthPowerTail 3000000000000 ≤ rationalCountCap) :
    ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      ‖actualZeroStrictTail A 3000000000000‖ ≤ CommonMean20261004.FiniteCertificate.tailBound := by
  intro A hA hA160
  have h := actual_strict_tail_norm_le_of_count_bound A 3000000000000 rationalCountCap
    hA (by norm_num) hs (hpoint A hA hA160) hcount
  apply h.trans
  rw [← rational_tail_cap_eq]
  apply mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_left (source_absolute_tail_constant_le_rational_cap A hA hA160)
      (by norm_num : (0 : ℝ) ≤ 2))
  unfold rationalCountCap
  positivity

end CommonMeanScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FiveModeFiniteTailBudget/Variant18a00297b23b9ac3ff418ab26a14b799ec67107003a0070f21749bbddd207b69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FiveModeFiniteTailBudget/Variant18a00297b23b9ac3ff418ab26a14b799ec67107003a0070f21749bbddd207b69.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5648ffc42bbaa45949357b5e54fa2b5e5287671` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
