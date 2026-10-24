# subsingleton_of_stabilizer_lt_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5bb0abfa730ea97d964e278137622d7277bf6d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b14a4ec-06ea-8173-5b07-3b30340dd115",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43b292d5-bd25-fe40-5f7e-7110108f2480",
  "kind": "lemma",
  "lexical_name": "subsingleton_of_stabilizer_lt_of_subset",
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
  "slug": "subsingleton-of-stabilizer-lt-of-subset--616c501989e06055efa27777",
  "source": {
    "blob": "f5bb0abfa730ea97d964e278137622d7277bf6d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 258,
    "path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:616c501989e06055efa27777282dd76628a3b29f55b465a9955583826e97193a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43b292d5-bd25-fe40-5f7e-7110108f2480`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subsingleton_of_stabilizer_lt_of_subset {B : Set α}
    {G : Subgroup M} [IsPreprimitive (stabilizer G s) s]
    (hB : IsBlock G B)
    (hB_not_le_sc : ∀ (B : Set α), IsBlock G B → B ⊆ sᶜ → B.Subsingleton)
    (hG : stabilizer M s < G) (hBs : B ⊆ s) :
    B.Subsingleton := by
  suffices IsTrivialBlock (Subtype.val ⁻¹' B : Set s) by
    rcases this with hB' | hB'
    · -- trivial case
      rw [← inter_eq_self_of_subset_right hBs, ← Subtype.image_preimage_val]
      apply Set.Subsingleton.image hB'
    · -- `Subtype.val ⁻¹' B = s`
      have hBs' : B = s := Set.Subset.antisymm hBs (by simp_all)
      subst hBs'
      obtain ⟨g', hg', hg's⟩ := SetLike.exists_of_lt hG
      have h := (isBlock_iff_smul_eq_or_disjoint.mp hB ⟨g', hg'⟩).resolve_left hg's
      suffices (g' • B).Subsingleton by
        exact subsingleton_of_image (MulAction.injective g') B this
      apply hB_not_le_sc (⟨g', hg'⟩ • B) (hB.translate _)
      exact Disjoint.subset_compl_right h
  -- `IsTrivialBlock (Subtype.val ⁻¹' B : Set s)`
  suffices IsPreprimitive (stabilizer G s) s by
    apply this.isTrivialBlock_of_isBlock
    -- `IsBlock (Subtype.val ⁻¹' B : Set s)`
    let φ' : stabilizer G s → G := Subtype.val
    let f' : s →ₑ[φ'] α := {
      toFun := Subtype.val
      map_smul' _ _ := rfl }
    apply MulAction.IsBlock.preimage f' hB
  infer_instance

variable [Finite α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5bb0abfa730ea97d964e278137622d7277bf6d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
