# mertensResidual_eq_short_add_signed_column_sub_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f307494c-e7f6-03b9-bc2a-cfb1b2e51e27",
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
  "slug": "mertensresidual-eq-short-add-signed-column-sub-strip--43f8149c3701ec075fdcb4c1",
  "source": {
    "blob": "b729c8944b5cc1e3578285f43d860bbb8527dbba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 145,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant339f434762a2fc1932d87f418e487d9a79b4d5b05eea0221f2fed828544a681d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43f8149c3701ec075fdcb4c141ab0cf3337cedd915189c2a9c9c21cf919a3b11",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant339f434762a2fc1932d87f418e487d9a79b4d5b05eea0221f2fed828544a681d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f307494c-e7f6-03b9-bc2a-cfb1b2e51e27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–168.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant339f434762a2fc1932d87f418e487d9a79b4d5b05eea0221f2fed828544a681d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant339f434762a2fc1932d87f418e487d9a79b4d5b05eea0221f2fed828544a681d.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b729c8944b5cc1e3578285f43d860bbb8527dbba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
