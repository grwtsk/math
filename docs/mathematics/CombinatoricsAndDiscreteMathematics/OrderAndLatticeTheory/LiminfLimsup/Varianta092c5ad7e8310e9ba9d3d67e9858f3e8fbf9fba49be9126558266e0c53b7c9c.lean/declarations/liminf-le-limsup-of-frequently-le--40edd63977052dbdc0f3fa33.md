# liminf_le_limsup_of_frequently_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20eefdbb07984ea175bd4677819c1ea4a0c1f6f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 716,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a092c5ad7e8310e9ba9d3d67e9858f3e8fbf9fba49be9126558266e0c53b7c9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4927bf27-f07c-8947-5514-a26a89facf0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70035094-db68-1b24-27ea-2f715e38423b",
  "kind": "lemma",
  "lexical_name": "liminf_le_limsup_of_frequently_le",
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
  "slug": "liminf-le-limsup-of-frequently-le--40edd63977052dbdc0f3fa33",
  "source": {
    "blob": "20eefdbb07984ea175bd4677819c1ea4a0c1f6f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 738,
    "line": 716,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Varianta092c5ad7e8310e9ba9d3d67e9858f3e8fbf9fba49be9126558266e0c53b7c9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40edd63977052dbdc0f3fa339e290be87dd827c37e5db0aafb84a9ebff9af7c2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Varianta092c5ad7e8310e9ba9d3d67e9858f3e8fbf9fba49be9126558266e0c53b7c9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70035094-db68-1b24-27ea-2f715e38423b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 716–738.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma liminf_le_limsup_of_frequently_le {v : α → β} (h : ∃ᶠ x in f, u x ≤ v x)
    (h₁ : f.IsBoundedUnder (· ≥ ·) u := by isBoundedDefault)
    (h₂ : f.IsBoundedUnder (· ≤ ·) v := by isBoundedDefault) :
    liminf u f ≤ limsup v f := by
  rcases f.eq_or_neBot with rfl | _
  · exact (frequently_bot h).rec
  have h₃ : f.IsCoboundedUnder (· ≥ ·) u := by
    obtain ⟨a, ha⟩ := h₂.eventually_le
    apply IsCoboundedUnder.of_frequently_le (a := a)
    exact (h.and_eventually ha).mono fun x ⟨u_x, v_x⟩ ↦ u_x.trans v_x
  have h₄ : f.IsCoboundedUnder (· ≤ ·) v := by
    obtain ⟨a, ha⟩ := h₁.eventually_ge
    apply IsCoboundedUnder.of_frequently_ge (a := a)
    exact (ha.and_frequently h).mono fun x ⟨u_x, v_x⟩ ↦ u_x.trans v_x
  refine (le_limsup_iff h₄ h₂).2 fun y y_v ↦ ?_
  have := (le_liminf_iff h₃ h₁).1 (le_refl (liminf u f)) y y_v
  exact (h.and_eventually this).mono fun x ⟨ux_vx, y_ux⟩ ↦ y_ux.trans_le ux_vx

variable [ConditionallyCompleteLinearOrder α] {f : Filter α} {b : α}

-- The linter erroneously claims that I'm not referring to `c`
set_option linter.unusedVariables false in
@[to_dual gt_mem_sets_of_limsInf_gt]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Varianta092c5ad7e8310e9ba9d3d67e9858f3e8fbf9fba49be9126558266e0c53b7c9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Varianta092c5ad7e8310e9ba9d3d67e9858f3e8fbf9fba49be9126558266e0c53b7c9c.lean#L716).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20eefdbb07984ea175bd4677819c1ea4a0c1f6f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
