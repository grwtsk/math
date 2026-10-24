# measure_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6297eeab2151062d2cbae140e704e87882f614f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 533,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:440196dc-693c-9e99-b372-bc01e0b5fd36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0988cc11-1ef3-74a6-3844-9bf1cc1e4362",
  "kind": "theorem",
  "lexical_name": "measure_singleton",
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
  "slug": "measure-singleton--d8580caddb3c535a49933c02",
  "source": {
    "blob": "6297eeab2151062d2cbae140e704e87882f614f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 533,
    "path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8580caddb3c535a49933c02d0a31ba8678ea6719783239104c9686f7513fd28",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0988cc11-1ef3-74a6-3844-9bf1cc1e4362`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_singleton (a : R) : f.measure {a} = ofReal (f a - leftLim f a) := by
  by_cases ha : IsBot a
  · have : leftLim f a = f a := by
      apply leftLim_eq_of_eq_bot
      simp [nhdsLT_eq_bot_iff, ha]
    simp only [this, sub_self, ofReal_zero]
    apply eq_bot_iff.2
    rw [StieltjesFunction.measure]
    apply (outer_le_length _ _).trans
    rw [← length_sdiff_botSet]
    simp [subsingleton_botSet.eq_singleton_of_mem ha]
  obtain ⟨b, hb⟩ : ∃ b, b < a := by simpa only [IsBot, not_forall, not_le] using ha
  obtain ⟨u, u_mono, u_lt_a, u_lim⟩ :
    ∃ u : ℕ → R, StrictMono u ∧ (∀ n : ℕ, u n ∈ Ioo b a) ∧ Tendsto u atTop (𝓝 a) :=
    exists_seq_strictMono_tendsto' hb
  replace u_lt_a n : u n < a := (u_lt_a n).2
  have A : {a} = ⋂ n, Ioc (u n) a := by
    refine Subset.antisymm (fun x hx => by simp [mem_singleton_iff.1 hx, u_lt_a]) fun x hx => ?_
    replace hx : ∀ (i : ℕ), u i < x ∧ x ≤ a := by simpa using hx
    have : a ≤ x := le_of_tendsto' u_lim fun n => (hx n).1.le
    simp [le_antisymm this (hx 0).2]
  have L1 : Tendsto (fun n => f.measure (Ioc (u n) a)) atTop (𝓝 (f.measure {a})) := by
    rw [A]
    refine tendsto_measure_iInter_atTop (fun n => nullMeasurableSet_Ioc)
      (fun m n hmn => ?_) ?_
    · exact Ioc_subset_Ioc_left (u_mono.monotone hmn)
    · exact ⟨0, by simpa only [measure_Ioc] using ENNReal.ofReal_ne_top⟩
  have L2 :
      Tendsto (fun n => f.measure (Ioc (u n) a)) atTop (𝓝 (ofReal (f a - leftLim f a))) := by
    simp only [measure_Ioc]
    have : Tendsto (fun n => f (u n)) atTop (𝓝 (leftLim f a)) := by
      apply (f.mono.tendsto_leftLim a).comp
      exact
        tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _ u_lim
          (Eventually.of_forall fun n => u_lt_a n)
    exact ENNReal.continuous_ofReal.continuousAt.tendsto.comp (tendsto_const_nhds.sub this)
  exact tendsto_nhds_unique L1 L2

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6297eeab2151062d2cbae140e704e87882f614f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
