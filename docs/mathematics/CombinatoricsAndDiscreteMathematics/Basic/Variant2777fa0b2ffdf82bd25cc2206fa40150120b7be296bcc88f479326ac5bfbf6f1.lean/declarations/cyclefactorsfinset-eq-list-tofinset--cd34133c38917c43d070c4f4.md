# cycleFactorsFinset_eq_list_toFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbe46218-09e7-707d-ec69-ad6d5c9bc15f",
  "kind": "theorem",
  "lexical_name": "cycleFactorsFinset_eq_list_toFinset",
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
  "slug": "cyclefactorsfinset-eq-list-tofinset--cd34133c38917c43d070c4f4",
  "source": {
    "blob": "2b37542d32b13f4895cc697a6c13254f7038e3ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1383,
    "line": 1361,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd34133c38917c43d070c4f49aa957b34d4427163d8c5172b5ba23d0d498a003",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbe46218-09e7-707d-ec69-ad6d5c9bc15f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1361–1383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycleFactorsFinset_eq_list_toFinset {σ : Perm α} {l : List (Perm α)} (hn : l.Nodup) :
    σ.cycleFactorsFinset = l.toFinset ↔
      (∀ f : Perm α, f ∈ l → f.IsCycle) ∧ l.Pairwise Disjoint ∧ l.prod = σ := by
  obtain ⟨⟨l', hp', hc', hd'⟩, hl⟩ := Trunc.exists_rep σ.truncCycleFactors
  have ht : cycleFactorsFinset σ = l'.toFinset := by
    rw [cycleFactorsFinset, ← hl, Trunc.lift_mk]
  rw [ht]
  constructor
  · intro h
    have hn' : l'.Nodup := nodup_of_pairwise_disjoint_cycles hc' hd'
    have hperm : l ~ l' := List.perm_of_nodup_nodup_toFinset_eq hn hn' h.symm
    refine' ⟨_, _, _⟩
    · exact fun _ h => hc' _ (hperm.subset h)
    · rwa [List.Perm.pairwise_iff Disjoint.symmetric hperm]
    · rw [← hp', hperm.symm.prod_eq']
      refine' hd'.imp _
      exact Disjoint.commute
  · rintro ⟨hc, hd, hp⟩
    refine' List.toFinset_eq_of_perm _ _ _
    refine' list_cycles_perm_list_cycles _ hc' hc hd' hd
    rw [hp, hp']
#align equiv.perm.cycle_factors_finset_eq_list_to_finset Equiv.Perm.cycleFactorsFinset_eq_list_toFinset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean#L1361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b37542d32b13f4895cc697a6c13254f7038e3ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
