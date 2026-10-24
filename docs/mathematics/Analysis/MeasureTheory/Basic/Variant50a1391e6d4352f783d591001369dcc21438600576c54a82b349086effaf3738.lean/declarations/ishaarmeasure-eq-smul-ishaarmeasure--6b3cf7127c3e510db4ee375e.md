# isHaarMeasure_eq_smul_isHaarMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ce238f8-6444-653b-aa37-d2fb7bb48b62",
  "kind": "theorem",
  "lexical_name": "isHaarMeasure_eq_smul_isHaarMeasure",
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
  "slug": "ishaarmeasure-eq-smul-ishaarmeasure--6b3cf7127c3e510db4ee375e",
  "source": {
    "blob": "c9c997c21c09b5ae81fc02d229959045b3f34503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 726,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b3cf7127c3e510db4ee375e2ff40ebbda124ebd46b8611c1bded1a532fd6c18",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ce238f8-6444-653b-aa37-d2fb7bb48b62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 726–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isHaarMeasure_eq_smul_isHaarMeasure [LocallyCompactSpace G] (μ ν : Measure G)
    [IsHaarMeasure μ] [IsHaarMeasure ν] : ∃ c : ℝ≥0∞, c ≠ 0 ∧ c ≠ ∞ ∧ μ = c • ν := by
  have K : PositiveCompacts G := Classical.arbitrary _
  have νpos : 0 < ν K := measure_pos_of_nonempty_interior _ K.interior_nonempty
  have νne : ν K ≠ ∞ := K.isCompact.measure_lt_top.ne
  refine' ⟨μ K / ν K, _, _, _⟩
  · simp only [νne, (μ.measure_pos_of_nonempty_interior K.interior_nonempty).ne', Ne.def,
      ENNReal.div_eq_zero_iff, not_false_iff, or_self_iff]
  · simp only [div_eq_mul_inv, νpos.ne', (K.isCompact.measure_lt_top (μ := μ)).ne, or_self_iff,
      ENNReal.inv_eq_top, ENNReal.mul_eq_top, Ne.def, not_false_iff, and_false_iff,
      false_and_iff]
  · calc
      μ = μ K • haarMeasure K := haarMeasure_unique μ K
      _ = (μ K / ν K) • ν K • haarMeasure K := by
        rw [smul_smul, div_eq_mul_inv, mul_assoc, ENNReal.inv_mul_cancel νpos.ne' νne, mul_one]
      _ = (μ K / ν K) • ν := by rw [← haarMeasure_unique ν K]
#align measure_theory.measure.is_haar_measure_eq_smul_is_haar_measure MeasureTheory.Measure.isHaarMeasure_eq_smul_isHaarMeasure
#align measure_theory.measure.is_add_haar_measure_eq_smul_is_add_haar_measure MeasureTheory.Measure.isAddHaarMeasure_eq_smul_isAddHaarMeasure

-- see Note [lower instance priority]
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean#L726).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9c997c21c09b5ae81fc02d229959045b3f34503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
