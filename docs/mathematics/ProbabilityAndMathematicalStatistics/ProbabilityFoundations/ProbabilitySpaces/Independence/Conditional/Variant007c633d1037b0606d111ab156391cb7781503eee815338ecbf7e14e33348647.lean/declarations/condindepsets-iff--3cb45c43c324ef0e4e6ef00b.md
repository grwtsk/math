# condIndepSets_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90d3d56ef844deb253f7d8547b8b27e1828ca4de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd3159c3-0e8b-dd15-6ed3-96ae41387982",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5cf29285-70fd-add3-a836-52b786973ed1",
  "kind": "lemma",
  "lexical_name": "condIndepSets_iff",
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
  "slug": "condindepsets-iff--3cb45c43c324ef0e4e6ef00b",
  "source": {
    "blob": "90d3d56ef844deb253f7d8547b8b27e1828ca4de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 189,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cb45c43c324ef0e4e6ef00bd7f4c22fbbce58ba834c70e7920efb1467f5fb94",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cf29285-70fd-add3-a836-52b786973ed1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma condIndepSets_iff (s1 s2 : Set (Set Ω)) (hs1 : ∀ s ∈ s1, MeasurableSet s)
    (hs2 : ∀ s ∈ s2, MeasurableSet s) (μ : Measure Ω) [IsFiniteMeasure μ] :
    CondIndepSets m' hm' s1 s2 μ ↔ ∀ (t1 t2 : Set Ω) (_ : t1 ∈ s1) (_ : t2 ∈ s2),
      (μ⟦t1 ∩ t2 | m'⟧) =ᵐ[μ] (μ⟦t1 | m'⟧) * (μ⟦t2 | m'⟧) := by
  simp only [CondIndepSets, Kernel.IndepSets]
  have hs1_eq : ∀ s ∈ s1, (fun ω ↦ ENNReal.toReal (condExpKernel μ m' ω s)) =ᵐ[μ] μ⟦s | m'⟧ :=
    fun s hs ↦ condExpKernel_ae_eq_condExp hm' (hs1 s hs)
  have hs2_eq : ∀ s ∈ s2, (fun ω ↦ ENNReal.toReal (condExpKernel μ m' ω s)) =ᵐ[μ] μ⟦s | m'⟧ :=
    fun s hs ↦ condExpKernel_ae_eq_condExp hm' (hs2 s hs)
  have hs12_eq : ∀ s ∈ s1, ∀ t ∈ s2, (fun ω ↦ ENNReal.toReal (condExpKernel μ m' ω (s ∩ t)))
      =ᵐ[μ] μ⟦s ∩ t | m'⟧ :=
    fun s hs t ht ↦ condExpKernel_ae_eq_condExp hm' ((hs1 s hs).inter ((hs2 t ht)))
  refine ⟨fun h s t hs ht ↦ ?_, fun h s t hs ht ↦ ?_⟩ <;> specialize h s t hs ht
  · have h' := ae_eq_of_ae_eq_trim h
    filter_upwards [hs1_eq s hs, hs2_eq t ht, hs12_eq s hs t ht, h'] with ω hs_eq ht_eq hst_eq h'
    rw [← hst_eq, Pi.mul_apply, ← hs_eq, ← ht_eq, h', ENNReal.toReal_mul]
  · refine ((stronglyMeasurable_condExpKernel ((hs1 s hs).inter (hs2 t ht))).ae_eq_trim_iff hm'
      ((measurable_condExpKernel (hs1 s hs)).mul
        (measurable_condExpKernel (hs2 t ht))).stronglyMeasurable).mpr ?_
    filter_upwards [hs1_eq s hs, hs2_eq t ht, hs12_eq s hs t ht, h] with ω hs_eq ht_eq hst_eq h
    have h_ne_top : condExpKernel μ m' ω (s ∩ t) ≠ ∞ := measure_ne_top (condExpKernel μ m' ω) _
    rw [← ENNReal.ofReal_toReal h_ne_top, hst_eq, h, Pi.mul_apply, ← hs_eq, ← ht_eq,
      ← ENNReal.toReal_mul, ENNReal.ofReal_toReal]
    exact ENNReal.mul_ne_top (measure_ne_top (condExpKernel μ m' ω) s)
      (measure_ne_top (condExpKernel μ m' ω) t)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant007c633d1037b0606d111ab156391cb7781503eee815338ecbf7e14e33348647.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90d3d56ef844deb253f7d8547b8b27e1828ca4de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
