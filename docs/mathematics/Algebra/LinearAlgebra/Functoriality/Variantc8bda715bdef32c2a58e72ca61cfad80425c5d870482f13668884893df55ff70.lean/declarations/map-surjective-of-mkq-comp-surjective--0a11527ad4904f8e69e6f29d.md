# map_surjective_of_mkQ_comp_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f781175-0eae-8a5d-5cbd-2d9ffe4893a1",
  "kind": "theorem",
  "lexical_name": "map_surjective_of_mkQ_comp_surjective",
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
  "slug": "map-surjective-of-mkq-comp-surjective--0a11527ad4904f8e69e6f29d",
  "source": {
    "blob": "ce8fac5c6b7cd95f65f979d9b8a24d43094f1d24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 427,
    "path": "GRWTSK/Algebra/LinearAlgebra/Functoriality/Variantc8bda715bdef32c2a58e72ca61cfad80425c5d870482f13668884893df55ff70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a11527ad4904f8e69e6f29d0e574444bffd347d2481ad3a3e4a6fd6c82fd89c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Functoriality/Variantc8bda715bdef32c2a58e72ca61cfad80425c5d870482f13668884893df55ff70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f781175-0eae-8a5d-5cbd-2d9ffe4893a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_surjective_of_mkQ_comp_surjective {f : M →ₗ[R] N}
    (h : Function.Surjective (mkQ (I • ⊤) ∘ₗ f)) : Function.Surjective (map I f) := by
  intro y
  suffices h : ∃ x : ℕ → M, ∀ n, x n ≡ x (n + 1) [SMOD (I ^ n • ⊤ : Submodule R M)] ∧
      Submodule.Quotient.mk (f (x n)) = eval I _ n y by
    obtain ⟨x, hx⟩ := h
    use AdicCompletion.mk I M ⟨x, fun h ↦
        eq_factor_of_eq_factor_succ (fun _ _ ↦ pow_smul_top_le I M) _ (fun n ↦ (hx n).1) h⟩
    ext n
    simp [hx n]
  let x : (n : ℕ) → {m : M // Submodule.Quotient.mk (f m) = eval I _ n y} := fun n ↦ by
    induction n with
    | zero =>
      use 0
      apply_fun (Submodule.Quotient.equiv (I ^ 0 • ⊤) ⊤ (.refl R N) (by simp)).toEquiv
      exact Subsingleton.elim _ _
    | succ n xn =>
      choose z hz using exists_smodEq_pow_smul_top_and_mkQ_eq h
          (y' := eval _ _ (n + 1) y) (by simp) xn.2
      exact ⟨z, hz.2⟩
  exact ⟨fun n ↦ (x n).val, fun n ↦ ⟨(Classical.choose_spec (exists_smodEq_pow_smul_top_and_mkQ_eq
      h (y' := eval I _ (n + 1) y) (by simp) (x n).2)).1, (x n).property⟩⟩

end AdicCompletion

open AdicCompletion Submodule

variable {I}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Functoriality/Variantc8bda715bdef32c2a58e72ca61cfad80425c5d870482f13668884893df55ff70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Functoriality/Variantc8bda715bdef32c2a58e72ca61cfad80425c5d870482f13668884893df55ff70.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce8fac5c6b7cd95f65f979d9b8a24d43094f1d24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
