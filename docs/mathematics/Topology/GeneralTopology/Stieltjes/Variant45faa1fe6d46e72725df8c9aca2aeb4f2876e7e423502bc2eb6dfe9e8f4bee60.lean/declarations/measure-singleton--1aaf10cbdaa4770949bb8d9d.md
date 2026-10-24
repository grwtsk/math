# measure_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13655cfbce63e4fccf4ac5d0db6eddcaa6f31901",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 369,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45faa1fe6d46e72725df8c9aca2aeb4f2876e7e423502bc2eb6dfe9e8f4bee60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c578fcf4-0915-5d57-cd3c-52d6ced61e47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a246db25-4290-aac9-45d6-d4f725e24bc8",
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
  "slug": "measure-singleton--1aaf10cbdaa4770949bb8d9d",
  "source": {
    "blob": "13655cfbce63e4fccf4ac5d0db6eddcaa6f31901",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 369,
    "path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Variant45faa1fe6d46e72725df8c9aca2aeb4f2876e7e423502bc2eb6dfe9e8f4bee60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aaf10cbdaa4770949bb8d9d70c859777fce38379ce97ac5292152e91b5bf79d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stieltjes/Variant45faa1fe6d46e72725df8c9aca2aeb4f2876e7e423502bc2eb6dfe9e8f4bee60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a246db25-4290-aac9-45d6-d4f725e24bc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_singleton (a : ℝ) : f.measure {a} = ofReal (f a - leftLim f a) := by
  obtain ⟨u, u_mono, u_lt_a, u_lim⟩ :
    ∃ u : ℕ → ℝ, StrictMono u ∧ (∀ n : ℕ, u n < a) ∧ Tendsto u atTop (𝓝 a) :=
    exists_seq_strictMono_tendsto a
  have A : {a} = ⋂ n, Ioc (u n) a := by
    refine Subset.antisymm (fun x hx => by simp [mem_singleton_iff.1 hx, u_lt_a]) fun x hx => ?_
    simp? at hx says simp only [mem_iInter, mem_Ioc] at hx
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stieltjes/Variant45faa1fe6d46e72725df8c9aca2aeb4f2876e7e423502bc2eb6dfe9e8f4bee60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stieltjes/Variant45faa1fe6d46e72725df8c9aca2aeb4f2876e7e423502bc2eb6dfe9e8f4bee60.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13655cfbce63e4fccf4ac5d0db6eddcaa6f31901` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
