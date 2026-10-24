# Submodule.exists_smith_normal_form_of_rank_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "393373167928c6a90d2d42a212fc7b66a0e98b6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 590,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0e1813b-0b65-edac-d410-55eacb0c711e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8e06e2a-729b-4e31-3abe-5d9fb3eed49e",
  "kind": "theorem",
  "lexical_name": "Submodule.exists_smith_normal_form_of_rank_eq",
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
  "slug": "submodule-exists-smith-normal-form-of-rank-eq--f7d62c7ea256dddfe31c78b5",
  "source": {
    "blob": "393373167928c6a90d2d42a212fc7b66a0e98b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 590,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7d62c7ea256dddfe31c78b5ebe45f5aa4e1b17ba60bdd2fb39cbd0a8ee63fb8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8e06e2a-729b-4e31-3abe-5d9fb3eed49e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.exists_smith_normal_form_of_rank_eq (b : Basis ι R M)
    (h : Module.finrank R N = Module.finrank R M) :
    ∃ (b' : Basis ι R M) (a : ι → R) (ab' : Basis ι R N), ∀ i, (ab' i : M) = a i • b' i := by
  cases nonempty_fintype ι
  let ⟨bM, bN, f, a, snf⟩ := N.smithNormalFormOfRankEq b h
  let e : Fin (Fintype.card ι) ≃ ι :=
    Equiv.ofBijective f
      ((Fintype.bijective_iff_injective_and_card f).mpr ⟨f.injective, Fintype.card_fin _⟩)
  have fe : ∀ i, f (e.symm i) = i := e.apply_symm_apply
  exact
    ⟨bM, a ∘ e.symm, bN.reindex e, fun i ↦ by
      simp only [snf, fe, Basis.map_apply, LinearEquiv.restrictScalars_apply R,
          restrictScalarsEquiv_apply, Basis.coe_reindex, (· ∘ ·)]⟩

/--
If `M` is finite free over a PID `R`, then for any submodule `N` of the same rank,
we can find basis for `M` and `N` with the same indexing such that the inclusion map
is a square diagonal matrix; this is the basis for `M`. See:
* `Submodule.smithNormalFormBotBasis` for the basis on `N`,
* `Submodule.smithNormalFormCoeffs` for the entries of the diagonal matrix
* `Submodule.smithNormalFormBotBasis_def` for the proof that the inclusion map
  forms a square diagonal matrix.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `393373167928c6a90d2d42a212fc7b66a0e98b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
