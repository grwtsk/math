# integral_lt_integral_of_continuousOn_of_le_of_exists_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb9e6e75-fca9-391c-c93f-943bc8da30ab",
  "kind": "theorem",
  "lexical_name": "integral_lt_integral_of_continuousOn_of_le_of_exists_lt",
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
  "slug": "integral-lt-integral-of-continuouson-of-le-of-exists-lt--ce7e51369355aead4548f883",
  "source": {
    "blob": "160793feb553315fd52e83dfb3607576ea7abd4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1137,
    "line": 1122,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantc67e9a159fb6b0f3808ff1ce0b3447a6d1783b211502d6662154b196dcc937cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce7e51369355aead4548f8830635d7d95d2c24bd540233b9ad0cb06d265c2c44",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantc67e9a159fb6b0f3808ff1ce0b3447a6d1783b211502d6662154b196dcc937cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb9e6e75-fca9-391c-c93f-943bc8da30ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1122–1137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_lt_integral_of_continuousOn_of_le_of_exists_lt {f g : ℝ → ℝ} {a b : ℝ}
    (hab : a < b) (hfc : ContinuousOn f (Icc a b)) (hgc : ContinuousOn g (Icc a b))
    (hle : ∀ x ∈ Ioc a b, f x ≤ g x) (hlt : ∃ c ∈ Icc a b, f c < g c) :
    (∫ x in a..b, f x) < ∫ x in a..b, g x := by
  apply integral_lt_integral_of_ae_le_of_measure_setOf_lt_ne_zero hab.le
    (hfc.intervalIntegrable_of_Icc hab.le) (hgc.intervalIntegrable_of_Icc hab.le)
  · simpa only [measurableSet_Ioc, ae_restrict_eq]
      using (ae_restrict_mem measurableSet_Ioc).mono hle
  contrapose! hlt
  have h_eq : f =ᵐ[volume.restrict (Ioc a b)] g := by
    simp only [← not_le, ← ae_iff] at hlt
    exact EventuallyLE.antisymm ((ae_restrict_iff' measurableSet_Ioc).2 <|
      Eventually.of_forall hle) hlt
  rw [Measure.restrict_congr_set Ioc_ae_eq_Icc] at h_eq
  exact fun c hc ↦ (Measure.eqOn_Icc_of_ae_eq volume hab.ne h_eq hfc hgc hc).ge

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantc67e9a159fb6b0f3808ff1ce0b3447a6d1783b211502d6662154b196dcc937cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantc67e9a159fb6b0f3808ff1ce0b3447a6d1783b211502d6662154b196dcc937cd.lean#L1122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `160793feb553315fd52e83dfb3607576ea7abd4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
