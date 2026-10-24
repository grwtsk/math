# singularPart_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:446a43e9-bdf8-c4dc-114f-fb0f8efe78ce",
  "kind": "theorem",
  "lexical_name": "singularPart_smul",
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
  "slug": "singularpart-smul--a165e5beb525a1d96b5c55d1",
  "source": {
    "blob": "566c66a8c4a9766999291f456377c6f8b9f0ab90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1107,
    "line": 1089,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a165e5beb525a1d96b5c55d13b3e3dab48d112dc0d1f604992eaab31e48b9d2d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:446a43e9-bdf8-c4dc-114f-fb0f8efe78ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1089–1107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem singularPart_smul (s : SignedMeasure α) (μ : Measure α) (r : ℝ) :
    (r • s).singularPart μ = r • s.singularPart μ := by
  by_cases hr : 0 ≤ r
  · lift r to ℝ≥0 using hr
    exact singularPart_smul_nnreal s μ r
  · rw [singularPart, singularPart]
    conv_lhs =>
      congr
      · congr
        · rw [toJordanDecomposition_smul_real,
            JordanDecomposition.real_smul_posPart_neg _ _ (not_le.1 hr), singularPart_smul]
      · congr
        · rw [toJordanDecomposition_smul_real,
            JordanDecomposition.real_smul_negPart_neg _ _ (not_le.1 hr), singularPart_smul]
    rw [toSignedMeasure_smul, toSignedMeasure_smul, ← neg_sub, ← smul_sub]
    change -(((-r).toNNReal : ℝ) • (_ : SignedMeasure α)) = _
    rw [← neg_smul, Real.coe_toNNReal _ (le_of_lt (neg_pos.mpr (not_le.1 hr))), neg_neg]
#align measure_theory.signed_measure.singular_part_smul MeasureTheory.SignedMeasure.singularPart_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean#L1089).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `566c66a8c4a9766999291f456377c6f8b9f0ab90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
