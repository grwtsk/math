# lintegral_mono_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c8d0f2f-c1b4-ec34-33e6-d175c4ef3bd8",
  "kind": "theorem",
  "lexical_name": "lintegral_mono_ae",
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
  "slug": "lintegral-mono-ae--4b8512560a30eeaaf4f88f98",
  "source": {
    "blob": "1ef2adeef745c829d65e8d3f90e5e3220c6fa863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 216,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantff7edbc81092affda748153d90ddde7181f2b41512722f7ac5bbb0f4a22ee4c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b8512560a30eeaaf4f88f9873fbff1b26ac7928dc7ff3d737986ae94cff9adc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variantff7edbc81092affda748153d90ddde7181f2b41512722f7ac5bbb0f4a22ee4c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c8d0f2f-c1b4-ec34-33e6-d175c4ef3bd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_mono_ae {f g : α → ℝ≥0∞} (h : ∀ᵐ a ∂μ, f a ≤ g a) :
    ∫⁻ a, f a ∂μ ≤ ∫⁻ a, g a ∂μ := by
  rcases exists_measurable_superset_of_null h with ⟨t, hts, ht, ht0⟩
  have : ∀ᵐ x ∂μ, x ∉ t := measure_zero_iff_ae_notMem.1 ht0
  rw [lintegral, lintegral]
  refine iSup₂_le fun s hfs ↦ le_iSup₂_of_le (s.restrict tᶜ) ?_ ?_
  · intro a
    by_cases h : a ∈ t <;>
      simp only [restrict_apply s ht.compl, mem_compl_iff, h, not_true, not_false_eq_true,
        indicator_of_notMem, zero_le, not_false_eq_true, indicator_of_mem]
    exact le_trans (hfs a) (by_contradiction fun hnfg => h (hts hnfg))
  · refine le_of_eq (SimpleFunc.lintegral_congr <| this.mono fun a hnt => ?_)
    by_cases hat : a ∈ t <;> simp only [restrict_apply s ht.compl, mem_compl_iff, hat, not_true,
      not_false_eq_true, indicator_of_notMem, not_false_eq_true, indicator_of_mem]
    exact (hnt hat).elim

/-- Lebesgue integral over a set is monotone in function.

This version assumes that the upper estimate is an a.e. measurable function
and the estimate holds a.e. on the set.
See also `setLIntegral_mono_ae'` for a version that assumes measurability of the set
but assumes no regularity of either function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variantff7edbc81092affda748153d90ddde7181f2b41512722f7ac5bbb0f4a22ee4c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantff7edbc81092affda748153d90ddde7181f2b41512722f7ac5bbb0f4a22ee4c0.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ef2adeef745c829d65e8d3f90e5e3220c6fa863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
