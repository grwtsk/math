# exists_nonDegenerate_max_dim_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bea4ec59295cc1a946de44d07dcfc20b287a138",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:198f9e43-5dd0-75e4-27cc-9b0d1e92326b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4b4c97a-c147-64df-4576-fb8e84447929",
  "kind": "lemma",
  "lexical_name": "exists_nonDegenerate_max_dim_aux",
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
  "slug": "exists-nondegenerate-max-dim-aux--c536963280895cd2781a9cb0",
  "source": {
    "blob": "8bea4ec59295cc1a946de44d07dcfc20b287a138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 204,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c536963280895cd2781a9cb0926b8aba0374bbe643bbd8c429da1b71c0dda325",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4b4c97a-c147-64df-4576-fb8e84447929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_nonDegenerate_max_dim_aux {d : ℕ}
    (x : (Δ[p] ⊗ Δ[q] : SSet.{u}).nonDegenerate d) (hd : d < p + q) :
    ∃ (y : (Δ[p] ⊗ Δ[q] : SSet.{u}).nonDegenerate (d + 1)),
      x.1 ∈ (Subcomplex.ofSimplex y.1).obj _ := by
  have hx := (nonDegenerate_iff_strictMono_objEquiv _).1 x.2
  suffices ∃ (i : Fin (d + 2)) (u : Fin (p + 1) × Fin (q + 1)),
      StrictMono (Fin.insertNth (α := fun _ ↦ Fin (p + 1) × Fin (q + 1)) i u
        (objEquiv x.val)) by
    obtain ⟨i, u, hf⟩ := this
    simp only [stdSimplex.mem_ofSimplex_obj_iff]
    refine ⟨⟨objEquiv.symm ⟨_, hf.monotone⟩,
      (nonDegenerate_iff_strictMono_objEquiv _).2 hf⟩,
      stdSimplex.objEquiv.symm (SimplexCategory.δ i),
      objEquiv.injective ?_⟩
    ext k : 2
    rw [yonedaEquiv_symm_app, Equiv.apply_symm_apply, ← SimplicialObject.δ_def]
    simp [objEquiv_δ_apply]
  let S : Finset (Fin (d + 1)) :=
    { i | i.castLE (by lia) < orderHomOfSimplex x.1 rfl i }
  by_cases hS : S.Nonempty
  · generalize hi₀ : S.min' hS = i₀
    obtain rfl | ⟨i₀, rfl⟩ := Fin.eq_zero_or_eq_succ i₀
    · refine ⟨_, _, Fin.strictMono_insertNth_zero hx (0, 0) ?_⟩
      have : 0 ∈ S := by simpa [← hi₀] using S.min'_mem hS
      simpa [-Fin.val_pos_iff, S, Fin.lt_def, Fin.prod_zero_zero_lt_iff] using this
    · obtain ⟨u, hu₁, hu₂⟩ :=
        Fin.prod_exists_lt_lt_of_le_of_le (objEquiv x.val i₀.castSucc)
          (objEquiv x.val i₀.succ) ((objEquiv x.val).monotone i₀.castSucc_le_succ) (by
            have h₀ : i₀.castSucc ∉ S := fun h ↦ by simpa [hi₀] using S.min'_le _ h
            have h₁ : i₀.succ ∈ S := by simpa only [hi₀] using S.min'_mem hS
            simp [S, Fin.lt_def] at h₀ h₁ ⊢
            lia)
      exact ⟨_, _, Fin.strictMono_insertNth hx i₀ u hu₁ hu₂⟩
  · simp only [Finset.not_nonempty_iff_eq_empty] at hS
    refine ⟨_, _, Fin.strictMono_insertNth_last hx (Fin.last _, Fin.last _) ?_⟩
    rw [Fin.prod_lt_last_last_iff]
    refine lt_of_le_of_lt ?_ hd
    simpa [← hS, S, Fin.le_def] using Finset.notMem_empty (Fin.last d)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bea4ec59295cc1a946de44d07dcfc20b287a138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
