# IsCircuit.elimination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:838b397f-077e-b0b4-e3aa-f3c17e9527a9",
  "kind": "lemma",
  "lexical_name": "IsCircuit.elimination",
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
  "slug": "iscircuit-elimination--1c05bcd772b7f7b2d62bb4a2",
  "source": {
    "blob": "a0b8673db619c1bc16a9da99a689b62d313d45b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 514,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c05bcd772b7f7b2d62bb4a27d9e01eb479b02442cd7bdeeade49141bb2c2f86",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:838b397f-077e-b0b4-e3aa-f3c17e9527a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCircuit.elimination (hC₁ : M.IsCircuit C₁) (hC₂ : M.IsCircuit C₂) (h : C₁ ≠ C₂) (e : α) :
    ∃ C ⊆ (C₁ ∪ C₂) \ {e}, M.IsCircuit C := by
  have hnss : ¬ (C₁ ⊆ C₂) := fun hss ↦ h <| hC₁.eq_of_subset_isCircuit hC₂ hss
  obtain ⟨f, hf₁, hf₂⟩ := not_subset.1 hnss
  by_cases he₁ : e ∈ C₁
  · by_cases he₂ : e ∈ C₂
    · obtain ⟨C, hC, hC', -⟩ := hC₁.strong_elimination hC₂ he₁ he₂ hf₁ hf₂
      exact ⟨C, hC, hC'⟩
    exact ⟨C₂, subset_sdiff_singleton subset_union_right he₂, hC₂⟩
  exact ⟨C₁, subset_sdiff_singleton subset_union_left he₁, hC₁⟩

end Elimination

/-! ### Finitary Matroids -/
section Finitary

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0b8673db619c1bc16a9da99a689b62d313d45b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
