# stronglyMeasurable_uncurry_of_continuous_of_stronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6223182e-0c8f-8e66-85d1-61e4f884b07a",
  "kind": "theorem",
  "lexical_name": "stronglyMeasurable_uncurry_of_continuous_of_stronglyMeasurable",
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
  "slug": "stronglymeasurable-uncurry-of-continuous-of-stronglymeasurable--b3a1ecb7831282776b1c453c",
  "source": {
    "blob": "cbe6aa68c3fe25231fef687e016b63e8b5da761f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2117,
    "line": 2074,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variante827e8e89d68f9f3a1a3283053c762d46dbff1afcb089d469b61d6ff38cf1de0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3a1ecb7831282776b1c453c4eadcad2d7b96a3340980ec1f83c8447d0a6b133",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variante827e8e89d68f9f3a1a3283053c762d46dbff1afcb089d469b61d6ff38cf1de0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6223182e-0c8f-8e66-85d1-61e4f884b07a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2074–2117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stronglyMeasurable_uncurry_of_continuous_of_stronglyMeasurable {α β ι : Type*}
    [TopologicalSpace ι] [MetrizableSpace ι] [MeasurableSpace ι] [SecondCountableTopology ι]
    [OpensMeasurableSpace ι] [TopologicalSpace β] [PseudoMetrizableSpace β] [MeasurableSpace α]
    {u : ι → α → β} (hu_cont : ∀ x, Continuous fun i => u i x) (h : ∀ i, StronglyMeasurable (u i)) :
    StronglyMeasurable (Function.uncurry u) := by
  borelize β
  obtain ⟨t_sf, ht_sf⟩ :
    ∃ t : ℕ → SimpleFunc ι ι, ∀ j x, Tendsto (fun n => u (t n j) x) atTop (𝓝 <| u j x) := by
    have h_str_meas : StronglyMeasurable (id : ι → ι) := stronglyMeasurable_id
    refine' ⟨h_str_meas.approx, fun j x => _⟩
    exact ((hu_cont x).tendsto j).comp (h_str_meas.tendsto_approx j)
  let U (n : ℕ) (p : ι × α) := u (t_sf n p.fst) p.snd
  have h_tendsto : Tendsto U atTop (𝓝 fun p => u p.fst p.snd) := by
    rw [tendsto_pi_nhds]
    exact fun p => ht_sf p.fst p.snd
  refine' stronglyMeasurable_of_tendsto _ (fun n => _) h_tendsto
  have h_str_meas : StronglyMeasurable fun p : (t_sf n).range × α => u (↑p.fst) p.snd := by
    refine' stronglyMeasurable_iff_measurable_separable.2 ⟨_, _⟩
    · have :
        (fun p : ↥(t_sf n).range × α => u (↑p.fst) p.snd) =
          (fun p : α × (t_sf n).range => u (↑p.snd) p.fst) ∘ Prod.swap :=
        rfl
      rw [this, measurable_swap_iff]
      exact measurable_from_prod_countable fun j => (h j).measurable
    · have : IsSeparable (⋃ i : (t_sf n).range, range (u i)) :=
        isSeparable_iUnion fun i => (h i).isSeparable_range
      apply this.mono
      rintro _ ⟨⟨i, x⟩, rfl⟩
      simp only [mem_iUnion, mem_range]
      exact ⟨i, x, rfl⟩
  have :
    (fun p : ι × α => u (t_sf n p.fst) p.snd) =
      (fun p : ↥(t_sf n).range × α => u p.fst p.snd) ∘ fun p : ι × α =>
        (⟨t_sf n p.fst, SimpleFunc.mem_range_self _ _⟩, p.snd) :=
    rfl
  simp_rw [this]
  refine' h_str_meas.comp_measurable (Measurable.prod_mk _ measurable_snd)
  exact ((t_sf n).measurable.comp measurable_fst).subtype_mk
#align measure_theory.strongly_measurable_uncurry_of_continuous_of_strongly_measurable MeasureTheory.stronglyMeasurable_uncurry_of_continuous_of_stronglyMeasurable

end MeasureTheory

-- Guard against import creep
assert_not_exists InnerProductSpace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variante827e8e89d68f9f3a1a3283053c762d46dbff1afcb089d469b61d6ff38cf1de0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variante827e8e89d68f9f3a1a3283053c762d46dbff1afcb089d469b61d6ff38cf1de0.lean#L2074).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbe6aa68c3fe25231fef687e016b63e8b5da761f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
