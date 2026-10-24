# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60891a659d4dfdfa9a6af613981f3c6238caf8d4a7f55eecc25e4e0fb25f35ca",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--297dade5928a575a6c0e19b0",
  "source": {
    "blob": "4aed28f2e7d36148188b504e9aa3e8cf42bd0c6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 382,
    "path": "GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:297dade5928a575a6c0e19b0475d30b6164866942705149518fc51b5f8eff3eb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60891a659d4dfdfa9a6af613981f3c6238caf8d4a7f55eecc25e4e0fb25f35ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [CountablyGenerated X] [SFinite μ] : IsSeparable μ where
  exists_countable_measureDense := by
    have := isSeparable_of_sigmaFinite (μ.restrict μ.sigmaFiniteSet)
    rcases exists_countable_measureDense (μ.restrict μ.sigmaFiniteSet) with ⟨𝒜, count_𝒜, h𝒜⟩
    let ℬ := {s ∩ μ.sigmaFiniteSet | s ∈ 𝒜}
    refine ⟨ℬ, count_𝒜.image (fun s ↦ s ∩ μ.sigmaFiniteSet), ?_, ?_⟩
    · rintro - ⟨s, s_mem, rfl⟩
      exact (h𝒜.measurable s s_mem).inter measurableSet_sigmaFiniteSet
    · intro s ms hμs ε ε_pos
      rcases restrict_compl_sigmaFiniteSet_eq_zero_or_top μ s with hs | hs
      · have : (μ.restrict μ.sigmaFiniteSet) s ≠ ∞ :=
          ne_top_of_le_ne_top hμs <| μ.restrict_le_self _
        rcases h𝒜.approx s ms this ε ε_pos with ⟨t, t_mem, ht⟩
        refine ⟨t ∩ μ.sigmaFiniteSet, ⟨t, t_mem, rfl⟩, ?_⟩
        have : μ (s ∆ (t ∩ μ.sigmaFiniteSet) \ μ.sigmaFiniteSet) = 0 := by
          rw [sdiff_eq_compl_inter, inter_symmDiff_distrib_left, ← ENNReal.bot_eq_zero, eq_bot_iff]
          calc
            μ ((μ.sigmaFiniteSetᶜ ∩ s) ∆ (μ.sigmaFiniteSetᶜ ∩ (t ∩ μ.sigmaFiniteSet)))
              ≤ μ ((μ.sigmaFiniteSetᶜ ∩ s) ∪ (μ.sigmaFiniteSetᶜ ∩ (t ∩ μ.sigmaFiniteSet))) :=
                measure_mono symmDiff_subset_union
            _ ≤ μ (μ.sigmaFiniteSetᶜ ∩ s) + μ (μ.sigmaFiniteSetᶜ ∩ (t ∩ μ.sigmaFiniteSet)) :=
                measure_union_le _ _
            _ = 0 := by
                rw [inter_comm, ← μ.restrict_apply ms, hs, ← inter_assoc, inter_comm,
                  ← inter_assoc, inter_compl_self, empty_inter, measure_empty, zero_add]
        rwa [← measure_inter_add_sdiff _ measurableSet_sigmaFiniteSet, this, add_zero,
          inter_symmDiff_distrib_right, inter_assoc, inter_self, ← inter_symmDiff_distrib_right,
          ← μ.restrict_apply' measurableSet_sigmaFiniteSet]
      · refine False.elim <| hμs ?_
        rw [eq_top_iff, ← hs]
        exact μ.restrict_le_self _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aed28f2e7d36148188b504e9aa3e8cf42bd0c6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
