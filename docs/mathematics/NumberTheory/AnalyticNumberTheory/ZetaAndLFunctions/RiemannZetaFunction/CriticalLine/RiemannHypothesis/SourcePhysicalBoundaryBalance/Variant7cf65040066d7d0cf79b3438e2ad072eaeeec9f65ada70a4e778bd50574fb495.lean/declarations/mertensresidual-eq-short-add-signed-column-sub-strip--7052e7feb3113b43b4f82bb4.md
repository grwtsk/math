# mertensResidual_eq_short_add_signed_column_sub_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:848666ac-8508-c80f-2c27-3c7f9a89139c",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_short_add_signed_column_sub_strip",
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
  "slug": "mertensresidual-eq-short-add-signed-column-sub-strip--7052e7feb3113b43b4f82bb4",
  "source": {
    "blob": "3bc729d0933553761663e1b0d37eb96b039a770b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 151,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant7cf65040066d7d0cf79b3438e2ad072eaeeec9f65ada70a4e778bd50574fb495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7052e7feb3113b43b4f82bb4783d4d7d2ab9036cf5450d1eb6381f5672b7bca8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant7cf65040066d7d0cf79b3438e2ad072eaeeec9f65ada70a4e778bd50574fb495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:848666ac-8508-c80f-2c27-3c7f9a89139c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_short_add_signed_column_sub_strip (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = shortMangoldtSource A +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (shortColumnPlainRowsAt A d (vaughanCutoff A) -
          quotientStripRowsAt A d (vaughanCutoff A)) := by
  have hr := mertensResidual_eq_scaled_strict_rows_and_columns A hA
  have ht := typeTwoSource_eq_negative_physicalRows A hA
  have hp :
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * physicalQuotientRowsAt A d (vaughanCutoff A)) =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * strictLongPlainRowsAt A d (vaughanCutoff A)) +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * quotientStripRowsAt A d (vaughanCutoff A) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d hd
    rw [actual_physicalRows_eq_auxiliary_strict_add_strip A hA d
      (Finset.mem_Icc.mp hd).1, mul_add]
  rw [ht, hp] at hr
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  linarith

/-- The independent divisor remainder keeps both sampling payments and the restored physical diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant7cf65040066d7d0cf79b3438e2ad072eaeeec9f65ada70a4e778bd50574fb495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant7cf65040066d7d0cf79b3438e2ad072eaeeec9f65ada70a4e778bd50574fb495.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bc729d0933553761663e1b0d37eb96b039a770b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
