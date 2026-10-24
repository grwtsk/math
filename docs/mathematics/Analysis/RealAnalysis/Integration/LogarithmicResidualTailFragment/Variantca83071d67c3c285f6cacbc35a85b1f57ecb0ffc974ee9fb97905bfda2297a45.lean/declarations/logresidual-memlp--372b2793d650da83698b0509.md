# logResidual_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:557ec82d-5c68-40c5-c964-eae770fca954",
  "kind": "theorem",
  "lexical_name": "logResidual_memLp",
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
  "slug": "logresidual-memlp--372b2793d650da83698b0509",
  "source": {
    "blob": "2175f671b40ee21dbfb24fe11f8d59984847b35d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:372b2793d650da83698b0509279f749ac415b9e32fb32613a8336707d6ae93e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:557ec82d-5c68-40c5-c964-eae770fca954`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logResidual_memLp (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) : MemLp (logResidual X ε) 2 := by
  apply (memLp_two_iff_integrable_sq_norm (logResidual_measurable X ε).aestronglyMeasurable).mpr
  have hn : IntegrableOn (fun u : ℝ => ‖logResidual X ε u‖ ^ 2) (Iio 0) := by
    have he : IntegrableOn (fun u : ℝ => Real.exp u *
        ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ ^ 2) (Iio 0) :=
      ((integrableOn_exp_Iic 0).mono_set Iio_subset_Iic_self).mul_const _
    apply he.congr
    filter_upwards [ae_restrict_mem measurableSet_Iio] with u hu
    exact (logResidual_sq_of_neg X ε hX u hu).symm
  have hp : IntegrableOn (fun u : ℝ => ‖logResidual X ε u‖ ^ 2) (Ici 0) := by
    have he : IntegrableOn (fun u : ℝ => Real.exp (-u) *
        (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) ^ 2) (Ici 0) := by
      rw [integrableOn_Ici_iff_integrableOn_Ioi]
      exact (integrableOn_exp_neg_Ioi 0).mul_const _
    apply he.mono' ((logResidual_measurable X ε).norm.pow_const 2).aestronglyMeasurable
    filter_upwards [] with u
    change |‖logResidual X ε u‖ ^ 2| ≤ _
    rw [abs_of_nonneg (sq_nonneg _)]
    exact logResidual_sq_le X ε u
  simpa only [Iio_union_Ici, integrableOn_univ] using hn.union hp

/-- The complete negative logarithmic tail has exactly the corrected pole coefficient's square norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2175f671b40ee21dbfb24fe11f8d59984847b35d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
