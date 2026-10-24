# IsCycleOn.pow_apply_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2605e1918b96eecdca633b14ca542208f1b1c345",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 850,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b119e932-650b-b055-958e-fdf0e79fd442",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:089b895d-db60-8b4c-979a-72d6449a6c11",
  "kind": "theorem",
  "lexical_name": "IsCycleOn.pow_apply_eq",
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
  "slug": "iscycleon-pow-apply-eq--e24aa920250b7f5901b7fb4c",
  "source": {
    "blob": "2605e1918b96eecdca633b14ca542208f1b1c345",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 866,
    "line": 850,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e24aa920250b7f5901b7fb4cc20e642e5f123309692e5a8432f8139cc85f8b1f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:089b895d-db60-8b4c-979a-72d6449a6c11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 850–866.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCycleOn.pow_apply_eq {s : Finset α} (hf : f.IsCycleOn s) (ha : a ∈ s) {n : ℕ} :
    (f ^ n) a = a ↔ s.card ∣ n := by
  obtain rfl | hs := Finset.eq_singleton_or_nontrivial ha
  · rw [coe_singleton, isCycleOn_singleton] at hf
    simpa using IsFixedPt.iterate hf n
  classical
    have h : ∀ x ∈ s.attach, ¬f ↑x = ↑x := fun x _ => hf.apply_ne hs x.2
    have := (hf.isCycle_subtypePerm hs).orderOf
    simp only [coe_sort_coe, support_subtype_perm, ne_eq, decide_not, Bool.not_eq_true',
      decide_eq_false_iff_not, mem_attach, forall_true_left, Subtype.forall, filter_true_of_mem h,
      card_attach] at this
    rw [← this, orderOf_dvd_iff_pow_eq_one,
      (hf.isCycle_subtypePerm hs).pow_eq_one_iff'
        (ne_of_apply_ne ((↑) : s → α) <| hf.apply_ne hs (⟨a, ha⟩ : s).2)]
    simp
#align equiv.perm.is_cycle_on.pow_apply_eq Equiv.Perm.IsCycleOn.pow_apply_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean#L850).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2605e1918b96eecdca633b14ca542208f1b1c345` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
