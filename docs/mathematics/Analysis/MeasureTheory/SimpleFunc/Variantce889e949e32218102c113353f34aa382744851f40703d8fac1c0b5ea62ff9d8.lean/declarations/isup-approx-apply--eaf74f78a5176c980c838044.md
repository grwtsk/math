# iSup_approx_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "adbdc460fc9bf1402a274d5a9c34c19a93ecf6f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 732,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ee59921-7976-0662-7e55-8e7c9f64d7be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c60673a3-5e59-3e68-ff41-2f1a611e3f28",
  "kind": "theorem",
  "lexical_name": "iSup_approx_apply",
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
  "slug": "isup-approx-apply--eaf74f78a5176c980c838044",
  "source": {
    "blob": "adbdc460fc9bf1402a274d5a9c34c19a93ecf6f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 752,
    "line": 732,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaf74f78a5176c980c8380448b0f2ee7dd31cd3129dae526d1b3f217af349203",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c60673a3-5e59-3e68-ff41-2f1a611e3f28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 732–752.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_approx_apply [TopologicalSpace β] [CompleteLattice β] [OrderClosedTopology β] [Zero β]
    [MeasurableSpace β] [OpensMeasurableSpace β] (i : ℕ → β) (f : α → β) (a : α) (hf : Measurable f)
    (h_zero : (0 : β) = ⊥) : ⨆ n, (approx i f n : α →ₛ β) a = ⨆ (k) (_ : i k ≤ f a), i k := by
  refine le_antisymm (iSup_le fun n => ?_) (iSup_le fun k => iSup_le fun hk => ?_)
  · rw [approx_apply a hf, h_zero]
    refine Finset.sup_le fun k _ => ?_
    split_ifs with h
    · exact le_iSup_of_le k (le_iSup (fun _ : i k ≤ f a => i k) h)
    · exact bot_le
  · refine le_iSup_of_le (k + 1) ?_
    rw [approx_apply a hf]
    have : k ∈ Finset.range (k + 1) := Finset.mem_range.2 (Nat.lt_succ_self _)
    refine le_trans (le_of_eq ?_) (Finset.le_sup this)
    rw [if_pos hk]

end Approx

section EApprox
variable {f : α → ℝ≥0∞}

/-- A sequence of `ℝ≥0∞`s such that its range is the set of non-negative rational numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean#L732).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adbdc460fc9bf1402a274d5a9c34c19a93ecf6f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
