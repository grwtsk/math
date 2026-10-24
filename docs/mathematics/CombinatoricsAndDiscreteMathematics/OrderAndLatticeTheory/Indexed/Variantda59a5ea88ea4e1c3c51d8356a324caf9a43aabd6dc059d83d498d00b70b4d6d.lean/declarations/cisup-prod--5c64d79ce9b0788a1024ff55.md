# ciSup_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98e12a32363fb2d3fd85eb0e4af6f5f3a597da20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fcbfc1c-a3c8-1ed2-d1c8-f96397223dd5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfdf4b51-f893-fd53-3d5a-174456453269",
  "kind": "lemma",
  "lexical_name": "ciSup_prod",
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
  "slug": "cisup-prod--5c64d79ce9b0788a1024ff55",
  "source": {
    "blob": "98e12a32363fb2d3fd85eb0e4af6f5f3a597da20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 178,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantda59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c64d79ce9b0788a1024ff55904198fa8e18b40942ffced76c0240f0d0a86fbe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantda59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfdf4b51-f893-fd53-3d5a-174456453269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ciSup_prod {f : β × γ → α} (hf : BddAbove (Set.range f)) :
    ⨆ p, f p = ⨆ b, ⨆ c, f (b, c) := by
  rcases isEmpty_or_nonempty β
  · simp [iSup_of_empty']
  rcases isEmpty_or_nonempty γ
  · simp [iSup_of_empty']
  have h₁ : BddAbove (Set.range fun b ↦ ⨆ c, f (b, c)) := by
    rw [bddAbove_def] at hf ⊢
    obtain ⟨B, hB⟩ := hf
    refine ⟨B, fun y hy ↦ ?_⟩
    obtain ⟨z, rfl⟩ := Set.mem_range.mp hy
    exact ciSup_le fun c ↦ by grind
  have h₂ b : BddAbove (Set.range fun c ↦ f (b, c)) := by
    rw [bddAbove_def] at hf ⊢
    obtain ⟨B, hB⟩ := hf
    exact ⟨B, by grind⟩
  refine eq_of_forall_ge_iff fun c ↦ ?_
  rw [ciSup_le_iff (bddAbove_iff_subset_Iic.mpr hf), ciSup_le_iff h₁]
  conv_rhs => enter [b]; rw [ciSup_le_iff (h₂ b)]
  simp [Prod.forall]

/-- Introduction rule to prove that `b` is the supremum of `f`: it suffices to check that `b`
is larger than `f i` for all `i`, and that this is not the case of any `w<b`.
See `iSup_eq_of_forall_le_of_forall_lt_exists_gt` for a version in complete lattices. -/
@[to_dual ciInf_eq_of_forall_ge_of_forall_gt_exists_lt /-- Introduction rule to prove that `b` is
the infimum of `f`: it suffices to check that `b` is smaller than `f i` for all `i`, and that this
is not the case of any `w>b`. See `iInf_eq_of_forall_ge_of_forall_gt_exists_lt` for a version in
complete lattices. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantda59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantda59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98e12a32363fb2d3fd85eb0e4af6f5f3a597da20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
