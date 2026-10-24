# mem_fix_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e75297c-3605-ea41-b972-4550a78a228a",
  "kind": "theorem",
  "lexical_name": "mem_fix_iff",
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
  "slug": "mem-fix-iff--daca903a84cdc402ae9a1112",
  "source": {
    "blob": "b32318755458e6a2fab7bce8134c3b5d6cc9e26d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 240,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Varianta18ca84ca8f411137ea0801483a1bcbf4c6090f74707d9360a39dde6c51c6111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daca903a84cdc402ae9a11120ec838b16b423bab304e929112fd3c96f4fb5dd4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Varianta18ca84ca8f411137ea0801483a1bcbf4c6090f74707d9360a39dde6c51c6111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e75297c-3605-ea41-b972-4550a78a228a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_fix_iff {f : α →. β ⊕ α} {a : α} {b : β} :
    b ∈ f.fix a ↔ Sum.inl b ∈ f a ∨ ∃ a', Sum.inr a' ∈ f a ∧ b ∈ f.fix a' :=
  ⟨fun h => by
    let ⟨h₁, h₂⟩ := Part.mem_assert_iff.1 h
    rw [WellFounded.fixF_eq] at h₂
    simp only [Part.mem_assert_iff] at h₂
    obtain ⟨h₂, h₃⟩ := h₂
    split at h₃
    next e => simp only [Part.mem_some_iff] at h₃; subst b; exact Or.inl ⟨h₂, e⟩
    next e => exact Or.inr ⟨_, ⟨_, e⟩, Part.mem_assert _ h₃⟩,
   fun h => by
    simp only [fix, Part.mem_assert_iff]
    rcases h with (⟨h₁, h₂⟩ | ⟨a', h, h₃⟩)
    · refine ⟨⟨_, fun y h' => ?_⟩, ?_⟩
      · injection Part.mem_unique ⟨h₁, h₂⟩ h'
      · rw [WellFounded.fixF_eq]
        -- Porting note: used to be simp [h₁, h₂]
        apply Part.mem_assert h₁
        split
        next e =>
          injection h₂.symm.trans e with h; simp [h]
        next e =>
          injection h₂.symm.trans e
    · simp only [fix, Part.mem_assert_iff] at h₃
      obtain ⟨h₃, h₄⟩ := h₃
      refine ⟨⟨_, fun y h' => ?_⟩, ?_⟩
      · injection Part.mem_unique h h' with e
        exact e ▸ h₃
      · obtain ⟨h₁, h₂⟩ := h
        grind [WellFounded.fixF_eq]⟩

/-- If advancing one step from `a` leads to `b : β`, then `f.fix a = b` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Varianta18ca84ca8f411137ea0801483a1bcbf4c6090f74707d9360a39dde6c51c6111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Varianta18ca84ca8f411137ea0801483a1bcbf4c6090f74707d9360a39dde6c51c6111.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b32318755458e6a2fab7bce8134c3b5d6cc9e26d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
