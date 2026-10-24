# subsetConditionallyCompleteLinearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61fa6658c6622c85565ee62b49418f3b30a83df4aac7520a7a5fd625dfa4d183",
  "kind": "abbrev",
  "lexical_name": "subsetConditionallyCompleteLinearOrder",
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
  "slug": "subsetconditionallycompletelinearorder--0a1b3b0e3139af0231285698",
  "source": {
    "blob": "a2c3636110fc828c3cd36ac40c1515701eb97378",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a1b3b0e3139af023128569888d008857d709ba4e695073701a4e9ee6ee80e76",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61fa6658c6622c85565ee62b49418f3b30a83df4aac7520a7a5fd625dfa4d183`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev subsetConditionallyCompleteLinearOrder [Inhabited s]
    (h_Sup : ∀ {t : Set s} (_ : t.Nonempty) (_h_bdd : BddAbove t), sSup ((↑) '' t : Set α) ∈ s)
    (h_Inf : ∀ {t : Set s} (_ : t.Nonempty) (_h_bdd : BddBelow t), sInf ((↑) '' t : Set α) ∈ s) :
    ConditionallyCompleteLinearOrder s :=
  { subsetSupSet s, subsetInfSet s, DistribLattice.toLattice, (inferInstance : LinearOrder s) with
    le_csSup := by
      rintro t c h_bdd hct
      rw [← Subtype.coe_le_coe, ← subset_sSup_of_within s ⟨c, hct⟩ h_bdd (h_Sup ⟨c, hct⟩ h_bdd)]
      exact (Subtype.mono_coe _).le_csSup_image hct h_bdd
    csSup_le := by
      rintro t B ht hB
      rw [← Subtype.coe_le_coe, ← subset_sSup_of_within s ht ⟨B, hB⟩ (h_Sup ht ⟨B, hB⟩)]
      exact (Subtype.mono_coe s).csSup_image_le ht hB
    le_csInf := by
      intro t B ht hB
      rw [← Subtype.coe_le_coe, ← subset_sInf_of_within s ht ⟨B, hB⟩ (h_Inf ht ⟨B, hB⟩)]
      exact (Subtype.mono_coe s).le_csInf_image ht hB
    csInf_le := by
      rintro t c h_bdd hct
      rw [← Subtype.coe_le_coe, ← subset_sInf_of_within s ⟨c, hct⟩ h_bdd (h_Inf ⟨c, hct⟩ h_bdd)]
      exact (Subtype.mono_coe s).csInf_image_le hct h_bdd
    csSup_of_not_bddAbove := fun t ht ↦ by simp [ht]
    csInf_of_not_bddBelow := fun t ht ↦ by simp [ht] }

/-- The `sSup` function on a nonempty `OrdConnected` set `s` in a conditionally complete linear
order takes values within `s`, for all nonempty bounded-above subsets of `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2c3636110fc828c3cd36ac40c1515701eb97378` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
