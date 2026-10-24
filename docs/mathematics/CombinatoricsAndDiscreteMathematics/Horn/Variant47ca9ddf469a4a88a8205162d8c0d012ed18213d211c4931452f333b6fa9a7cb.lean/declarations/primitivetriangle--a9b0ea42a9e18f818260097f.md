# primitiveTriangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d7858470a0532e19b2d30abf83bd14ec9adacc59acd1f71d64f2804c2ca4368",
  "kind": "def",
  "lexical_name": "primitiveTriangle",
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
  "slug": "primitivetriangle--a9b0ea42a9e18f818260097f",
  "source": {
    "blob": "05d769156b768ed948a890cea00003ef6e23dbb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 255,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variant47ca9ddf469a4a88a8205162d8c0d012ed18213d211c4931452f333b6fa9a7cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9b0ea42a9e18f818260097f72d961fdd3594ea6d77992fa29f7ae62017cb9d8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Horn/Variant47ca9ddf469a4a88a8205162d8c0d012ed18213d211c4931452f333b6fa9a7cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d7858470a0532e19b2d30abf83bd14ec9adacc59acd1f71d64f2804c2ca4368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def primitiveTriangle {n : ℕ} (i : Fin (n + 4))
    (h₀ : 0 < i) (hₙ : i < Fin.last (n + 3))
    (k : ℕ) (h : k < n + 2) : (Λ[n + 3, i] : SSet.{u}).obj (op ⦋2⦌) := by
  refine ⟨stdSimplex.triangle
    (n := n+3) ⟨k, by lia⟩ ⟨k+1, by lia⟩ ⟨k+2, by lia⟩ ?_ ?_, ?_⟩
  · simp only [Fin.mk_le_mk, le_add_iff_nonneg_right, zero_le]
  · simp only [Fin.mk_le_mk, add_le_add_iff_left, one_le_two]
  -- this was produced using `simp? [horn_eq_iSup]`
  simp only [horn_eq_iSup, Subfunctor.iSup_obj, Set.iUnion_coe_set,
    Set.mem_compl_iff, Set.mem_singleton_iff, Set.mem_iUnion, stdSimplex.mem_face_iff,
    Nat.reduceAdd, mem_compl, mem_singleton, exists_prop]
  have hS : ¬ ({i, (⟨k, by lia⟩ : Fin (n + 4)), (⟨k + 1, by lia⟩ : Fin (n + 4)),
      (⟨k + 2, by lia⟩ : Fin (n + 4))} = Finset.univ) := fun hS ↦ by
    obtain ⟨i, hi⟩ := i
    by_cases hk : k = 0
    · subst hk
      have := Finset.mem_univ (Fin.last _ : Fin (n + 4))
      rw [← hS] at this
      -- this was produced using `simp? [Fin.ext_iff] at this`
      simp only [Fin.zero_eta, zero_add, Fin.mk_one, mem_insert, Fin.ext_iff, Fin.val_last,
        Fin.val_zero, add_eq_zero, OfNat.ofNat_ne_zero, and_false,
        Fin.val_one, Nat.reduceEqDiff, mem_singleton, or_self, or_false] at this
      simp only [Fin.lt_def, Fin.val_last] at hₙ
      lia
    · have := Finset.mem_univ (0 : Fin (n + 4))
      rw [← hS] at this
      -- this was produced using `simp? [Fin.ext_iff] at this`
      simp only [mem_insert, Fin.ext_iff, Fin.val_zero, right_eq_add,
        add_eq_zero, one_ne_zero, and_false, mem_singleton,
        OfNat.ofNat_ne_zero, or_self, or_false] at this
      obtain rfl | rfl := this <;> tauto
  rw [Finset.eq_univ_iff_forall, not_forall] at hS
  obtain ⟨l, hl⟩ := hS
  simp only [mem_insert, mem_singleton, not_or] at hl
  refine ⟨l, hl.1, fun a ↦ ?_⟩
  fin_cases a
  · exact Ne.symm hl.2.1
  · exact Ne.symm hl.2.2.1
  · exact Ne.symm hl.2.2.2

/-- The `j`th face of codimension `1` of the `i`-th horn. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Horn/Variant47ca9ddf469a4a88a8205162d8c0d012ed18213d211c4931452f333b6fa9a7cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variant47ca9ddf469a4a88a8205162d8c0d012ed18213d211c4931452f333b6fa9a7cb.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05d769156b768ed948a890cea00003ef6e23dbb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
