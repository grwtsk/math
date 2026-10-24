# iIndepFun_iff_map_fun_eq_pi_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1dd152a672d82a523233a0cd322d8dd43bfa716",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 621,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6b2f5bd29650f25eebca31b804263c9b8a607b876659f132c226e54cb8ef090.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1bab39eb-aedc-6416-4f1e-eb12393b43b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4674142d-a39c-2b51-dea8-846f17deb0a0",
  "kind": "theorem",
  "lexical_name": "iIndepFun_iff_map_fun_eq_pi_map",
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
  "slug": "iindepfun-iff-map-fun-eq-pi-map--63f957a31a3b91d77310725d",
  "source": {
    "blob": "c1dd152a672d82a523233a0cd322d8dd43bfa716",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 621,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Varianta6b2f5bd29650f25eebca31b804263c9b8a607b876659f132c226e54cb8ef090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63f957a31a3b91d77310725dc4e70a62cd51c00bc0c605c8aba602113115b9ed",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Varianta6b2f5bd29650f25eebca31b804263c9b8a607b876659f132c226e54cb8ef090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4674142d-a39c-2b51-dea8-846f17deb0a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepFun_iff_map_fun_eq_pi_map [Fintype ι] {β : ι → Type*}
    {m : ∀ i, MeasurableSpace (β i)} {f : Π i, Ω → β i} [IsProbabilityMeasure μ]
    (hf : ∀ i, AEMeasurable (f i) μ) :
    iIndepFun f μ ↔ μ.map (fun ω i ↦ f i ω) = Measure.pi (fun i ↦ μ.map (f i)) := by
  classical
  rw [iIndepFun_iff_measure_inter_preimage_eq_mul]
  have h₀ {s : ∀ i, Set (β i)} (hm : ∀ (i : ι), MeasurableSet (s i)) :
      ∏ i : ι, μ (f i ⁻¹' s i) = ∏ i : ι, μ.map (f i) (s i) ∧
      μ (⋂ i : ι, (f i ⁻¹' s i)) = μ.map (fun ω i ↦ f i ω) (univ.pi s) := by
    constructor
    · congr with x
      rw [Measure.map_apply_of_aemeasurable (hf x) (hm x)]
    · rw [Measure.map_apply_of_aemeasurable (aemeasurable_pi_lambda _ fun x ↦ hf x)
        (.univ_pi hm)]
      congr with x
      simp
  constructor
  · refine fun hS ↦ (Measure.pi_eq fun h hm ↦ ?_).symm
    rw [← (h₀ hm).1, ← (h₀ hm).2]
    simpa [hm] using hS Finset.univ (sets := h)
  · intro h S s hs
    specialize h₀ (s := fun i ↦ if i ∈ S then s i else univ)
      fun i ↦ by beta_reduce; split_ifs with hiS <;> simp [hiS, hs]
    simp only [apply_ite, preimage_univ, measure_univ, Finset.prod_ite_mem, Finset.univ_inter,
      Finset.prod_ite, Finset.filter_univ_mem, iInter_ite, iInter_univ, inter_univ, h,
      Measure.pi_pi] at h₀
    rw [h₀.2, ← h₀.1]

@[symm]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Varianta6b2f5bd29650f25eebca31b804263c9b8a607b876659f132c226e54cb8ef090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Varianta6b2f5bd29650f25eebca31b804263c9b8a607b876659f132c226e54cb8ef090.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1dd152a672d82a523233a0cd322d8dd43bfa716` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
