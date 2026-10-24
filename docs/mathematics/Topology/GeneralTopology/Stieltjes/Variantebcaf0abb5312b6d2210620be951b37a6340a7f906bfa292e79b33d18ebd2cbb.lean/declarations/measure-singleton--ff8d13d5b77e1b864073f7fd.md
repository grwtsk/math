# measure_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "741a735ff1afa6ceabadb9c4775b5a82bcb12840",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 358,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1daf8d57-ff91-398d-61ef-4e187130505c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa858a59-8503-ada8-6db5-97080eec9657",
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
  "slug": "measure-singleton--ff8d13d5b77e1b864073f7fd",
  "source": {
    "blob": "741a735ff1afa6ceabadb9c4775b5a82bcb12840",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 358,
    "path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff8d13d5b77e1b864073f7fd3199356d2e6604245bb645b43ccc0398bd165b5b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa858a59-8503-ada8-6db5-97080eec9657`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_singleton (a : ℝ) : f.measure {a} = ofReal (f a - leftLim f a) := by
  obtain ⟨u, u_mono, u_lt_a, u_lim⟩ :
    ∃ u : ℕ → ℝ, StrictMono u ∧ (∀ n : ℕ, u n < a) ∧ Tendsto u atTop (𝓝 a) :=
    exists_seq_strictMono_tendsto a
  have A : {a} = ⋂ n, Ioc (u n) a := by
    refine' Subset.antisymm (fun x hx => by simp [mem_singleton_iff.1 hx, u_lt_a]) fun x hx => _
    simp at hx
    have : a ≤ x := le_of_tendsto' u_lim fun n => (hx n).1.le
    simp [le_antisymm this (hx 0).2]
  have L1 : Tendsto (fun n => f.measure (Ioc (u n) a)) atTop (𝓝 (f.measure {a})) := by
    rw [A]
    refine' tendsto_measure_iInter (fun n => measurableSet_Ioc) (fun m n hmn => _) _
    · exact Ioc_subset_Ioc (u_mono.monotone hmn) le_rfl
    · exact ⟨0, by simpa only [measure_Ioc] using ENNReal.ofReal_ne_top⟩
  have L2 :
      Tendsto (fun n => f.measure (Ioc (u n) a)) atTop (𝓝 (ofReal (f a - leftLim f a))) := by
    simp only [measure_Ioc]
    have : Tendsto (fun n => f (u n)) atTop (𝓝 (leftLim f a)) := by
      apply (f.mono.tendsto_leftLim a).comp
      exact
        tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _ u_lim
          (eventually_of_forall fun n => u_lt_a n)
    exact ENNReal.continuous_ofReal.continuousAt.tendsto.comp (tendsto_const_nhds.sub this)
  exact tendsto_nhds_unique L1 L2
#align stieltjes_function.measure_singleton StieltjesFunction.measure_singleton

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `741a735ff1afa6ceabadb9c4775b5a82bcb12840` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
